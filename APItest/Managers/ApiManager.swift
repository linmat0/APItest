import Foundation
import UIKit

func apiCall() async throws -> String {
    guard let url = URL(string: "https://api.adviceslip.com/advice") else {
        throw URLError(.badURL)
    }

    let (data, _) = try await URLSession.shared.data(from: url)

    let decoded = try JSONDecoder().decode(ApiResult.self, from: data)

    return decoded.slip.advice
}
