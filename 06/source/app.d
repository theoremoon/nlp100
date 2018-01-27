import std.stdio;
import ngram;

void main()
{
	import std.array;
	import std.algorithm;

	auto X = "paraparaparadise".n_gram(2).array().sort!"a < b"().uniq().array();
	auto Y = "paragraph".n_gram(2).array().sort!"a < b"().uniq().array();

	writeln("X: ", X);
	writeln("Y: ", Y);
	
	writeln("Union: ", multiwayUnion([X, Y]));
	writeln("Intersection: ", setIntersection(X, Y));
	writeln("Difference: ", setDifference(X, Y));


}
