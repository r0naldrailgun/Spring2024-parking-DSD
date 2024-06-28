module TB;

    reg clk;
    wire signed [10:0] uni_parked_car;
    wire signed [10:0] parked_car;
    wire signed [10:0] uni_vacated_space;
    wire signed [10:0] vacated_space;
    wire uni_is_vacated_space;
    wire is_vacated_space;
    reg car_entered;
    reg is_uni_car_entered;
    reg car_exited;
    reg is_uni_car_exited;

    parking Parking(
    clk,
    uni_parked_car,
    parked_car,
    uni_vacated_space,
    vacated_space,
    uni_is_vacated_space,
    is_vacated_space,
    car_entered,
    is_uni_car_entered,
    car_exited,
    is_uni_car_exited
    );
    initial begin
        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
    
        //parameters in inital state
        car_entered = 0;
        car_exited = 0;
        is_uni_car_exited = 0;
        is_uni_car_entered = 0;
        #2      
        $display("1: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //200 university cars enters(max capacity)

        repeat(200) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end
        $display("2: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        #2
        //one more university car enters(but it can't)
        car_entered = 1;
        is_uni_car_entered = 1;
        #2
        car_entered = 0;
        is_uni_car_entered = 0;
        #2
        $display("3: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        #2
        //one university car enters and one university car exits(beacuse at this time capaticy is full entering does not happen but one car successfully exits)
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 1;
        #2
        car_exited = 0;
        car_entered = 0;
        is_uni_car_entered = 0;
        is_uni_car_exited = 0;
        $display("4: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        #2
        //one none-university car exits(but there is no none-university car parked)
        car_exited = 1;
        is_uni_car_exited = 0;
        #2
        car_exited = 0;
        is_uni_car_exited = 1;
        $display("5: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        #2
        //one none-university car enters and one none-university car exits(beacuse at this time there is no car parked exiting does not happen but one car successfully enters)
        car_exited = 1;
        is_uni_car_exited = 0;
        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_exited = 0;
        is_uni_car_exited = 1;
        car_entered = 0;
        is_uni_car_entered = 1;
        $display("6: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        #2
        //500 none-university cars enters(max capacity)
        repeat(500) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 0;
            #2
            car_entered = 0;
            is_uni_car_entered = 1;
        end

        #2
         $display("7: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        #2
        //one more none-university car enters(but it can't)

        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_entered = 0;
        is_uni_car_entered = 1;
        #2
        $display("8: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //one none-university car enters and one none-university car exits(beacuse at this time there is no car parked exiting does not happen but one car successfully enters)
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #2
        car_entered = 0;
        car_exited = 0;
        is_uni_car_entered = 1;
        is_uni_car_exited = 1;
        #2
        $display("9: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        #2
        //all university cars exit
        repeat(200) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end
        $display("10: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);



        //one university car exits(but there is no university car parked)
        #2
        car_exited = 1;
        is_uni_car_exited = 1;
        #2
        car_exited = 0;
        is_uni_car_exited = 0;

        $display("11: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //one university car enters and one university car exits(beacuse at this time there is no car parked, exiting does not happen but one car successfully enters)
        #2
        car_exited = 1;
        is_uni_car_exited = 1;
        car_entered = 1;
        is_uni_car_entered = 1;
        #2
        car_exited = 0;
        is_uni_car_exited = 0;
        car_entered = 0;
        is_uni_car_entered = 1;
        #2
        $display("12: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);


        #57600
        //after 8 a.m

        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
        //showing what happend at 8 a.m
        $display("13: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        //anohter non-university car entered when the capacity is full. 
        #2
        car_entered = 1;
        is_uni_car_entered = 0;
        #2
        car_entered = 0;
        is_uni_car_exited = 1;
        $display("14: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //300 university cars enters but only 200 can be parked beacuse the other space is saturated by none-university cars and they should leave
        repeat(300) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end
        #2
        $display("15: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        #2
        //exceeded none-university cars exited
        repeat(300) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 0;
            #2
            car_exited = 0;
            is_uni_car_exited = 1;
        end
        #2
        $display("16: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //300 university cars enters so the capacity is full
        repeat(300) begin
            #2
            car_entered = 1;
            is_uni_car_entered = 1;
            #2
            car_entered = 0;
            is_uni_car_entered = 0;
        end
        #2
        $display("17: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        #28800
        //showing what happend at 13 a.m
        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
        $display("18: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        #7200      
        //showing what happend at 14 a.m
        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
        $display("19: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);


        #7200      
        //showing what happend at 15 a.m
        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
        $display("20: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
    
        #7200      
        //showing what happend at 16 a.m
        $display("the Time is: %02d:%02d" , theTime / 60 , theTime % 60);
        $display("21: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        
        //all exeeded university cars exited
        repeat(300) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end
        #2
        $display("22: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //all 200 none-university cars exited
        repeat(200) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 0;
            #2
            car_exited = 0;
            is_uni_car_exited = 1;
        end
        #2
        $display("23: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);

        //all other 200 university cars exited
        repeat(200) begin
            #2
            car_exited = 1;
            is_uni_car_exited = 1;
            #2
            car_exited = 0;
            is_uni_car_exited = 0;
        end
        #2
        $display("24: uni_parked_car=%0d,uni_vacated_space=%0d,uni_is_vacated_space=%0d,parked_car=%0d,vacated_space=%0d,is_vacated_space=%0d",
                uni_parked_car,uni_vacated_space,uni_is_vacated_space,parked_car,vacated_space,is_vacated_space);
        $finish;
    end


    initial clk = 0;
    always begin
        #1 clk = ~clk;
    end
    integer theTime = 0;
    always begin
        #120 theTime = theTime + 1;
    end


endmodule
