
Step1:open cmd and type mongosh

Step2: To view existing collections use "show collection" commmand

test> show collections
SN


Step3: to create new collection use "db.createCollection("collectionname")" command


test> db.createCollection("sj")
{ ok: 1 }
test> show collections
sj
SN


Step4: TO insert new record use below command


test> db.sj.insertOne({Name:"Snehal"})
{
  acknowledged: true,
  insertedId: ObjectId("6372f3e90d0c659d62d38068")
test>
test> db.sj.insertOne({Name:"raju"})
{
  acknowledged: true,
  insertedId: ObjectId("6372f3ff0d0c659d62d38069")
}
test> db.sj.insertOne({Name:"purva",email:"sj@gmail.com"})
{
  acknowledged: true,
  insertedId: ObjectId("6372f4250d0c659d62d3806a")
}


Step5 To display  records:
test> db.sj.find()
[
  { _id: ObjectId("6372f3e90d0c659d62d38068"), Name: 'Snehal' },
  { _id: ObjectId("6372f3ff0d0c659d62d38069"), Name: 'raju' },
  {
    _id: ObjectId("6372f4250d0c659d62d3806a"),
    Name: 'purva',
    email: 'sj@gmail.com'
  }
]


Step 6: Update records


test> db.sj.update({Name:"pruva",($set:{Name:"manjiri"})
Uncaught:
SyntaxError: Unexpected token (1:27)

> 1 | db.sj.update({Name:"pruva",($set:{Name:"manjiri"})
    |                            ^
  2 |

test> db.sj.update({Name:"pruva",{$set:{Name:"manjiri"}})
Uncaught:
SyntaxError: Unexpected token (1:27)

> 1 | db.sj.update({Name:"pruva",{$set:{Name:"manjiri"}})
    |                            ^
  2 |

test> db.sj.update({Name:"pruva"},{$set:{Name:"manjiri"}})
DeprecationWarning: Collection.update() is deprecated. Use updateOne, updateMany, or bulkWrite.
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 0,
  modifiedCount: 0,
  upsertedCount: 0
}
test> db.sj.update({Name:"Snehal"},{$set:{Name:"manjiri"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}


Step 7 :Remove record

test> db.sj.remove({Name:"Raju"})
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
{ acknowledged: true, deletedCount: 0 }
test> db.sj.remove({Name:"raju"})
{ acknowledged: true, deletedCount: 1 }
test> db.sj.find()
[
  { _id: ObjectId("6372f3e90d0c659d62d38068"), Name: 'manjiri' },
  {
    _id: ObjectId("6372f4250d0c659d62d3806a"),
    Name: 'purva',
    email: 'sj@gmail.com'
  }
]
test>