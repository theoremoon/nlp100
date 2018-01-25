import std.stdio;

char[] answer() {
	import std.range;
	import std.array;
	import std.conv;
	dchar[] patatokukasy = "パタトクカシーー".to!(dchar[]);
	return patatokukasy[1..$].stride(2).array().to!(char[]);
}

void main()
{
	writeln(answer());
}
