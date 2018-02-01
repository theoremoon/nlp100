import std.stdio;

string typoglycemia(string str)
{
	import std.algorithm;
	import std.array;
	import std.random;
	import std.string;

	auto rnd = rndGen();

	return str.split(" ").map!((string word) {
		if (word.length <= 4) { return word; }
		ubyte[] sore = word[1..$-1].representation.dup;
		randomShuffle(sore, rnd);
		return cast(string)(word[0] ~ sore.assumeUTF ~ word[$-1]);
	}).array.join(" ");
}

void main()
{
	string str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .";
	writeln("str: ", str);
	writeln("typoglycemia: ", str.typoglycemia());
}
