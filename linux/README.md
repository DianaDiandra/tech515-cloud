## Why learn Linux?

- Linux powers most servers, cloud platforms, and data centers worldwide.
- It is stable, secure, and highly reliable for mission-critical systems.
- Essential for careers in IT, DevOps, cybersecurity, and cloud computing.
- Provides powerful command-line tools for automation and system control.
- Offers open-source flexibility, allowing customization and deeper understanding.
- Helps you troubleshoot systems efficiently and work effectively with modern infrastructure.

## What is Bash?

- Bash stands for **Bourne Again SHell**, a command-line interpreter for Linux and macOS.
- It allows users to run commands to interact with the operating system.
- Commonly used for **automation**, **scripting**, and **system administration**.
- Lets you manage files, run programs, and control system processes.
- Widely used in DevOps, cloud computing, and development environments.
- Powerful, flexible, and installed by default on most Unix-like systems.

## What is Linux Piping?

- Linux piping allows you to **connect the output of one command** directly into the **input of another command**.
- It uses the `|` (pipe) symbol.
- Helps build powerful, chainable commands without creating temporary files.
- Commonly used to filter, sort, count, or search data efficiently.
- Enables automation and efficient data processing in the command line.
- Example: `ls -l | grep ".txt"` filters file listings to show only `.txt` files.

## Linux Redirection and Appending

- **Redirection** allows you to change where command output goes (file instead of screen).
- The `>` operator **redirects output** and **overwrites** the target file.
  - Example: `echo "Hello" > file.txt` (replaces content of `file.txt`)
- The `<` operator **takes input** for a command from a file instead of the keyboard.
  - Example: `sort < file.txt`
- **Appending** uses the `>>` operator to add new output to the **end** of a file **without overwriting** it.
  - Example: `echo "New line" >> file.txt`
- These tools are essential for logging, script automation, and manipulating files efficiently.

## Linux Streams

- Linux uses **streams** to handle input and output in a standardized way.
- There are three main types of streams:
  - **Standard Input (stdin)**: Stream from which a program reads input (usually keyboard) – file descriptor `0`.
  - **Standard Output (stdout)**: Stream where a program writes its output (usually terminal) – file descriptor `1`.
  - **Standard Error (stderr)**: Stream for error messages (usually terminal) – file descriptor `2`.
- Streams can be **redirected** or **piped** to other commands or files.
- Example: `command > output.txt 2> error.txt` redirects stdout to `output.txt` and stderr to `error.txt`.
- Understanding streams is essential for Linux scripting, automation, and debugging.

## What is `grep` in Linux?

- `grep` stands for **Global Regular Expression Print**.
- It is a command-line tool used to **search for specific text patterns** within files or output.
- Highlights or prints the lines that **match a given pattern**.
- Supports **regular expressions** for complex searches.
- Commonly used in combination with other commands via **pipes**.

### Examples:

1. Search for a word in a file:
```bash
grep "chicken" chicken-joke.txt

## Processes

What is a process?
* A program loaded into memory (RAM) - it then be considered running
* A running process could be using CPU power
* A process could be idle but running - it would be using CPU in this case
* A process that needs to carry out instructions, in that moment will use some CPU

2 types of processes:
* User processes
  * usually related to a shell process being run by a user
*System processes
  * most processes that run on Linux
  * usually don't provide an application or user interface for the user to use
  * provide services like:
    * web server
    * FTP server
    * file services
    * print services
    * logging services

  
