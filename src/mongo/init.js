const rootUser = process.env.MONGO_INITDB_ROOT_USERNAME;
const rootPass = process.env.MONGO_INITDB_ROOT_PASSWORD;
const dbName = process.env.MONGO_INITDB_DATABASE;
db = db.getSiblingDB(dbName);
db.createUser({
  user: rootUser,
  pwd: rootPass,
  roles: [{ role: 'readWrite', db: dbName }]
});
