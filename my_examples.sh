#!/bin/sh
cat <<INPUT >my_example_1.txt
....
#..#
....
INPUT

cat <<EXPECTED >my_expectation_1.txt
....
#**#
....
EXPECTED

cat <<EXPLAIN

Input:

`cat my_example_1.txt`

Expected Output:

`cat my_expectation_1.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather my_example_1.txt my_output_1.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat my_output_1.txt`

Diff:

`diff -u my_expectation_1.txt my_output_1.txt`

CONCLUSION

cat <<INPUT >my_input_2.txt
..#..
.....
.....
..#..
INPUT

cat <<EXPECTED >my_expectation_2.txt
..#..
..*..
..*..
..#..
EXPECTED

cat <<EXPLAIN

Input:

`cat my_input_2.txt`

Expected Output:

`cat my_expectation_2.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather my_input_2.txt my_output_2.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat my_output_2.txt`

Diff:

`diff -u my_expectation_2.txt my_output_2.txt`

CONCLUSION

cat <<INPUT >my_input_3.txt
.....
.#...
.....
...#.
INPUT

cat <<EXPECTED >my_expectation_3.txt
.....
.#...
.*...
.**#.
EXPECTED

cat <<EXPLAIN

Input:

`cat my_input_3.txt`

Expected Output:

`cat my_expectation_3.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather my_input_3.txt my_output_3.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat my_output_3.txt`

Diff:

`diff -u my_expectation_3.txt my_output_3.txt`

CONCLUSION

cat <<INPUT >my_input_4.txt
.....
...#.
.....
.#...
INPUT

cat <<EXPECTED >my_expectation_4.txt
.....
...#.
...*.
.#**.
EXPECTED

cat <<EXPLAIN

Input:

`cat my_input_4.txt`

Expected Output:

`cat my_expectation_4.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather my_input_4.txt my_output_4.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat my_output_4.txt`

Diff:

`diff -u my_expectation_4.txt my_output_4.txt`

CONCLUSION

cat <<INPUT >my_input_5.txt
....#...................
........................
....#...................
........................
........................
....#........#..........
........................
........................
........................
......#.................
........................
.........#...#..........
INPUT

cat <<EXPECTED >my_expectation_5.txt
....#...................
....*...................
....#...................
....*...................
....*...................
....#********#..........
.............*..........
.............*..........
.............*..........
......#*******..........
......*.................
......***#***#..........
EXPECTED

cat <<EXPLAIN

Input:

`cat my_input_5.txt`

Expected Output:

`cat my_expectation_5.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather my_input_5.txt my_output_5.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat my_output_5.txt`

Diff:

`diff -u my_expectation_5.txt my_output_5.txt`

CONCLUSION
