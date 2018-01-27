import std.stdio;

char[] func(X, Y, Z)(X x, Y y, Z z) {
	import std.format;
	return "%s時の%sは%s".format(x, y, z).dup;
}

char[] answer() {
	return func(12, "気温", 22.4);
}

void main()
{
	writeln(answer());
}
