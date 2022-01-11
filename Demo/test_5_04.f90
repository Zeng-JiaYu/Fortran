program test_5_04
  use omp_lib
  implicit none
  integer,allocatable,save:: a(:)
  !$omp threadprivate(a)
  integer n, i
  !$omp parallel num_threads(3) private(n)
  n = omp_get_thread_num() 
  allocate(a(n+1))
  a =[(i,i=1,n+1)]
  write(*,'(*(g0,2x))') 'threadNum=', omp_get_thread_num(), ' ,a=', a
  !$omp end parallel
end program