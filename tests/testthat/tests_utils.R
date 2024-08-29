
x = runif(10)

test_that("test cross_*", {
	expect_equal(
		simona:::cross_sum(x),
		outer(x, x, "+")
	)

	expect_equal(
		simona:::cross_multiply(x),
		outer(x, x, "*")
	)

	expect_equal(
		simona:::cross_minus(x),
		outer(x, x, "-")
	)

	expect_equal(
		simona:::cross_min(x),
		outer(x, x, pmin)
	)

	expect_equal(
		simona:::cross_max(x),
		outer(x, x, pmax)
	)

})
