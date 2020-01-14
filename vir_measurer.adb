pragma SPARK_mode;

package body vir_measurer is

function measurer (G1: in Four_digit_number) return Four_digit_number is
      F1aux, F2aux, F3aux, F4aux : integer;

      A, B, C, D: Digit;
      Digit1, Digit2, Digit3, Digit4: Digit;
   begin
      A := G1.Digit_1;
      B := G1.Digit_2;
      C := G1.Digit_3;
      D := G1.Digit_4;

      F1aux := integer (A);
      F2aux := integer (B);
      F3aux := integer (C);
      F4aux := integer (D);

     if F4aux >= 10 then
      Digit4 := Digit (F4aux - 10);
      else Digit4 := Digit (F4aux);
         F3aux := F3aux + 1;
         end if;
     if F3aux >= 10 then
         Digit3 := Digit (F3aux - 10);
         else Digit3 := digit (F3aux);
          F2aux := F2aux + 1;
         end if;
     if F2aux >= 10 then
         Digit2 := Digit (F2aux - 10);
         else Digit2 := digit (F2aux);
         F1aux := F1aux + 1;
         end if;
     if F1aux >= 10 then
      Digit1 := Digit (F1aux - 10);
      else Digit1 := Digit (F1aux);
         end if;

         return (Digit_1 => Digit1, Digit_2 => Digit2, Digit_3 => Digit3, Digit_4 => Digit4);

   end measurer;

 procedure outputs (G1: in Four_digit_number; J1: out Four_Digit_Number) is
      F1aux, F2aux, F3aux, F4aux : Integer;
      A, B, C, D: Digit;

   begin
      A := G1.Digit_1;
      B := G1.Digit_2;
      C := G1.Digit_3;
      D := G1.Digit_4;

      F1aux := integer (A);
      F2aux := integer (B);
      F3aux := integer (C);
      F4aux := integer (D);

   if F4aux >= 10 then
      J1.Digit_4 := Digit (F4aux - 10);
      else J1.Digit_4 := Digit (F4aux);
         end if;
     if F3aux >= 10 then
         J1.Digit_3 := Digit (F3aux - 10);
         else J1.Digit_3 := Digit (F3aux);
         end if;
     if F2aux >= 10 then
         J1.Digit_2 := Digit (F2aux - 10);
         else J1.Digit_2 := Digit (F2aux);
         end if;
     if F1aux >= 10 then
      J1.Digit_1 := Digit (F1aux - 10);
     else J1.Digit_1 := Digit (F1aux);
      end if;
   end outputs;
   end vir_measurer;
