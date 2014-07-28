program GobsProgram
    character(1) :: input
    write(*,"(a)")"Gob's Program: Y/N?"
    write(*,"(a)",advance='no') "? "
    read*, input
    if (input == 'y' .or. input == 'Y') then
        do 
            write(*,"(a)",advance='no') 'Penus  '
        end do
    end if
end program GobsProgram
