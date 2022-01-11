program test
    implicit none 
    integer(4)::i, n=10
    real(4) a,b
    call RANDOM_SEED()
    a=0
    
    do i=1,n
        call RANDOM_NUMBER(b)
        a = a + b
    end do
    
    write(*,*) a
    write(*,"('Ö´ÐÐÍê±Ï¡£¡¯")
    read(*,*)
    pause
end program