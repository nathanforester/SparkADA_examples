pragma SPARK_mode;

package vir_measurer is

   type Digit is new Integer range 0 .. 9;

   type Four_digit_number
   is record
        Digit_1  : Digit;
        Digit_2  : Digit;
        Digit_3  : Digit;
        Digit_4  : Digit;
      end record;

   procedure outputs (G1: in Four_digit_number; J1: out Four_digit_number)
   with Depends => (J1 => G1),
        Post => ((Integer (J1.Digit_1)*1000) + (Integer (J1.Digit_2)*100) + (Integer (J1.Digit_3)*10) + (Integer (J1.Digit_4)) < 10000);

   function measurer (G1 : in Four_digit_number) return  Four_digit_number
     with Depends => (measurer'Result => G1),
                     Post => ((Integer (measurer'result.Digit_1)*1000) + (Integer (measurer'result.Digit_2)*100) + (Integer (measurer'result.Digit_3)*10)+ (Integer(measurer'result.Digit_4)) < 10000);
end vir_measurer;



