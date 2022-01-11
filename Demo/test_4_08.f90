program test_4_08
!$ use omp_lib
implicit none
integer i
real(8):: t0=0, t1=0, t2=0, t3=0
real,allocatable::a(:)
allocate(a(1000000000))
!$ t0 = omp_get_wtime()
call CPU_TIME(t1)
!$omp parallel do num_threads(5)
do i = 1, size(a)
  a(i) = erf(1.0*i) + sin(1.0*i)
  a(i) = mod(a(i),0.1)
end do
!$omp end parallel do
call CPU_TIME(t2)
!$ t3 = omp_get_wtime()
print*,a(4)
print*, t2-t1, t3-t0
end program 
