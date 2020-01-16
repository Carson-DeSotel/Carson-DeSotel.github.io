---
layout: post
title: "The Worst Idea: A Frankenstein-esque Horror of Programming Languages"
date: 2020-01-16
---

# The Worst Idea: A Frankenstein-esque Horror of Programming Languages

This is a program that interfaces through 3 (or 4, counting bash) programming languages to create a "more random" number.

[link to repository here](https://github.com/Carson-DeSotel/the-worst-idea)

## Premise:

So, I wanted to implement something that used multiple programming languages without the need for using external files as buffers between each language. I also wanted to only have to use one command to run the program completely. With that in mind, I needed to find something relatively reasonable to accomplish across the languages; I settled on a random number generator. It should be noted that any computer-generated *random number* is really a *pseudo-random number*, as a computer cannot generate a truly random number.

> A computer bases its random number off of a seed number: a clock time, an immutable number, or some changing number found during runtime to use in its algorithm. Because a seed is used, a computer can only generate a pseudo-random number

> **Q:** How can we generate a more random number? 
> 
> **A:** By changing the seed multiple times.

Note that in a small attempt to further increase the *random-ness* of the output, I've used multiple approaches to generating a random number.

## Application:

The program is a pipeline that runs in stages. Each stage can take in a seed, and each stage spits out a number based on that seed, this number in turn can be used as a new seed.

Here is a diagram of the pipeline (created using [this website](https://www.draw.io/)):

![diagram](/images/2020-01-16-project-the-worst-idea-diagram.png)

The need to use any external files is mitigated by allowing Bash to store the output of the files in local variables. In order to get the output, I use Bash's subshell execution using parenthesis to execute whatever command in the subshell and then store the output in the variable. In the programs themselves, output is handled using standard output to the command line (in C it's `printf`, in Python it's `print`, in Java it's `println`).

Here's an example of what I mean:
> P_NUM="$(python3 number-generator.py ${MIN} ${MAX} ${C_NUM})"

If we remove some of the bulk and simplify:
> OUTPUT="$(run_program $var $var $var)"

## Results:

It could be a lot better, I'll be honest. But with how ridiculous and inefficient it is, it's not worth the effort to expand as a worthwhile contribution to software development. As a concept piece, it's very interesting and I feel I learned a lot about executing programs and handling I/O from this experiment.

Maybe I could implement this if I wanted to receive data from a website using the Python requests library BUT I wanted to handle all the parseing of information in C. It could easily be done using a Bash wrapper to make it more manageable. That would be a very hacky solution, and I wouldn't recommend it for long-term projects.

I could've used something like this in a CTF competition I did a while back. I knew how to use `requests`, but maybe I could've processed data just a little faster if I was going into C to handle it, maybe I could've scraped out a few more flags by processing the data just a little faster. Maybe I also could've written better code too; my C and C-like knowledge is more extensive than my Python knowledge.