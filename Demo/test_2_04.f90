program test_2_04
use omp_lib
integer n
write(*,*) 'begin...'         !�����1������
n = 3
write(*,*) 'n =', n
call omp_set_max_active_levels(n)
!$OMP PARALLEL num_threads(3)
write(*,*) 'outer: region 1'  !�����2������
call output
!$OMP PARALLEL num_threads(2) 
write(*,*) 'inner: region 3'  !Ƕ�ײ���
!$OMP END PARALLEL 
!$OMP END PARALLEL 
write(*,*) 'end...'           !�����3������
end program 

subroutine output
!$OMP PARALLEL num_threads(2)
write(*,*) 'inner: region 2'  !Ƕ�ײ���
!$OMP END PARALLEL 
end subroutine