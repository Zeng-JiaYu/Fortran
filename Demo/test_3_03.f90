program test_3_03
use omp_lib
implicit none
integer i
!$omp parallel num_threads(2) private(i)
! $omp critical 
write(*,*) '�߳�', omp_get_thread_num(), '���ڶ�ȡ��'
read(*,*) i
! $omp end critical 
!$omp barrier
i = i + omp_get_thread_num()
!$omp critical (output)
write(*,*) '�߳�', omp_get_thread_num(), ', i��ֵΪ��', i
!$omp end critical (output)
!$omp end parallel 
end program 
