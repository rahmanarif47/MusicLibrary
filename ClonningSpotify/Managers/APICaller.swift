//
//  APICaller.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 09/01/23.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init(){
        
    }
    
    struct Constant {
        static let baseAPIURL = "https://api.spotify.com/v1"
    }
    
    enum APIError : Error {
        case failedToGetData
    }
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfileModel, Error>) -> Void
    ) {
        createRequest(
            with: URL(string: Constant.baseAPIURL + "/me"),
            type: .GET
        ) { baseRequest in
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
//                    let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    let result = try JSONDecoder().decode(UserProfileModel.self, from: data)
                    completion(.success(result))
                    print(result)
                } catch {
                    print(error.localizedDescription)
                    completion(.failure(error))
                }
            }
           
            task.resume()
        }
    }
    
    enum HTTPMethod: String {
        case GET
        case POST
    }
    
    private func createRequest(with url: URL?,
                               type: HTTPMethod,
                               completion: @escaping (URLRequest) -> Void) {
        AuthManager.shared.withValidToken { token in
            guard let apiURL = url else {
                return
            }
            
            var request = URLRequest(url: apiURL)
            request.setValue("Bearer \(token)",
                             forHTTPHeaderField: "Authorization")
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            completion(request)
        }
    }
}