program test_1_01
!$OMP PARALLEL
write(*,*) 'Hello'
!$OMP END PARALLEL 
end program 
