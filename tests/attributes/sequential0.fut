-- ==
-- random input { [10][10]i32 } auto output
-- structure gpu { SegMap 0 DoLoop 2 }

def main xss = #[sequential] map i32.sum xss
