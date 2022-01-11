program test_1_02
!$ use omp_lib
!$omp parallel num_threads(6)
!$ write(*,'(*(g0))') omp_get_thread_num()
write(*,*) 'Hello'
!$omp end parallel 
end program 