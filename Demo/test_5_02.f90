program test_5_02
  use omp_lib
  implicit none
  integer, save:: n 
  !$omp threadprivate(n)
  n = 1
10 format(*(g0,2x))  
  !$omp parallel num_threads(4) copyin(n)
  write(*,10) '1, n=', n, 'threadNum=', omp_get_thread_num()
  !$omp end parallel 
  write(*,*)
  !$omp parallel num_threads(2)
  !$omp single
  n=10
  !$omp end single copyprivate(n)
  write(*,10) '2, n=', n, 'threadNum=', omp_get_thread_num()
  !$omp end parallel 
  write(*,*)
  !$omp parallel num_threads(5)
  write(*,10) '3, n=', n, 'threadNum=', omp_get_thread_num()
  !$omp end parallel 
end program