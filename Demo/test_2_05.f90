program test_2_05
use omp_lib
implicit none
integer i, nT, nP
write(*,"(a)",advance='no') '  线 程 数: '
read(*,*) nT !读取线程数
nP = omp_get_num_procs() !CPU核心数
write(*,*) 'CPU核心数: ', nP
!$OMP PARALLEL num_threads(nT) if(nP>nT)
write(*,*) 'Hello'  
!$OMP END PARALLEL 
end program 
