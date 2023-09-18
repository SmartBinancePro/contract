// SPDX-License-Identifier: Unlicensed
pragma solidity >=0.4.22 <0.9.0;
import "./Base.sol";
contract Smart_Binance_Pro is Context,Base{
    using SafeERC20 for IERC20;
    constructor(){
        R_S = _msgSender();
        SC = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
        SBT = 0xb02880953A3aa56C086491B05f42482f84D01313;
        OP = 0xF9B29B8853c98B68c19f53F5b39e69eF6eAF1e2c;
        NBJ = Smart_Binance(0x5741da6D2937E5896e68B1604E25972a4834C701);
        NBJ2 = M1(0xA602b50C0bb0fC9c578494Ed318F8Ce45A64037A);
        NBJ3 = M2(0x30eB6645Bc4961ECf3CEc06f9eAA7584B6Bd37a5);
        NBJ4 = M3(0xbdC8fcA68900ed4cDE7a2C15D809dcc4657d83B3);
        NBJ5 = M4(0x2448EC031C29275623976A2362C09c066A9849Dc);
        NBJ6 = M5(0x7af5d3472f0dc6a489f7b92056A9eA1E1402C643);
        NBJ7 = M6(0x748e3494E37e0F5BF116D520B7E6ACB86D77EF23);
        NBJ8 = M7(0x06C029497dbB75b56c0839f26fafF5623C8b2341);
        NBJ9 = M8(0x606Fe0Ae7672fd0C8D9c9c7aD52eFEAC1485A748);
        NBJ10 = M9(0x9E6cB8c45276C374449D25f3790fF8A1Ef373e69);
        NBJ11 = M10(0x83A18c238c3ED379CE50d623757c3A6d8529A654);
        NBJ12 = M11(0xE3e6d43c6FA6a551e2F5E7917733c8db8E42C4FF);
        NBJ13 = M12(0xF2019f5D556F85f13C86821907173C7e320DC31C);
        ZS = block.timestamp;}
    function Register(address Up) external {DC(Up);}
    function DC(address Up) private {
        require(KW[Up].XI != 2, " Upline Has 2 directs ");
        require(_msgSender() != Up, " Dont enter your address " );
        require(!DX(_msgSender()), " You Are registered ");
        require(DX(Up), " Upline is Not Exist ");
        SC.safeTransferFrom(_msgSender(), address(this), 100 * 10**18);
        VV[JK] = _msgSender(); JK++;
        Node memory user = Node({ id: JK, AL: 0, AR: 0, LT: 0, RT: 0, XI: 0, YY: KW[Up].XI == 0 ? false : true,
        UP: Up, PO: address(0), QO: address(0) });
        KW[_msgSender()] = user;  JJ[DZ] = _msgSender(); DZ++;
        if (KW[Up].XI == 0) {KW[Up].LT++; KW[Up].AL++; KW[Up].PO = _msgSender();} 
        else {KW[Up].RT++; KW[Up].AR++; KW[Up].QO = _msgSender();}
        KW[Up].XI++; IERC20(SBT).transfer(_msgSender(), 100 * 10**18);}
    function Reward_12_Report() external {DH();}
    function DH() private {require(LK == 0, " Proccesing ");
        require(block.timestamp > ZS + 12 hours, " Reward_12_Report Time Has Not Come ");
        ZB(); require(ZI() > 0, " Total Point Is 0 ");
        LK = 1; ZL = ZI(); JY = _msgSender();
        uint256 ZO = ZK(); ZM = ZO; uint256 D_T = (DZ * 10 ** 18 );
       for (uint24 i = 0; i < DJ; i++) { Node memory ZN = KW[JL[i]]; uint24 UT = ZH(JL[i]);
            if (ZN.LT == UT) {ZN.LT = 0; ZN.RT -= UT;} 
            else if (ZN.RT == UT) {ZN.LT -= UT; ZN.RT = 0;} 
            else { if (ZN.LT < ZN.RT) {ZN.RT -= ZN.LT; ZN.LT = 0;} 
            else {ZN.LT -= ZN.RT; ZN.RT = 0;}}  KW[JL[i]] = ZN;
            if (UT * ZO > SC.balanceOf(address(this))) 
            {SC.safeTransfer(JL[i], SC.balanceOf(address(this)));} 
            else {SC.safeTransfer(JL[i], UT * ZO);}}
        if (D_T <= SC.balanceOf(address(this))) {SC.safeTransfer(_msgSender(), D_T);}
        ZS = block.timestamp; DZ = 0; DJ = 0; DW = 0; DS = 0; LK = 0;}
    function ZB() private {address ZC; address ZD;
        for (uint256 k = 0; k < DZ; k++) {ZC = KW[KW[JJ[k]].UP] .UP; ZD = KW[JJ[k]].UP;
            if (ZE(ZD) == true) { JL[DJ] = ZD; DJ++; }
            while (ZC != address(0)) { if (KW[ZD].YY == false) { KW[ZC].LT++; KW[ZC].AL++;} 
            else { KW[ZC].RT++; KW[ZC].AR++;} 
            if (ZE(ZC) == true) { JL[DJ] = ZC; DJ++;} ZD = ZC; ZC = KW[ZC].UP;}}}
    function Smart_Gift(uint8 YourNumber) external {
        require(LK == 0, "Proccesing");
        require(YourNumber < 6 && YourNumber > 0, " Just : 1,2,3,4,5 " );
        require(DX(_msgSender()), " User is Not Exist ");
        require(User_All_Time_Point(_msgSender()) < 1, " Just All Time 0 Point ");
        require(Just_Gift_Balance() > 0, " Smart_Gift Balance Is 0 ");
        require(ZF(_msgSender()), " You Did Smart_Gift Today ");
        JO[DW] = _msgSender(); DW++; if (YourNumber == random(4)) {SC.safeTransfer(_msgSender(), 10 * 10**18); LM[DS] = _msgSender(); DS++; JP++;}}
    function _Import_Fast() external {address[] memory ZA1;
        if(CI == 0){ZA1 = NBJ2.GA();CI++;
        }else if(CI == 1){ZA1 = NBJ3.GA();CI++;
        }else if(CI == 2){ZA1 = NBJ4.GA();CI++;
        }else if(CI == 3){ZA1 = NBJ5.GA();CI++;
        }else if(CI == 4){ZA1 = NBJ6.GA();CI++;
        }else if(CI == 5){ZA1 = NBJ7.GA();CI++;
        }else if(CI == 6){ZA1 = NBJ8.GA();CI++;
        }else if(CI == 7){ZA1 = NBJ9.GA();CI++;
        }else if(CI == 8){ZA1 = NBJ10.GA();CI++;
        }else if(CI == 9){ZA1 = NBJ11.GA();CI++;
        }else if(CI == 10){ZA1 = NBJ12.GA();CI++;
        }else if(CI == 11){ZA1 = NBJ13.GA();}
    for(uint256 i = 0; i < ZA1.length; i++){address User = ZA1[i];
            if(DX(User) == true){continue;} VV[JK] = User; JK++; Node memory user = Node({ id: JK,
                AL: uint32(NBJ.User_Info(User).LD),
                AR: uint32(NBJ.User_Info(User).RD),
                LT: uint24(NBJ.User_Info(User).LD),
                RT: uint24(NBJ.User_Info(User).RD),
                XI: uint8(NBJ.User_Info(User).CH),
                YY: NBJ.User_Info(User).OR == 0 ? false : true,
                UP: NBJ.User_Info(User).UPA,
                PO: NBJ.User_Info(User).LDA,
                QO: NBJ.User_Info(User).RDA });
            KW[User] = user; IERC20(SBT).transfer(User, 100 * 10**18); }}
    function Smart_Import(address User) external {
        require(NBJ.User_Info(User).UPA != address(0), " You were not in Smart Binance " );
        require(!DX(User), " You were Imported ");
        require(ZG(User), " You were Uploaded ");
        VV[JK] = User; JK++; Node memory user = Node({ id: JK,
            AL: uint32(NBJ.User_Info(User).LD),
            AR: uint32(NBJ.User_Info(User).RD),
            LT: uint24(NBJ.User_Info(User).LD),
            RT: uint24(NBJ.User_Info(User).RD),
            XI: uint8(NBJ.User_Info(User).CH),
            YY: NBJ.User_Info(User).OR == 0 ? false : true,
            UP: NBJ.User_Info(User).UPA,
            PO: NBJ.User_Info(User).LDA,
            QO: NBJ.User_Info(User).RDA });
        KW[User] = user; IERC20(SBT).transfer(User, 100 * 10**18);}
    function _Upload (address OW, address User, uint32 AL, uint32 AR, uint24 L, uint24 R, uint8 C, bool LR, address UA, address LA, address RA ) external {
        require(_msgSender() == OP , " Just Operator ");
        require(DF <= 99, " Upload is over "); VV[JK] = User; JK++;
        Node memory user = Node({ id: JK, AL: AL, AR: AR, LT: L, RT: R, XI: C, YY: LR,
        UP: UA, PO: LA, QO: RA }); KW[User] = user; UM[DF] = OW; DF++; IERC20(SBT).transfer(User, 100 * 10**18);}
 function Smart_Token() external { require(EE[_msgSender()] < 5 , " Your 5 Times Are Over ");
    uint32 K = User_All_Time_Point(_msgSender());
    if(K >= 10 && K < 30) {IERC20(SBT).transfer(_msgSender(), 100 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 30 && K < 100) {IERC20(SBT).transfer(_msgSender(), 300 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 100 && K < 300) {IERC20(SBT).transfer(_msgSender(), 1000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 300 && K < 1000) {IERC20(SBT).transfer(_msgSender(), 3000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 1000 && K < 3000) {IERC20(SBT).transfer(_msgSender(), 10000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 3000 && K < 10000) {IERC20(SBT).transfer(_msgSender(), 30000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 10000 && K < 30000) {IERC20(SBT).transfer(_msgSender(), 100000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 30000 && K < 100000) {IERC20(SBT).transfer(_msgSender(), 300000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 100000 && K < 300000) {IERC20(SBT).transfer(_msgSender(), 1000000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 300000 && K < 1000000) {IERC20(SBT).transfer(_msgSender(), 3000000 * 10**18); EE[_msgSender()]++;} else 
    if(K >= 1000000)                 {IERC20(SBT).transfer(_msgSender(), 10000000 * 10**18); EE[_msgSender()]++;}}
    function _Emergency_72() external {
        require(_msgSender() == OP , " Just Operator ");
        require(block.timestamp > ZS + 72 hours, " Emergency_72 Time Has Not Come ");
        SC.safeTransfer(R_S, SC.balanceOf(address(this))); ZS = block.timestamp; DZ = 0; DJ = 0; DW = 0; DS = 0;}
    function ZK() private view returns (uint256) {return (ZJ() * 10**18) / ZI();}
    function random(uint256 number) private view returns (uint256) {return (uint256 (keccak256( abi.encodePacked(block.timestamp, block.prevrandao, msg.sender ) ) ) % number) + 1;}
    function ZJ() private view returns (uint256) {return (SC.balanceOf(address(this)) - (DZ * 10**18)) / 10**18;}
    function DX(address A) private view returns (bool) {return (KW[A].id != 0);}
    function ZE(address A) private view returns (bool) { if (ZH(A) > 0) { for (uint24 i = 0; i < DJ; i++) { if (JL[i] == A) {return false;}} return true;} else {return false;}}
    function ZF(address A) private view returns (bool) { for (uint24 i = 0; i < DW; i++) { if (JO[i] == A) {return false;}} return true;}
    function ZG(address A) private view returns (bool) { for (uint8 i = 0; i < DF; i++) { if (UM[i] == A) {return false;}} return true;}
    function unsafe_inc(uint24 x) private pure returns (uint24) {unchecked {return x + 1;}}
    function ZH(address A) private view returns (uint24) {uint24 min = KW[A].LT <= KW[A].RT ? KW[A].LT : KW[A].RT; if (min > 25) {return 25;} else {return min;}}
    function ZI() private view returns (uint24) {uint24 AA; for (uint24 i = 0; i <= JK; i = unsafe_inc(i)) {uint24 min = KW[VV[i]].LT <= KW[VV[i]].RT ? KW[VV[i]].LT : KW[VV[i]].RT; if (min > 25) {min = 25;} AA += min;} return AA;}
    function _SBT() public view returns (address) {return SBT;}
    function _Old_Point (address U, uint16 V) external {require(_msgSender() == OP , " Just Operator "); KW[U].AL += V; KW[U].AR += V;}
    function _S_Coin(address S) external {require(_msgSender() == OP , " Just Operator "); SC = IERC20(S);}
    function _Write_Note(string memory N) public {require(_msgSender() == OP , " Just operator "); Note = N;}
    function _Read_Note() public view returns (string memory) {return Note;}
    function _Write_IPFS(string memory I) public {require(_msgSender() == OP , " Just operator "); IPFS = I;}
    function _Read_IPFS() public view returns (string memory) {return IPFS;}
    function All_Register() public view returns (uint32) {return JK;}
    function All_Contract_Payment() public view returns (uint32) {return JK * 100 ;}
    function All_Gift_Winner() public view returns (uint32) {return JP;}
    function All_Reward_12_Payment () public view returns (uint32) {return All_Contract_Payment() - All_Gift_Winner() ;}
    function All_User_Address() public view returns (address[] memory) {address[] memory ret = new address[](JK); for (uint32 i = 0; i < JK; i++) {ret[i] = VV[i]; } return ret;}
    function Last_Value_Point() public view returns (uint256) {return ZM / 10**18; }
    function Last_Reward_12_Writer() public view returns(address) {return JY;}
    function Last_Total_Point() public view returns (uint24) {return ZL;}
    function Just_Contract_Balance() public view returns (uint256) {return SC.balanceOf(address(this)) / 10**18;}
    function Just_Reward_12_Balance() public view returns (uint256) {return (DZ * 90);}
    function Just_Gift_Balance() public view returns (uint256) {return (Just_Contract_Balance() - (DZ * 90));}
    function Today_Contract_InPut() public view returns (uint256) {return (DZ * 100);}
    function Today_Register_Address() public view returns (address[] memory) {address[] memory ret = new address[](DZ); for (uint24 i = 0; i < DZ; i++) {ret[i] = JJ[i];} return ret;}
    function Today_Gift_Candida_Address() public view returns (address[] memory) {address[] memory ret = new address[](DW); for (uint24 i = 0; i < DW; i++) {ret[i] = JO[i];} return ret;}
    function Today_Reward_12_Writer() public view returns (uint256) {return DZ;}
    function Today_Gift_Winner_Address() public view returns(address[] memory) {address[] memory ret = new address[](DS); for (uint16 i = 0; i < DS; i++) {ret[i] = LM[i];} return ret;}
    function Today_Register_Number() public view returns (uint256) {return DZ; }
    function User_Upline(address User) public view returns (address) {return KW[User].UP;}
    function User_Directs(address User) public view returns (address, address) {return (KW[User].PO, KW[User].QO );}
    function User_All_Time_Left_Right (address User) public view returns (uint32, uint32) {return (KW[User].AL, KW[User].AR);}
    function User_All_Time_Point(address User) public view returns (uint32) {return KW[User].AL <= KW[User].AR ? KW[User].AL : KW[User].AR; }
    function User_Info(address User) public view returns (Node memory) {return KW[User];}}
