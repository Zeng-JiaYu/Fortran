program test_2_04
use omp_lib
integer n
write(*,*) 'begin...'         !代码块1，串行
n = 3
write(*,*) 'n =', n
call omp_set_max_active_levels(n)
!$OMP PARALLEL num_threads(3)
write(*,*) 'outer: region 1'  !代码块2，并行
call output
!$OMP PARALLEL num_threads(2) 
write(*,*) 'inner: region 3'  !嵌套并行
!$OMP END PARALLEL 
!$OMP END PARALLEL 
write(*,*) 'end...'           !代码块3，串行
end program 

subroutine output
!$OMP PARALLEL num_threads(2)
write(*,*) 'inner: region 2'  !嵌套并行
!$OMP END PARALLEL 
end subroutine