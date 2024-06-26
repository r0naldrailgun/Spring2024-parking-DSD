module parking(
    input clk,
    output reg signed [10:0] uni_parked_car,
    output reg signed[10:0] parked_car,
    output reg signed[10:0] uni_vacated_space,
    output reg signed[10:0] vacated_space,
    output reg uni_is_vacated_space,
    output reg is_vacated_space,
    input car_entered,
    input is_uni_car_entered,
    input car_exited,
    input is_uni_car_exited
);

integer second = 0;
integer minute = 0;
integer hour = 0;

reg signed[10:0] free_space = 200; //space for none university cars
reg signed [10:0] number_of_entered_none_uni_cars = 0;
reg signed [10:0] number_of_entered_uni_cars = 0;
reg signed [10:0] number_of_exited_none_uni_cars = 0;
reg signed [10:0] number_of_exited_uni_cars = 0;
reg signed [10:0] number_of_uni_total_cars = 0;
reg signed [10:0] number_of_none_uni_total_cars = 0;


always @(*) begin
    number_of_uni_total_cars = number_of_entered_uni_cars - number_of_exited_uni_cars;
    uni_parked_car = number_of_uni_total_cars;
    number_of_none_uni_total_cars = number_of_entered_none_uni_cars - number_of_exited_none_uni_cars;
    parked_car = number_of_none_uni_total_cars;
    uni_vacated_space = 700 - free_space - uni_parked_car;
    vacated_space = free_space - parked_car;
    uni_is_vacated_space = (uni_vacated_space > 0);
    is_vacated_space = (vacated_space > 0);
end

always @(posedge car_entered) begin
    if(is_uni_car_entered) begin
        if(uni_is_vacated_space)
            number_of_entered_uni_cars <= number_of_entered_uni_cars + 1;
    end
    else begin
        if(is_vacated_space)
            number_of_entered_none_uni_cars <= number_of_entered_none_uni_cars + 1;
    end
end

always @(posedge car_exited) begin
    if(is_uni_car_exited) begin
        if(uni_parked_car > 0)
            number_of_exited_uni_cars <= number_of_exited_uni_cars + 1;
    end
    else begin
        if(parked_car > 0)
            number_of_exited_none_uni_cars <= number_of_exited_none_uni_cars + 1;
    end
end


always @(posedge clk) begin
    

    second <= second + 1; //seting time

    if(second == 60) begin
        second <= 0;
        minute <= minute + 1;
        if(minute == 60) begin
            minute <= 0;
            hour <= hour + 1;
            if(hour == 24) begin
                hour <= 0;
            end
        end
    end

    if(hour < 13 && hour >= 8) begin
        free_space <= 200;
    end
    else if(hour < 14 && hour >= 13) begin
        free_space <= 250;
    end
    else if(hour < 15 && hour >= 14) begin
        free_space <= 300;
    end
    else if(hour < 16 && hour >= 15) begin
        free_space <= 350;
    end
    else free_space <= 500;
end

endmodule