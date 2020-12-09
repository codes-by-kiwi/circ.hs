--implement a function circle :: [a] -> [[a]], which takes a list and returns a list of 
--all possible rotations of the list. Below are some example evaluations of the circle function:
--     > circle ""
--     []
--     > circle "a"
--     ["a"]
--     > circle "ab"
--     ["ab","ba"]
--     > circle "abc"
--     ["abc","bca","cab"]



circle :: [a] -> [[a]]
circle xs = take (length xs) (iterate (\(y:ys) -> ys ++ [y]) xs)

