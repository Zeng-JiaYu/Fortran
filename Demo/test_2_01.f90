program test_2_01
write(*,*) 'begin...'         !代码块1，串行
!$OMP PARALLEL num_threads(2)
write(*,*) 'calculate'        !代码块2，并行
call output
!$OMP END PARALLEL 
write(*,*) 'end...'           !代码块3，串行
end program 

subroutine output
write(*,*) 'calculate subroutine' 
end subroutine