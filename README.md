# Elixir Enum.each and Process.exit

This repository demonstrates a potential issue when using `Enum.each` and `Process.exit` together in Elixir.  The provided code snippet shows how terminating a process within an `Enum.each` loop immediately stops the entire process.

The solution demonstrates safer alternatives for handling such situations by using different functions which do not terminate the process, instead opting for more controlled error handling.