Program Pascal_Library;
Uses Crt;
Var
        ProceedBtn : String;
Procedure RegisterNow;
Var     Member_File: Text;
        Member_Number, Member_Name, Member_IDNO: String;
        Member_Address, Member_Occupation, Member_RegDate: String;
Begin
        Writeln;
        Writeln('       REGISTER AS A MEMBER ');
        Write('       Enter your Member Number     : ');
        Readln(Member_Number);
        Write('       Enter your Full Name         : ');
        Readln(Member_Name);
        Write('       Enter your ID Number         : ');
        Readln(Member_IDNO);
        Write('       Enter your Physical Address  : ');
        Readln(Member_Address);
        Write('       Enter your Occupation        : ');
        Readln(Member_Occupation);
        Write('       Enter your Registration Date : ');
        Readln(Member_RegDate);
        Assign(Member_File, 'C:\pascal\Library\Members.txt');
        Append(Member_File);
        Writeln(Member_File, Member_Number,'|',Member_Name,'|',Member_IDNO,'|',Member_Address,'|',Member_Occupation,'|',Member_RegDate);
        Close(Member_File);
        Writeln;
        Writeln('       Thank you for taking time to register. You are now logged it.');
        Write('       Press any key to proceed');
        Readln;
End;
Procedure LoginNow;
Var Login_Name: String;
Begin
        Writeln;
        Writeln('       LOGIN TO YOUR ACCOUNT');
        Write('       Enter your Member Number: ');
        Readln(Login_Name);
        Write('       Press any Key to Proceed');
        Readln;
End;
Procedure RegisterBook;
  Var     Book_File: Text;
        books, i : integer;
        Book_Number, Book_Name, Book_code: String;
        Book_Section, Book_RegDate: String;
  Begin
        Writeln;
        Writeln('       REGISTER A BOOK');
        Write('       How many books do you want to register?');
        Readln(books);
        writeln;
        For i:=1 to books do
        Begin
        Write('       Enter Book Number       : ');
        Readln(Book_Number);
        Write('       Enter Book Name         : ');
        Readln(Book_Name);
        Write('       Enter Book Code         : ');
        Readln(Book_Code);
        Write('       Enter Book Section      : ');
        Readln(Book_Section);
        Write('       Enter Registration Date : ');
        Readln(Book_RegDate);
        Assign(Book_File, 'C:\pascal\Library\Books.txt');
        Append(Book_File);
        Writeln(Book_File, Book_Number,'|',Book_Name,'|',Book_Code,'|',Book_Section,'|',Book_RegDate);
        Close(Book_File);
        Writeln;
        End;
        Writeln('       Books Registered Successfully.');
        Write('       Press any key to proceed');
        Readln;
End;
Procedure LendBook;
Var     Book_File: Text;
        books, i : integer;
        Book_Number, Member_Number, Book_code: String;
        Book_RetDate, Book_LendDate: String;
Begin
        Writeln;
        Writeln('       LEND A BOOK');
        writeln;
        Write('       Enter Book Number       : ');
        Readln(Book_Number);
        Write('       Enter Book Code         : ');
        Readln(Book_Code);
        Write('       Enter Lender Number         : ');
        Readln(Member_Number);
        Write('       Enter Lending Date      : ');
        Readln(Book_LendDate);
        Write('       Enter Return Date : ');
        Readln(Book_RetDate);
        Assign(Book_File, 'C:\pascal\Library\Lend.txt');
        Append(Book_File);
        Writeln(Book_File, Book_Number,'|',Book_Code,'|',Member_Number,'|',Book_LendDate,'|',Book_RetDate);
        Close(Book_File);
        Writeln;
        Writeln('       Books Lent Successfully.');
        Write('       Press any key to proceed');
        Readln;
End;
Procedure ReturnBook;
Var     Book_File: Text;
        books, i : integer;
        Book_Number, Member_Number, Book_code, Book_RetDate: String;
