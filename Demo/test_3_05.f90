program test_3_05
implicit none
integer ::i=0
!$omp parallel num_threads(800) 
!$omp atomic
i = i + 1
!$omp end parallel
print*,i
end program 
