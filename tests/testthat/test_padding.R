# This script tests the padding() function

context("Padding image")
library(imageR)


test_that("In case the input is not an image", {

    expect_error(padding(list(input1)))
    expect_error(padding("test_images/padding/input.pdf", "test_images/padding/padding.jpg"))

})

test_that("If user specifies an additional argument, it throws an error", {

    expect_error(padding("test_images/padding/input.jpg", 20, "test_images/padding/padding.jpg", "box"))

})

test_that("Color image is paddingred", {
    
  padding("test_images/padding/input.jpg", 20, "test_images/padding/padding.jpg")
  output <- load.image("test_images/padding/padding.jpg")
  expect_equal(output, exp_output, tolerance=1e-5)

})

test_that("In case the input/output is not a string", {
    
    expect_error(padding(123, "test_images/padding/padding.jpg"))
    expect_error(padding("test_images/padding/input.jpg", 20, c(1,2,3)))
})

test_that("In case the input/output path does not exist", {
    
    expect_error(padding("123/padding/input.jpg", 20, "test_images/padding/padding.jpg"))
    expect_error(padding("test_images/padding/input.jpg", 20, "123/padding/padding.jpg"))
})

test_that("In case the input is not an image", {
    expect_error(padding("test_images/padding/test.pdf", 20, "test_images/padding/padding.jpg"))
})