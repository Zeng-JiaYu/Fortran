program test_2_02
write(*,*) 'begin...'         !�����1������
!$OMP PARALLEL num_threads(2)
write(*,*) 'region 1'         !�����2������
!$OMP END PARALLEL 
write(*,*) '---------'        !�����3������
!$OMP PARALLEL num_threads(3)
write(*,*) 'region 2'         !�����4������
!$OMP END PARALLEL 
write(*,*) 'end...'           !�����5������
end program 
