program test_4_04
use omp_lib
implicit none
integer i, a(5), b(5)
b=0; 
a=-1; a(1)=1
!$omp parallel 
!$omp do ordered
do i=2,5
  a(i) = i
  !$omp ordered 
  b(i) = a(i-1)
  !$omp end ordered
end do
!$omp end do
!$omp end parallel 
do i=1,5
  write(*,'(2i6)') a(i), b(i)
end do
end program 
