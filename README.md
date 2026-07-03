# System Programming Lab: synchronization with semaphores

## 1. Learning Objectives
By the end of this lab, you should be able to:
- initialize and destroy a POSIX semaphore
- use `sem_wait()` and `sem_post()` around a critical section
- coordinate two threads safely

## 2. Repository Layout
- `src/`: source files for this lab
- `include/`: headers and function prototypes
- `scripts/`: helper scripts for grading or local checks
- `tests/`: notes about the visible checks
- `samples/`: expected output shape

## 3. What You Need To Implement
Complete the TODO sections in `src/semaphore_lab.c`.

Required behavior:
1. create two threads
2. protect the bracketed print section with a semaphore
3. print ten bracketed tokens from each thread
4. avoid mixed output such as `[A[B]`
5. print `done` at the end

Rules:
- do not change the function signatures in `include/semaphore_lab.h`
- keep the token format `[A]` and `[B]`
- check semaphore function return values
