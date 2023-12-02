// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// add core function
// add configuration builder
// add logs saving into a file

public enum Log {
    
    enum LogLevels {
        
        case verbose
        case info
        case debug
        case warning
        case error
        
        fileprivate var prefix: String {
            switch self {
            case .verbose:  return "👀 VERBOSE 👀"
            case .info:     return "ℹ️ INFO ℹ️"
            case .debug:    return "🍀 DEBUG 🍀"
            case .warning:  return "⚠️ WARN ⚠️"
            case .error:    return "🚨 ERROR 🚨"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        var description: String {
            return "\((file as NSString).lastPathComponent):\(line) \(function)"
        }
    }
    
    /**
     Logs a verbose message.

     - Parameters:
       - str: The message to be logged.
       - tag: A custom tag for categorizing the log message.
       - shouldLogContext: A flag indicating whether to include context information (default is `true`).
       - file: The file name where the log message originated (default is `#file`).
       - function: The function name where the log message originated (default is `#function`).
       - line: The line number where the log message originated (default is `#line`).
     */
    public static func verbose(_ str: StaticString, tag: String = "", shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.doLog(level: .verbose, str: str.description, tag: tag, shouldLogContext: shouldLogContext, context: context)
    }
   
    /**
     Logs an info message.

     - Parameters:
       - str: The message to be logged.
       - tag: A custom tag for categorizing the log message.
       - shouldLogContext: A flag indicating whether to include context information (default is `true`).
       - file: The file name where the log message originated (default is `#file`).
       - function: The function name where the log message originated (default is `#function`).
       - line: The line number where the log message originated (default is `#line`).
     */
    public static func info(_ str: StaticString, tag: String = "", shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.doLog(level: .info, str: str.description, tag: tag, shouldLogContext: shouldLogContext, context: context)
    }
    
    /**
     Logs a debug message.

     - Parameters:
       - str: The message to be logged.
       - tag: A custom tag for categorizing the log message.
       - shouldLogContext: A flag indicating whether to include context information (default is `true`).
       - file: The file name where the log message originated (default is `#file`).
       - function: The function name where the log message originated (default is `#function`).
       - line: The line number where the log message originated (default is `#line`).
     */
    public static func debug(_ str: StaticString, tag: String = "", shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.doLog(level: .debug, str: str.description, tag: tag, shouldLogContext: shouldLogContext, context: context)
    }
    
    /**
     Logs a warning message.

     - Parameters:
       - str: The message to be logged.
       - tag: A custom tag for categorizing the log message.
       - shouldLogContext: A flag indicating whether to include context information (default is `true`).
       - file: The file name where the log message originated (default is `#file`).
       - function: The function name where the log message originated (default is `#function`).
       - line: The line number where the log message originated (default is `#line`).
     */
    public static func warning(_ str: StaticString, tag: String = "", shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.doLog(level: .warning, str: str.description, tag: tag, shouldLogContext: shouldLogContext, context: context)
    }
    
    /**
     Logs an error message.

     - Parameters:
       - str: The message to be logged.
       - tag: A custom tag for categorizing the log message.
       - shouldLogContext: A flag indicating whether to include context information (default is `true`).
       - file: The file name where the log message originated (default is `#file`).
       - function: The function name where the log message originated (default is `#function`).
       - line: The line number where the log message originated (default is `#line`).
     */
    public static func error(_ str: StaticString, tag: String = "", shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.doLog(level: .error, str: str.description, tag: tag, shouldLogContext: shouldLogContext, context: context)
    }

    private static func doLog(level: LogLevels, str: String, tag: String = "", shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)]", str]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " ➜ \(context.description)"
        }
        
        #if DEBUG
        print(fullString)
        #endif
    }

}
