# Solutions to exercises explained

## Additional exercises (1)

### 1. Print last 10 lines of exercise.tsv, but excluding last one

```bash
tail -n 10 exercise.tsv | head -n 9
```

With first command you print the last 10 lines, the first 9 lines of the output correspond to this 10 lines, but excluding the last one.

### 2. Print 2nd column of exercise.tsv, sort the output and store it in a new file called exercise2.tsv

```bash
cut -f 2 exercise.tsv | sort > exercise2.tsv
```

### 3. Find the files in course folder that starts with ‘ex’ and has ‘2’ in the name

```bash
find $HOME/course -name ex*2*
```

Remember that * character means "all characters". If you don't type last *, bash will try to find the files that start with "ex" and <u>end</u> with "2". If you are in course folder, you can change "$HOME/course" by ".".

### 4. Print 6th column of exercise.tsv, change ‘:’ to ‘,’ and sort the output. Append the output to exercise2.tsv

```bash
cut -f 6 exercise.tsv | tr ':' ',' | sort >> exercise2.tsv
```

First command is to print the 6th column. Output is used by "tr" command as input to change the ':' by ','. Output created by "tr" is used by "sort" to sort the output. Finally, the output created by sort, is appended using ">>" special character

### 5. Count the number lines that have chr1 in file1.tsv

This exercises can be done in different ways

```bash
grep -w "chr1" file1.tsv | wc -l
```

Find <u>strictly</u> "chr1" in file1.tsv. Then count the number of lines that the output has.

```bash
grep -w -c "chr1" file1.tsv
```

The -w option in grep looks <u>strictly</u> "chr1", so other chromosome names (chr10, chr11, ...) are not included in the grep output. The -c option is to count the number of occurrences found.

```bash
cut -f 1 file1.tsv | sort | uniq -c | grep -w "chr1"
```

Print the first column of the file, sort the output obtained. Count the number of times each value (chr* in this case) appears, and find "chr1" in that output.


### 6. Check if there are chromosomal regions repeated in file1.tsv

```bash
sort file1.tsv | uniq -c
```

Sort all the file, and count the number of ocurrences for each line. Then, look if there is any '2' in the first column of the output. In this case, answer is "no".

## Additional exercises (2)

### 1. How many genes are in file1.tsv? and in file2.tsv?

```bash
cut -f 4 file1.tsv | sort | uniq | wc -l
```

Get the column where the genes are (4th). Sort the output. Remove duplicates from the output. Count the number of lines that this last output has.

### 2. Which file has more regions: file1.tsv or file2.tsv?


In this exercise, you can do each:

```bash
wc -l file1.tsv
wc -l file2.tsv
```

or

```bash
wc -l file*
```

In this second solution, you are telling to bash "count me the lines of all files that starts with "file". So if we have more files, all of them will be counted.

### 3. Which file is bigger (occupies more bytes): file1.tsv or file2.tsv?

Here we can use, again **wc** command and look the third number of the output:

```bash
wc file*
```

Or we can do

```bash
ls -l file*
```

That gives us the number of bytes that each file occupies.

### 4. Find regions in common in both files

Again, it is possible to do this exercise in different ways.

```bash
grep -Ff file1.tsv file2.tsv
```

Searches all the lines, that are in file1, to find them in file2.

```bash
cat file1.tsv file2.tsv | sort | uniq -d
```

This command prints both files as output. This output is sorted. Finally last command checks for lines that are duplicated. As there are no repetitive regions in file1, neither in file2, the output is the same.

### 5. Find how many times NF1 gene appears in file2.tsv

```bash
cut -f 4 file2.tsv | sort | uniq -c | grep "NF1"
```

**Note that file2 is unsorted**. Yes I unsort it voluntarily. That's why you have to sort it previously if you want to get the good solution: 34.


## Additional exercises (3)

### 1. File2.tsv is unsorted. Sort it by chromosome and chromosomal position

```bash
sort -k1,2n file2.tsv
```

You will notice that first column is not sorted as we expected. Bash "thinks" that first column are only letters, so chr10 comes before that chr2. The 'n' character after '2', means "sort second column, take into account that this column have numbers".

### 2. File1 is tab-separated file, but customer says that he/she needs comma-separated file. Can you do it using bash?

```bash
tr '\t' ',' < file1.tsv > file_for_customer.csv
```

### 3. There is a typo in a gene in file2.tsv. Are you able to find it? (Trick: use sort + uniq)

To find the typo, we can search how many genes have only 1 occurrence

```bash
cut -f 4 file2.tsv | sort | uniq -c | grep -w '1'
```

Output is:

<code>
    1 CEBPA<br>
    1 KRAS<br>
    
    1 SETBP1
    
    1 STAF-typo1
</code>

So, easy to find it, isn't it?

Hope you like to program in bash. And congratulations to arrive until the end of this README.
