with AS_Io_Wrapper; use AS_Io_Wrapper;
with vir_measurer; use vir_measurer;


procedure Main is
   D1, D2, D3, D4: Integer;
   G1 : Four_digit_number;
   J1 : Four_digit_number;
   L1 : Integer;

   begin
   loop
      AS_Put_Line("Enter first digit");
      AS_Get(D1);
      AS_Put_Line("Enter next digit");
      AS_Get(D2);
      AS_Put_Line("Enter next digit");
      AS_Get(D3);
      AS_Put_Line("Enter next digit");
      AS_Get(D4);
      G1.Digit_1 := digit (D1);
      G1.Digit_2 := digit (D2);
      G1.Digit_3 := digit (D3);
      G1.Digit_4 := digit (D4);
      outputs (G1, J1);
      AS_Put("The result of the procedure is ");
      AS_Put (Integer (J1.Digit_1));
      AS_put (Integer (J1.Digit_2));
      AS_put (Integer (J1.Digit_3));
      AS_put (Integer (J1.Digit_4));
      L1 := ((D1*1000) + (D2*100) + (D3*10) + D4);
      if (L1 > 3000) then
         AS_Put_Line;
         AS_Put("Temperature EXCEEDS safe level. Recommend beginning emergency procedure");
         end if;
      if (L1 = 3000)  then
         AS_Put_Line;
         AS_put("Temperature within normal parameters");
      end if;
      if (L1 < 3000) then
         AS_Put_Line;
         AS_Put("Temperature is below 3000 degrees Celsius");
         end if;
      if (L1 <= 2000) then
         AS_Put_Line;
         AS_Put("Recommend activating boosters. Temperature is 1000 degrees Celsius below recommended levels");
         end if;
      AS_Put_Line;
   end loop;

end main;

