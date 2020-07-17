module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "54.163.115.86",
      //host: "54.180.25.23",
      //host: "15.165.82.162",
      port: 22000,
      network_id: "*", // Match any network id
      gasPrice: 0,
      gasLimit: 6000000,
    },
  },
};
