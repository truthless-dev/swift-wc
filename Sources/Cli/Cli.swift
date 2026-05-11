import ArgumentParser
import WC

@main
struct WC: ParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: PackageMetadata.executable,
    version: PackageMetadata.version
  )

  mutating func run() throws {
    print("Hello, world!")
  }
}
