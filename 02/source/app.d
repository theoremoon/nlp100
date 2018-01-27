import std.stdio;

char[] answer() {
	import std.range;
	import std.conv;

	string str1 = "パトカー";
	string str2 = "タクシー";

	dchar[] result;

	foreach (c1, c2; zip(str1, str2)) {
		result ~= c1;
		result ~= c2;
	}

	return result.to!(char[]);
}

void main()
{
	writeln(answer());
}
