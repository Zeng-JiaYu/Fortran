program test_2_03
use omp_lib
write(*,*) 'begin...'    
write(*,*) 'CPUºËÐÄÊý: ', omp_get_num_procs()      
!$OMP PARALLEL 
write(*,*) 'region 1', omp_get_thread_num(), omp_get_num_threads()           
!$OMP END PARALLEL 
write(*,*) '---------' 

call omp_set_num_threads(2)
!$OMP PARALLEL 
write(*,*) 'region 2', omp_get_thread_num(), omp_get_num_threads()           
!$OMP END PARALLEL 
write(*,*) '*********'    

!$OMP PARALLEL 
write(*,*) 'region 3', omp_get_thread_num(), omp_get_num_threads()           
!$OMP END PARALLEL 
write(*,*) '========='

!$OMP PARALLEL num_threads(3)
write(*,*) 'region 4', omp_get_thread_num(), omp_get_num_threads()           
!$OMP END PARALLEL 
write(*,*) 'end...'           
end program 
