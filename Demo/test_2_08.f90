program test_2_08
use omp_lib
implicit none
integer:: i=-1
!$OMP PARALLEL num_threads(2) reduction(min:i)
write(*,*) '��ֵ', i
!$OMP BARRIER !�߳�ͬ��
i = min(i,omp_get_thread_num()+1)
!$OMP BARRIER !�߳�ͬ��
write(*,*)  i
!$OMP END PARALLEL 
write(*,*) '��ֵ', i
end program 
