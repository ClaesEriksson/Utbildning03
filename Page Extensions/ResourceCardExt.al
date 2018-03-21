pageextension 123456701 ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-02-01 - D. E. Veloper 
{
    layout
    {
        addlast(General)
        {
            field("Resource Type"; "Resource Type")
            {

            }
            field("Quantity Per Day"; "Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("Maximum Participants"; "Maximum Participants")
                {
                    Visible = ShowMaxField;

                }
            }
        }

    }
    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}