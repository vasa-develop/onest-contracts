// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "./strings.sol";

contract Onest {
    
    using strings for *;
    
    struct Product {
        string brand;
        string name;
        string Type;
        string orgId;
        string attributes;
    }
    
    struct Item {
        uint256 scannedNo;
        string verificationUrl;
        string status;
        string soldTo;
        string soldLocation;
        string soldToUserId;
        string qrcode;
    }
    
    struct slice {
        uint _len;
        uint _ptr;
    }
    
    mapping (string => Product) public ProductsMapping;
    mapping (string => Item) public ItemsMapping;
    
    event ItemEvent(string activity, string productId, string itemId);
    
    function addProduct(string memory productId, string memory brand, string memory name, string memory Type, string memory orgId, string memory attributes) public {
        ProductsMapping[productId] = Product(brand, name, Type, orgId, attributes);
    }   
    
    function removeProduct(string memory productId) public {
        delete ProductsMapping[productId];
    }
    
    function updateProduct(string memory productId, string memory brand, string memory name, string memory Type, string memory orgId, string memory attributes) public {
        ProductsMapping[productId] = Product(brand, name, Type, orgId, attributes);
    }
    
    function addItems(string memory itemIds, uint256 scannedNos, string memory verificationUrls, string memory statuses, string memory soldTos, string memory soldLocations, string memory soldToUserIds) public {
        
    }   
    
    function removeItem(string memory itemId) public {
        delete ItemsMapping[itemId];
    }
    
    function updateItem(string memory itemId, uint256 scannedNo, string memory verificationUrl, string memory status, string memory soldTo, string memory soldLocation, string memory soldToUserId, string memory qrcode) public {
        ItemsMapping[itemId] = Item(scannedNo, verificationUrl, status, soldTo, soldLocation, soldToUserId, qrcode);
    }
    
    function captureEvent(string memory activity, string memory productId, string memory itemId) public {
        emit ItemEvent(activity, productId,itemId);
    }
}
