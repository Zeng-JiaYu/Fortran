program test_2_07
use omp_lib
implicit none
integer:: i=1
!$OMP PARALLEL num_threads(2) reduction(+:i)
write(*,*) '初值', i
!$OMP BARRIER !线程同步
i = i + omp_get_thread_num() + 1
!$OMP BARRIER !线程同步
write(*,*)  i
!$OMP END PARALLEL 
write(*,*) '终值', i
end program 
