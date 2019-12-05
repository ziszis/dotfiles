import atexit
import os
import readline

historyPath = os.path.expanduser("~/.pyhistory")

def save_history(historyPath=historyPath):
  import readline
  readline.write_history_file(historyPath)

if os.path.exists(historyPath):
  readline.read_history_file(historyPath)

atexit.register(save_history)
del os, atexit, readline, save_history, historyPath
