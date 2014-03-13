bmiTell :: Double -> Double -> String
bmiTell weight height 
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "you're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0 

calcBmis :: [(Double , Double)] -> [Double]
calcBmis xs = [bmi | (w,h) <- xs, let bmi = w / h ^ 2 , bmi > 25.0]
 
