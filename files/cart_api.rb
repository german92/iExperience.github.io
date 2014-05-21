# create
#   shopper
#   item
# read
#   shopper
#   item
# update
#   shopper
#   item
# delete
#   shopper
#   item

create shopper rafi
# => <Shopper: ... >
create shopper rafi khan 150
# => <Shopper: ... >
create item milk 10
# => <Item: ... >

read shopper rafi
# => <Shopper: ... >
read item milk
# => <Item: ... >

update shopper rafi 120
# => <Shopper: ... >
update item milk 12
# => <Item: ... >

add rafi milk
# => <Shopper: ... >
add rafi milk
# => <Shopper: ... >
remove rafi milk
# => <Shopper: ... >

read cart rafi
# => <Cart: ... >
checkout rafi
# => <Shopper: ... >

delete shopper rafi
# => <Shopper: ... >
delete item milk
# => <Item: ... >

