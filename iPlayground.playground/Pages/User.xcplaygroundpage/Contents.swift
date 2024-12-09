import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// MARK: - Model

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}

// MARK: - Service

class UserService {
    func loadData(from fileName: String) -> Result<Data, Error> {
        guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return .failure(NSError(domain: "File not found", code: -1, userInfo: nil))
        }

        do {
            let data = try Data(contentsOf: fileURL)
            return .success(data)
        } catch {
            return .failure(error)
        }
    }

    func decodeUsers(from data: Data) -> Result<[User], Error> {
        do {
            let users = try JSONDecoder().decode([User].self, from: data)
            return .success(users)
        } catch {
            return .failure(error)
        }
    }

    func fetchUsers(from fileName: String, completion: @escaping (Result<[User], Error>) -> Void) {
        let loadResult = loadData(from: fileName)
        switch loadResult {
            case .success(let data):
                let decodeResult = decodeUsers(from: data)
                completion(decodeResult)
            case .failure(let error):
                completion(.failure(error))
        }
    }
}

// MARK: - Main

UserService().fetchUsers(from: "Sample") { result in
    switch result {
        case .success(let users):
            for user in users {
                print("ID: \(user.id), Name: \(user.name), Email: \(user.email)")
            }
        case .failure(let error):
            print("Error fetching users: \(error.localizedDescription)")
    }
}
