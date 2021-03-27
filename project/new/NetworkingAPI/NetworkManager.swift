//
//  NetworkManager.swift
//  new
//
//  Created by Jackson on 24/2/2021.
//

import Foundation
import Alamofire
import SwiftUI


typealias NetworkingReqType = Result<Data,Error>
typealias NetworkingHandler = (NetworkingReqType) -> Void

private let host = "http://"


//DataRequest if need to cancle
class NetWorkManger{
    static var share = NetWorkManger()
    
    private init(){
        //do nothing
    }

    @discardableResult
    func request_get_method(URLPath:String, parameters:Parameters?,handler:@escaping NetworkingHandler)->DataRequest{
        AF.request(
            host + URLPath,
            parameters: parameters, //JSON DATA NEED TO SEND
            headers: nil, //HEADER INFO
            requestModifier: {$0.timeoutInterval = 15})
            .responseData{ response in
                switch response.result{
                case  .success(let data):
                    handler(.success(data))
                case .failure(let error):
                    handler(self.handleError(error))
                }
        }
            
    }
    
    @discardableResult
    func request_post_method(URLPath:String,parameters:Parameters?,handler:@escaping NetworkingHandler)->DataRequest{
        AF.request(
            host + URLPath,
            method: .post,
            parameters: parameters, //JSON DATA NEED TO SEND
            encoding: JSONEncoding.prettyPrinted, //encode json and store in body( parameter)
            headers: nil, //HEADER INFO
            requestModifier: {$0.timeoutInterval = 15})
            .responseData{ Response in
                switch Response.result{
                case .success(let data):
                    handler(.success(data))
                case .failure(let error):
                    handler(self.handleError(error))
                }
        }
    }
    
    private func handleError(_ Error:AFError) -> NetworkingReqType{
        if let error = Error.underlyingError{ //get underlaying error
            let nerror = error as NSError //check to NSError type
            let code = nerror.code //get the Error code
            if  code == NSURLErrorNotConnectedToInternet ||
                code == NSURLErrorTimedOut ||
                code == NSURLErrorInternationalRoamingOff ||
                code == NSURLErrorDataNotAllowed ||
                code == NSURLErrorCannotFindHost ||
                code == NSURLErrorCannotConnectToHost ||
                code == NSURLErrorNetworkConnectionLost {
                    //All that code above is connection error ->Output a reable message
                    var userInfo = nerror.userInfo
                    userInfo[NSLocalizedDescriptionKey] = "Your connection is got some troble!"
                    let currentError = NSError(domain: "NetworkAPI", code: code, userInfo: userInfo)
                    return .failure(currentError)
            }
        }
        
        return .failure(Error)
    }
    //MORE
}
