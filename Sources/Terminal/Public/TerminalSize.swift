import Foundation

public class TerminalSize: NSObject {

    @objc public let cols: Int
    @objc public let rows: Int
    public static let zero = TerminalSize(cols: 0, rows: 0)

	init(cols: Int, rows: Int) {
		self.cols = cols
		self.rows = rows
	}

	public static func == (lhs: TerminalSize, rhs: TerminalSize) -> Bool {
		lhs.cols == rhs.cols && lhs.rows == rhs.rows
	}
}
