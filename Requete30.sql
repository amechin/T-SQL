select    prof.NOM, prof.NUM_PROF
    from    PROFESSEURS prof
    where    not exists (
        select    *
        from    CHARGE
        where    CHARGE.NUM_PROF = prof.NUM_PROF
        and        CHARGE.NUM_COURS = 1
    )
