fun print_array arr =
    let val _ = print ("[| ") in
        let val _ =  Array.foldl (
                    fn (elem, _) =>
                       print ((Real.toString elem) ^ ", ")
                ) () arr in
            print ("|]\n")
        end
    end
;

fun dot arr1 arr2 =
    Array.foldli (
        fn (idx, elem, sum) =>
           let val elem' = Array.sub (arr2, idx) in
               (sum + (elem * elem'))
           end
    ) 0.0 arr1
;

val vec1 = Array.fromList([1.0,2.0,3.0,4.0,5.0]);
val vec2 = Array.fromList([5.0,4.0,3.0,2.0,1.0]);

let val _ = print_array vec1 in
    let val _ = print_array vec2 in
        let val result = dot vec1 vec2 in
            print ("result = " ^ (Real.toString result) ^ "\n")
        end
    end
end;


