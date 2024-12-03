# FastApi vs httplib.h
<p align="center">
   <img src="https://img.shields.io/badge/python-3.12-blue" alt="Python"/>
   <img src="https://img.shields.io/badge/FastAPI-005571?style=flat&logo=fastapi" alt="FastAPI"/>
   <img src="https://img.shields.io/badge/c-%2300599C.svg?style=flat&logo=c&logoColor=white" alt="С"/>
   <img src="https://img.shields.io/badge/c++-00599C.svg?style=flat&logo=cplusplus&logoColor=white" alt="C++"/>
   <img src="https://img.shields.io/badge/httplib.h-purple" alt="httplib.h"/>
   <img src="https://img.shields.io/badge/license-MIT-blue" alt="License"/>
</p>

This repository provides a simple testing stand for comparing the performance of servers implemented in Cython, C++, and Python. It also serves as an example of how to compile a Python application as a Cython module.

## Configurations
- **C++ Server**: Using `httplib.h` (a single-header HTTP library for C++).  
- **Python Server**: Using `FastAPI` and `Uvicorn`.  
- **Cython Server**: The same Python server compiled into a Cython module for performance comparison.

## Requirements

- [Make](https://www.gnu.org/software/make/)
- [Python 3.12+](https://www.python.org/downloads/)
- C++ compiler with [C++17](https://en.cppreference.com/w/cpp/17) support
- httplib.h header in `cpp-server` dir
- Python3.12-dev for Cython, e.g. install via [ppa](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa)
- [Uv](https://pypi.org/project/uv/) for Python dependencies

Install httplib.h:
```bash
cd cpp-server

# Using curl
curl -L -o httplib.h https://github.com/yhirose/cpp-httplib/releases/download/0.7.13/httplib.h

# Or using wget
wget https://github.com/yhirose/cpp-httplib/releases/download/0.7.13/httplib.h -O httplib.h

```

Install python-dev package
```bash
sudo apt-get install python3.12-dev
```
## Navigation
### Commands
To navigate in avalable commands in project you can use the following command:
```bash
make help
```

> It will print all available commands in the project and their description

### Structure
- `cpp-server/` - Container all source files of C++ server
- `ctyhon-server/` - Container all source files and build configuration for cython server
- `python-server/` - Container all source files of Python server

## Usage / How to run servers

- `make cy-serve`: Build and run Cython server
- `make cpp-serve`: Build and run C++ server
- `make py-run`: Run Python server

## Benchmark

> TODO: 📝 Add benchmark

