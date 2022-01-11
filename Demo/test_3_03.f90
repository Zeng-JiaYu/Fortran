program test_3_03
use omp_lib
implicit none
integer i
!$omp parallel num_threads(2) private(i)
! $omp critical 
write(*,*) '线程', omp_get_thread_num(), '正在读取：'
read(*,*) i
! $omp end critical 
!$omp barrier
i = i + omp_get_thread_num()
!$omp critical (output)
write(*,*) '线程', omp_get_thread_num(), ', i的值为：', i
!$omp end critical (output)
!$omp end parallel 
end program 
