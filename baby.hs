describeList :: [a] -> String
describeList ls = "The list is "
                  ++ case ls of [] -> "Empty."
                                [x] -> "a singleton list."
                                xs -> "a longer list."
 
