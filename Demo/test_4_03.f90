program test_4_03
implicit none
integer i, j, a(5), b(10)
b = [1,2,3,4,5,6,7,8,9,10]
j = 0
!$omp parallel 
!$omp do private(j)
do i = 1, 10, 2
  j = i/2 + 1
  a(j) = b(i)
end do
!$omp end do
!$omp end parallel 
write(*,'(*(i3))') a
end program 
 