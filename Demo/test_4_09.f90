program test_4_09
use omp_lib
!$OMP PARALLEL 
!$omp single
!$omp taskloop untied
do i=1,5
  write(*,*) omp_get_thread_num()
end do
!$omp end taskloop
!$omp end single
!$OMP END PARALLEL 
end program 
