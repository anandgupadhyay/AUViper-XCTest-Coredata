//
//  UserModels.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 04/12/22.
//



import Foundation

// MARK: - AUWelcome
class AUWelcome: Codable {
    var results: [AUResult]
    var info: AUInfo

    init(results: [AUResult], info: AUInfo) {
        self.results = results
        self.info = info
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUInfoTask(with: url) { aUInfo, response, error in
//     if let aUInfo = aUInfo {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUInfo
class AUInfo: Codable {
    var seed: String
    var results, page: Int
    var version: String

    init(seed: String, results: Int, page: Int, version: String) {
        self.seed = seed
        self.results = results
        self.page = page
        self.version = version
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUResultTask(with: url) { aUResult, response, error in
//     if let aUResult = aUResult {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUResult
class AUResult: Codable {
    var gender: String
    var name: AUName
    var location: AULocation
    var email: String
    var login: AULogin
    var dob, registered: AUDob
    var phone, cell: String
    var id: AUID
    var picture: AUPicture
    var nat: String

    init(gender: String, name: AUName, location: AULocation, email: String, login: AULogin, dob: AUDob, registered: AUDob, phone: String, cell: String, id: AUID, picture: AUPicture, nat: String) {
        self.gender = gender
        self.name = name
        self.location = location
        self.email = email
        self.login = login
        self.dob = dob
        self.registered = registered
        self.phone = phone
        self.cell = cell
        self.id = id
        self.picture = picture
        self.nat = nat
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUDobTask(with: url) { aUDob, response, error in
//     if let aUDob = aUDob {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUDob
class AUDob: Codable {
    var date: String
    var age: Int

    init(date: String, age: Int) {
        self.date = date
        self.age = age
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUIDTask(with: url) { aUID, response, error in
//     if let aUID = aUID {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUID
class AUID: Codable {
    var name, value: String

    init(name: String, value: String) {
        self.name = name
        self.value = value
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aULocationTask(with: url) { aULocation, response, error in
//     if let aULocation = aULocation {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AULocation
class AULocation: Codable {
    var street: AUStreet
    var city, state, country: String
    var postcode: Int
    var coordinates: AUCoordinates
    var timezone: AUTimezone

    init(street: AUStreet, city: String, state: String, country: String, postcode: Int, coordinates: AUCoordinates, timezone: AUTimezone) {
        self.street = street
        self.city = city
        self.state = state
        self.country = country
        self.postcode = postcode
        self.coordinates = coordinates
        self.timezone = timezone
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUCoordinatesTask(with: url) { aUCoordinates, response, error in
//     if let aUCoordinates = aUCoordinates {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUCoordinates
class AUCoordinates: Codable {
    var latitude, longitude: String

    init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUStreetTask(with: url) { aUStreet, response, error in
//     if let aUStreet = aUStreet {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUStreet
class AUStreet: Codable {
    var number: Int
    var name: String

    init(number: Int, name: String) {
        self.number = number
        self.name = name
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUTimezoneTask(with: url) { aUTimezone, response, error in
//     if let aUTimezone = aUTimezone {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUTimezone
class AUTimezone: Codable {
    var offset, timezoneDescription: String

    enum CodingKeys: String, CodingKey {
        case offset
        case timezoneDescription
    }

    init(offset: String, timezoneDescription: String) {
        self.offset = offset
        self.timezoneDescription = timezoneDescription
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aULoginTask(with: url) { aULogin, response, error in
//     if let aULogin = aULogin {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AULogin
class AULogin: Codable {
    var uuid, username, password, salt: String
    var md5, sha1, sha256: String

    init(uuid: String, username: String, password: String, salt: String, md5: String, sha1: String, sha256: String) {
        self.uuid = uuid
        self.username = username
        self.password = password
        self.salt = salt
        self.md5 = md5
        self.sha1 = sha1
        self.sha256 = sha256
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUNameTask(with: url) { aUName, response, error in
//     if let aUName = aUName {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUName
class AUName: Codable {
    var title, first, last: String

    init(title: String, first: String, last: String) {
        self.title = title
        self.first = first
        self.last = last
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aUPictureTask(with: url) { aUPicture, response, error in
//     if let aUPicture = aUPicture {
//       ...
//     }
//   }
//   task.resume()

// MARK: - AUPicture
class AUPicture: Codable {
    var large, medium, thumbnail: String

    init(large: String, medium: String, thumbnail: String) {
        self.large = large
        self.medium = medium
        self.thumbnail = thumbnail
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func aUWelcomeTask(with url: URL, completionHandler: @escaping (AUWelcome?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}
