program test_2_05
use omp_lib
implicit none
integer i, nT, nP
write(*,"(a)",advance='no') '  �� �� ��: '
read(*,*) nT !��ȡ�߳���
nP = omp_get_num_procs() !CPU������
write(*,*) 'CPU������: ', nP
!$OMP PARALLEL num_threads(nT) if(nP>nT)
write(*,*) 'Hello'  
!$OMP END PARALLEL 
end program 
