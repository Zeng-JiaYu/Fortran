program test
    use omp_lib
    !$omp parallel num_threads(5)
    ! $omp single
        !$omp taskloop untied
    do i=1,5
       write(*,*) omp_get_thread_num()
    end do
    !$omp end taskloop
    ! $omp end single
    !$omp end parallel
    write(*,'(5i4)') a
    end program