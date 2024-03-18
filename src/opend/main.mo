import Principal "mo:base/Principal";
import NFTActorClass "../NFT/nft";
import Cycles "mo:base/ExperimentalCycles";
import Debug "mo:base/Debug";

actor OpenD {

    public shared(msg) func mint(imgData:[Nat8],name: Text): async Principal{
        let owner: Principal = msg.caller;

        Debug.print(debug_show(Cycles.balance()));

        Cycles.add(100_500_000_00);

        let newNFT = await NFTActorClass.NFT(name,owner,imgData);
        
        Debug.print(debug_show(Cycles.balance()));

        let newNFTPrinciapal = await newNFT.getCanisterId();


        return newNFTPrinciapal;
    };
 
};
