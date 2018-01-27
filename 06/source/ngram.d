module ngram;

import std.traits;
import std.range;

auto n_gram(Range)(Range r, size_t n)
if (isInputRange!(Unqual!Range))  // unqaulはqualifierを外すのでconst(int) -> int ということ
in
{
	assert(n >= 1);
}
do
{
	// とりあえずInputRangeということで
	// front, popFront, empty を持ってる
	static struct Result {
	private:
		alias R = Unqual!Range;
		alias T = ElementType!R;
		size_t n;
		T[] buf;
	public:
		R source;

		this(R source, size_t n) {
			this.source = source;
			this.n = n;
			this.buf = [];
			foreach (i; 0..n) {
				this.buf ~= this.source.front();
				this.source.popFront();
			}
		}

		@property {
			bool empty() {
				return this.buf.length < this.n;
			}
			auto ref front() {
				return this.buf;
			}
		}
		void popFront() {
			this.buf.popFront();
			if (!this.source.empty) {
				this.buf ~= this.source.front();
				this.source.popFront();
			}
		}
	}

	return Result(r, n);
}
