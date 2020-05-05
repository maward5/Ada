with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure calculator is
	first_operand : float;
	second_operand : float;
	result : float;
	operator : character;
begin
	loop
		Ada.Text_IO.Put_Line("Enter two numbers seperated by an operator (+,-,*,/) or 'q' to exit");
		Ada.Float_Text_IO.Get(first_operand);
		Ada.Text_IO.Get(operator);
		Ada.Float_Text_IO.Get(second_operand);


		case operator is
			when '+' =>
				result := first_operand + second_operand;
				Ada.Text_IO.Put_Line(Float'Image(result));
			when '-' =>
				result := first_operand - second_operand;
				Ada.Text_IO.Put_Line(Float'Image(result));
			when '*' =>
				result := first_operand * second_operand;
				Ada.Text_IO.Put_Line(Float'Image(result));
			when '/' =>
				result := first_operand / second_operand;
				Ada.Text_IO.Put_Line(Float'Image(result));
			when 'q' =>
				exit;
			when others =>
				Ada.Text_IO.Put_Line("Invalid Operator.");
		end case;

	end loop;
end calculator;