Begin
        Writeln;
        Writeln('       RETURN A BOOK');
        writeln;
        Write('       Enter Book Number       : ');
        Readln(Book_Number);
        Write('       Enter Book Code         : ');
        Readln(Book_Code);
        Write('       Enter Lender Number         : ');
        Readln(Member_Number);
        Write('       Enter Returned Date : ');
        Readln(Book_RetDate);
        Assign(Book_File, 'C:\pascal\Library\Return.txt');
        Append(Book_File);
        Writeln(Book_File, Book_Number,'|',Book_Code,'|',Member_Number,'|',Book_RetDate);
        Close(Book_File);
        Writeln;
        Writeln('       Books Lent Successfully.');
        Write('       Press any key to proceed');
        Readln;
End;
Begin

        Textbackground(brown);
        ClrScr;
        Writeln;
        Writeln('       Welcome to LIBRARY MANAGEMENT SYSTEM');
        Writeln();
        Writeln('       Login to your Account Now Or Simply Register your Account Now!');
        Write('       Press Y to login or N to register -->: ');
        Readln(ProceedBtn);
        if (ProceedBtn = 'Y') then
                LoginNow
        else if (ProceedBtn = 'y') then
                LoginNow
        else if (ProceedBtn = 'N') then
                RegisterNow
        else if (ProceedBtn = 'n') then
                RegisterNow
        End.
        Writeln('       Select an Action to Proceed::');
        Writeln('       1. Lend a Book.');
        Writeln('       2. Register a Book.');
        Writeln('       3. Return a Book.');
        Writeln('       4. Logout');
        Readln(ProceedBtn);
        If (ProceedBtn = '1') then
                LendBook
        else if (ProceedBtn = '2') then
                RegisterBook
        else if (ProceedBtn = '3') then
                ReturnBook
        else if (ProceedBtn = '4') then
                Writeln
        End.

        Textbackground(brown);
        ClrScr;
        Writeln;
        Writeln('       Welcome to LIBRARY MANAGEMENT SYSTEM');
        Writeln();

        Writeln('       Select an Action to Proceed::');
        Writeln('       1. Lend a Book.');
        Writeln('       2. Register a Book.');
        Writeln('       3. Return a Book.');
        Writeln('       4. Logout');
        Readln(ProceedBtn);
        If (ProceedBtn = '1') then
                LendBook
        else if (ProceedBtn = '2') then
                RegisterBook
        else if (ProceedBtn = '3') then
                ReturnBook
        else if (ProceedBtn = '4') then
                Writeln
        End.

        Textbackground(brown);
        ClrScr;
        Writeln;
        Writeln('       Welcome to LIBRARY MANAGEMENT SYSTEM');
        Writeln();

        Writeln('       Select an Action to Proceed::');
        Writeln('       1. Lend a Book.');
        Writeln('       2. Register a Book.');
        Writeln('       3. Return a Book.');
        Writeln('       4. Logout');
        Readln(ProceedBtn);
        If (ProceedBtn = '1') then
                LendBook
        else if (ProceedBtn = '2') then
                RegisterBook
        else if (ProceedBtn = '3') then
                ReturnBook
        else if (ProceedBtn = '4') then
                Writeln
        End.
        Textbackground(brown);
        ClrScr;
        Writeln;
        Writeln('       Welcome to LIBRARY MANAGEMENT SYSTEM');
        Writeln();

        Writeln('       Select an Action to Proceed::');
        Writeln('       1. Lend a Book.');
        Writeln('       3. Return a Book.');
        Writeln('       4. Logout');
        Readln(ProceedBtn);
        If (ProceedBtn = '1') then
                LendBook
        else if (ProceedBtn = '2') then
                RegisterBook
        else if (ProceedBtn = '3') then
                ReturnBook
        else if (ProceedBtn = '4') then
                Writeln
        End.
End.
