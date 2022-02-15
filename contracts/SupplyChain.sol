pragma solidity ^0.6.8;

contract SupplyChain{
    
    struct Supplier{
        string SupplierName;
        uint256 InvoiceDate;
        int InvoiceNumber;
        string EwayBillNumber;
        }

    struct Product {
        string material;
        int quantity;
        int rate;
        int amount;
    }

    struct Transport {
        string VehicleNumber;
        string TransportBillNumber;
    }

    struct Receiver{
        string ReceiverName;
        string RecieverAddress;
        int FormNumber;
        int quantityDes;
        uint ReceiveDate;
        uint ProcessDate;
        int CertificateNumber;
        }

    Supplier []supply;
    Product []product;
    Transport []transport;
    Receiver []receives;


    function addSupplier(string memory SupplierName, uint256 InvoiceDate, int InvoiceNumber, string memory EwayBillNumber)
    public {

        Supplier memory s = Supplier (SupplierName, InvoiceDate, InvoiceNumber, EwayBillNumber);
        supply.push (s);

    }

    function addProduct(string memory material, int quantity, int rate, int amount) public {
        Product memory p = Product (material, quantity, rate, amount);
        product.push (p); 

    }

    function addTransport( string memory VehicleNumber, string memory TransportBillNumber) public {
        Transport memory t = Transport (VehicleNumber, TransportBillNumber);
        transport.push (t);

    }

    function addReceiver( string memory ReceiverName, string memory RecieverAddress, int FormNumberint, int quantityDes, 
    uint ReceiveDate, uint ProcessDate, int CertificateNumber) public {

    }
   

	
// Function to get Supplier details

        function getSupplier(int InvoiceNumber) public view returns(string memory, uint, int, string memory){
        uint i;
	    for(i=0; i<supply.length; i++){
            Supplier memory s = supply[i];
            
            if(s.InvoiceNumber == InvoiceNumber) {
                return( s.SupplierName ,s.InvoiceDate, s.InvoiceNumber, s.EwayBillNumber);
		}
	}
	
}
}