program test_4_01
use omp_lib
implicit none
integer i, j
!$omp parallel num_threads(6)
!$omp do collapse(2)
do i=1,3
  do j=1,2
    write(*,*) i,j,omp_get_thread_num()
  end do
end do
!$omp end do
!$omp end parallel 
end program 
