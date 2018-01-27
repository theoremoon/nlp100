import std.stdio;

string[size_t] answer() {
	import std.array;
	import std.algorithm : canFind;

	string given = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.";

	auto idxs = [1, 5, 6, 7, 8, 9, 15, 16, 19];
	string[size_t] assoc;
	foreach (i, v; given.split(" ")) {
		if (idxs.canFind(i+1)) {
			assoc[i] = v[0..1];
		}
		else {
			assoc[i] = v[0..2];
		}
	}
	return assoc;
}


void main()
{
	writeln(answer());
}
