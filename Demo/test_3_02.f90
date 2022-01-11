program test_3_02
use omp_lib
implicit none
integer i
!$omp parallel num_threads(2) private(i)
!$omp single
write(*,*) omp_get_thread_num()
read(*,*) i
!$omp end single copyprivate(i)
i = i + omp_get_thread_num()
write(*,*) i
!$omp end parallel 
end program 
