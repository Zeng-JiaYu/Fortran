module mod
  integer m
  !$omp threadprivate(m)
end module
program test_5_01
  use omp_lib
  use mod
  implicit none
  integer:: n = 1, n0
  !$omp threadprivate(n)
  integer nT
10 format(*(g0,2x))  
  write(*,10) '≥ı º÷µ:', m, n, n0
  nT = 2; m = 3; n = 2; 
  !$omp parallel num_threads(nT) 
  write(*,10) 'm,n=', m, n, 'threadNum=', omp_get_thread_num()
  n = 2+omp_get_thread_num(); m = 10+n 
  !$omp end parallel 
  write(*,10) 'm,n=', m, n
  nT = 4
  !$omp parallel num_threads(nT)
  write(*,10) 'n=', n, 'threadNum=', omp_get_thread_num()
  n = omp_get_thread_num()
  !$omp end parallel 
end program