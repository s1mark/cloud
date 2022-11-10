variable "date" {
  type = map(any)
  default = {
    first_date = 2022
    second_date = 2009
    third_date = 2020
  }
}
variable "price" {
  type = map(any)
  default = {
    first_price = 14990
    second_price = 299999
    third_price = 499
  }
}
variable "productName" {
  type = map(any)
  default = {
    first_productName = "Okos fogkefe"
    second_productName = "OLED TV"
    third_productName = "Pizzás csiga"
  }
}