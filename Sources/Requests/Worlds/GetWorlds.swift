//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension GardenAPI.Worlds {

    /**
    Gets the worlds

    This will return all of the worlds
    */
    public enum GetWorlds {

        public static let service = APIService<Response>(id: "getWorlds", tag: "Worlds", method: "GET", path: "/world", hasBody: false)

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: GetWorlds.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** item created */
            case status201

            /** invalid input, object invalid */
            case status400

            /** an existing item already exists */
            case status409

            public var success: Void? {
                switch self {
                case .status201: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .status400: return 400
                case .status409: return 409
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .status400: return false
                case .status409: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = .status201
                case 400: self = .status400
                case 409: self = .status409
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
