pageextension 50101 MyCustomerExt extends "Customer Card"
{
    layout
    {
        modify(Address)
        {
            trigger OnBeforeValidate();
            var
                Publisher: Codeunit 50100;
            begin
                Publisher.OnAddressLineChanged(Address);
            end;
        }
    }
}
