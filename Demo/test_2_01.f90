program test_2_01
write(*,*) 'begin...'         !�����1������
!$OMP PARALLEL num_threads(2)
write(*,*) 'calculate'        !�����2������
call output
!$OMP END PARALLEL 
write(*,*) 'end...'           !�����3������
end program 

subroutine output
write(*,*) 'calculate subroutine' 
end subroutine