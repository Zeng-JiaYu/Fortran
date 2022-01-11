program test_3_04
implicit none
integer a(10), b(5), i, s
!$omp parallel num_threads(5) 
!$omp workshare
b = [1,0,-2,5,3]
forall(i=1:size(a))
a(i) = i
end forall
s = sum(a) + maxval(b)
!$omp end workshare nowait
!$omp master
write(*,*) s
!$omp end master
!$omp end parallel
end program 
