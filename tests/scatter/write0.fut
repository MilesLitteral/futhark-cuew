-- Test that write works in its simplest uses.
-- ==
--
-- input {
--   [0]
--   [9]
--   [3]
-- }
-- output {
--   [9]
-- }
--
-- input {
--   [-1]
--   [0]
--   [5]
-- }
-- output {
--   [5]
-- }
--
-- input {
--   [0, 1]
--   [5, 6]
--   [3, 4]
-- }
-- output {
--   [5, 6]
-- }
--
-- input {
--   [0, 2, -1]
--   [9, 7, 0]
--   [3, 4, 5]
-- }
-- output {
--   [9, 4, 7]
-- }
--
-- input {
--   [4, -1]
--   [77, 0]
--   [8, -4, 9, 1, 2, 100]
-- }
-- output {
--   [8, -4, 9, 1, 77, 100]
-- }

def main [k][n] (indexes: [k]i32) (values: [k]i32) (array: *[n]i32): [n]i32 =
  scatter array (map i64.i32 indexes) values
