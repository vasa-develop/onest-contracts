module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "IP_ADDRESS",
      port: 22000,
      network_id: "*", // Match any network id
      gasPrice: 0,
      gasLimit: 6000000,
    },
  },
};
