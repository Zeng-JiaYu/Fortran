subroutine Sub(n)
use omp_lib
integer::a=1,n
!$omp threadprivate(a)
a=a+2
!$omp parallel num_threads(n)
write(*,'(*(g0,2x))') 'a=', a, &
  'threadNum=', omp_get_thread_num()
a = a+1
!$omp end parallel
end subroutine Sub

program test_5_03
  call Sub(3)
  write(*,*)
  call Sub(2)
  write(*,*)
  call Sub(3)
end program