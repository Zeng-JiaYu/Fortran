program test_2_02
write(*,*) 'begin...'         !代码块1，串行
!$OMP PARALLEL num_threads(2)
write(*,*) 'region 1'         !代码块2，并行
!$OMP END PARALLEL 
write(*,*) '---------'        !代码块3，串行
!$OMP PARALLEL num_threads(3)
write(*,*) 'region 2'         !代码块4，并行
!$OMP END PARALLEL 
write(*,*) 'end...'           !代码块5，串行
end program 
