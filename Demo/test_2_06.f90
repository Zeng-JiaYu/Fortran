program test_2_06
use omp_lib
implicit none
integer:: i=1, j=2, k=3
!$OMP PARALLEL num_threads(2) private(i) firstprivate(j) shared(k)
write(*,*) '初值', i,j,k
!$OMP BARRIER !线程同步
i = omp_get_thread_num()
j = j + omp_get_thread_num() + 1
if(omp_get_thread_num()==0) k = 0
write(*,*) i,j,k
!$OMP END PARALLEL 
write(*,*) '终值', i,j,k
end program 
