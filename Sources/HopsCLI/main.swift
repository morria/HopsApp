import Foundation

let arguments = CommandLine.arguments

if arguments.contains("--help") {
    print("Usage: hops [options]\n\nOptions:\n  --help    Show this help message")
} else {
    print("Welcome to the Hops CLI!")
}