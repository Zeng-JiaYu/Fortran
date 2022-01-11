program test_4_07
use omp_lib
implicit none
integer i, a(5)
i=0
!$omp parallel workshare
forall( i = 1: size(a))
  a(i) = i
end forall
!$omp end parallel workshare
write(*,'(5i4)') a
end program 
