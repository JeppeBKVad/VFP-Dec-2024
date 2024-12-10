page 50201 "External Projects"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "External Project";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {
                    
                }
                field("Job Description"; Rec.JobDiscription)
                {

                }
                field(Consultant; Rec.Consultant)
                {
                    
                }
                field(Price; Rec.Price)
                {

                }
                field(Expenses; Rec.Expenses)
                {

                }
                field("Start Date"; Rec.StartDate)
                {

                }
                field("End Date"; Rec.EndDate)
                {

                }
                field(Status; Rec.Status)
                {

                }
                field(Rating; Rec.Rating)
                {

                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}