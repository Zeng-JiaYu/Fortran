program test_4_05
use omp_lib
implicit none
integer i, a(5)
i=0
!$omp parallel num_threads(8)
!$omp single
do while(i<5)
  i=i+1
  !$omp task firstprivate(i) untied
  a(i) = i
  print*, i, omp_get_thread_num()
  !$omp end task
end do
!$omp end single
!$omp end parallel 
write(*,'(5i4)') a
end program 
