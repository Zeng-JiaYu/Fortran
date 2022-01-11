program test_3_01
use omp_lib
implicit none
integer i, j, n, nT
n = 10; i = 1; j = 2
write(*,"(a)",advance='no') '  线 程 数: '
read(*,*) nT !读取线程数
!$omp parallel num_threads(nT)
write(*,*) 'output1: ', i,j ,n
!$omp barrier
!$OMP SECTIONS private(i) firstprivate(n) lastprivate(j)
!$OMP SECTION
do i = 1, 3
  n = n + 1
end do
j = n
write(*,*) 'n = ', n, '   thread = ', omp_get_thread_num()
!$OMP SECTION
do i = 11, 13
  n = n + 1
end do
j = n
write(*,*) 'n = ', n, '   thread = ', omp_get_thread_num()
!$OMP SECTION
j = n
write(*,*) 'n = ', n, '   thread = ', omp_get_thread_num()
!$OMP END SECTIONS 
write(*,*) 'output2: ', i,j ,n
!$omp end parallel
write(*,*) 'output3: ', i,j ,n
end program 
