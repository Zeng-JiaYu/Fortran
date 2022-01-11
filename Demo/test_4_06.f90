program test_4_06
use omp_lib
implicit none
integer i, a(5)
i=0
!$omp parallel do
do i = 1, size(a)
  a(i) = i
end do
!$omp end parallel do
write(*,'(5i4)') a
end program 
