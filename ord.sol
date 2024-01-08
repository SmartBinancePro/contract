// SPDX-License-Identifier: Unlicensed
pragma solidity >=0.4.22 <0.9.0;

import "./DNA_flattened.sol";


contract Ord is Context, DNA{
    
    using SafeERC20 for IERC20;
    function Set_Reward_Click_Fee(uint8 rate) external {
        require(_msgSender() == OP, "Just Operator");
        require(rate <= 5 && rate > 0, "Just 1-5");
        Reward_Click_Fee = rate * Register_Id;
    }

    function Dont_Change_My_Address() external {
        require(
            Is_User_Exist(_msgSender()),
            "You Are Not In Smart Binance Pro"
        );
        require(_IS_USER_NotChange_LIST(_msgSender()), "You Did Before");
        Dont_Change_List[_Dont_Change_Id] = _msgSender();
        _Dont_Change_Id++;
    }

    function Change_My_Address(address New_add) external {
        require(_LOCK == false, "Proccesing");
        require(
            New_add != address(0),
            "Dont ENTER address 0"
        );
        require(
            Is_User_Exist(_msgSender()),
            "You Are Not In Smart Binance Pro"
        );
        require(
            !Is_User_Exist(New_add),
            "New Address Is In Smart Binance Pro!"
        );
        require(
            _IS_USER_NotChange_LIST(_msgSender()),
            "Your Address Is In : Dont_Change_My_Address!"
        );
        _LOCK = true;
        Node memory user = _Users[_msgSender()];
        All_User_Address[user.id] = New_add;
        Node memory Lch = _Users[user.Left_Address];
        Lch.UP = New_add;
        _Users[user.Left_Address] = Lch;
        Node memory Rch = _Users[user.Right_Address];
        Rch.UP = New_add;
        _Users[user.Right_Address] = Rch;
        Node memory Upmsg = _Users[user.UP];
        if (user.L_or_R == false) {
            Upmsg.Left_Address = New_add;
        } else {
            Upmsg.Right_Address = New_add;
        }
        _Users[user.UP] = Upmsg;
        _Users[New_add] = user;
        Today_Gift_address[_Gift_Id] = New_add;
        _Gift_Id++;
        delete _Users[_msgSender()];
        _LOCK = false;
    }

    function Buy_Over_From_Owner() public {
        require(_LOCK == false, "Proccesing");
        require(Offer_Get[_Users[_msgSender()].id] <= 1, "Just 1 Times");
        require(
            Is_User_Exist(_msgSender()),
            "You Are Not In Smart Binance Pro"
        );
        require(User_All_Time_Point(_msgSender()) >= 3, "Just Point 3");
        require(Big_Side(_msgSender()) > 5, "Just Point 3");
        // if (
        //     _IS_USER_GetScore_EXIST(_Users[_Users[_msgSender()].UP].UP) == false
        // ) {
        //     require(
        //         _Users[_Users[_Users[_msgSender()].UP].UP].All_Right > 3,
        //         "Just Point 0"
        //     );
        // }
        require(
            Tether.balanceOf(_msgSender()) >= (30 * 10**18),
            "You dont have enough Tether!"
        );
        _LOCK = true;
        Tether.safeTransferFrom(_msgSender(), Trustee, 30 * 10**18);
        if (_Users[OWNER]._Left > 3) {
            _Users[OWNER]._Left -= 3;
            _Users[OWNER].All_Left -= 3;
        } else if (_Users[_Users[OWNER].Left_Address]._Left > 3) {
            _Users[_Users[OWNER].Left_Address]._Left -= 3;
            _Users[_Users[OWNER].Left_Address].All_Left -= 3;
        } else if (
            _Users[_Users[_Users[OWNER].Left_Address].Left_Address]._Left > 3
        ) {
            _Users[_Users[_Users[OWNER].Left_Address].Left_Address]._Left -= 3;
            _Users[_Users[_Users[OWNER].Left_Address].Left_Address]
                .All_Left -= 3;
        } 
        if( _Users[_msgSender()]._Left > _Users[_msgSender()]._Right){
            _Users[_msgSender()]._Left += 3;
            _Users[_msgSender()].All_Left += 3;
        }else{
            _Users[_msgSender()]._Right += 3;
            _Users[_msgSender()].All_Right += 3;
        }
        Offer_Get[_Users[_msgSender()].id]++;
        _LOCK = false;
        // Score_Get_List[_Score_Get_Id] = _msgSender();
        // _Score_Get_Id++;
    }

    function _Upload(
        address OW,
        address User,
        uint32 AL,
        uint32 AR,
        uint24 L,
        uint24 R,
        uint24 D,
        uint8 C,
        bool LR,
        address UA,
        address LA,
        address RA
    ) external {
        // require(_msgSender()==OP,"Just Operator");
        // require(Stop_Upload==false,"Upload Is Over");
        require(_IS_USER_BLACK_LIST(User), "You were Uploaded");
        All_User_Address[_User_Id] = User;
        _User_Id++;
        Node memory user = Node({
            id: _User_Id,
            All_Left: AL,
            All_Right: AR,
            _Left: L,
            _Right: R,
            depth: D,
            CHILDS: C,
            Won: 0,
            L_or_R: LR,
            UP: UA,
            Left_Address: LA,
            Right_Address: RA
        });
        _Users[User] = user;
        Black_List_Adress[_COUNT] = OW;
        _COUNT++;
    }

    function _Set_Address() external {
        // require(_msgSender() == OP, "Just Operator");
        address[] memory ZA1;
        choice_S++;
        if(choice_S == 1){
            ZA1 = co1.GA();
        } else if(choice_S == 2){
            // ZA1 = co2.GA();
        } else if(choice_S == 3){
            // ZA1 = co3.GA();
        } else if(choice_S == 4){
            // ZA1 = co4.GA();
        } else if(choice_S == 5){
            // ZA1 = co5.GA();
        } else if(choice_S == 6){
            // ZA1 = co6.GA();
        } else if(choice_S == 7){
            // ZA1 = co7.GA();
        } else if(choice_S == 8){
            // ZA1 = co8.GA();
        } else if(choice_S == 9){
            // ZA1 = co9.GA();
        } else if(choice_S == 10){
            // ZA1 = co10.GA();
        } else if(choice_S == 11){
            // ZA1 = co11.GA();
        } else if(choice_S == 12){
            // ZA1 = co12.GA();
        } else if(choice_S == 13){
            // ZA1 = co13.GA();
        } else if(choice_S == 14){
            // ZA1 = co14.GA();
        } else if(choice_S == 15){
            // ZA1 = co15.GA();
        } else if(choice_S == 16){
            // ZA1 = co16.GA();
        }
        for(uint32 i = 0; i < ZA1.length; i++){
            All_User_Address[i] = ZA1[i];
        }
    }

    function _Import_Fast(uint24 start, uint24 end) external {

        for (uint24 i=start; i <= end; i++) 
        {
             address User = All_User_Address[i];
             if (Is_User_Exist(User) == true || _IS_USER_BLACK_LIST(User) == false) {
                continue;
            }
            _User_Id++;
            Node memory user = Node({
                id: _User_Id,
                All_Left: uint32(NBJ.User_Info(User).AL),
                All_Right: uint32(NBJ.User_Info(User).AR),
                _Left: uint24(NBJ.User_Info(User).LT),
                _Right: uint24(NBJ.User_Info(User).RT),
                depth: 0,
                CHILDS: uint8(NBJ.User_Info(User).XI),
                Won: 0,
                L_or_R: NBJ.User_Info(User).YY,
                UP: NBJ.User_Info(User).UP,
                Left_Address: NBJ.User_Info(User).PO,
                Right_Address: NBJ.User_Info(User).QO
            });
            _Users[User] = user;
        }
        Stop_Upload = true;
    }

    function Smart_Import(address User) external {
        require(
            NBJ.User_Info(User).UP != address(0),
            " You were not in Smart Binance "
        );
        require(
            Is_User_Exist(NBJ.User_Info(User).UP),
            " First, You Uploaded Father "
        );
        require(!Is_User_Exist(User), " You were Imported ");
        require(_IS_USER_BLACK_LIST(User), " You were Uploaded ");
        All_User_Address[_User_Id] = User;
        _User_Id++;
        Node memory user = Node({
            id: _User_Id,
            All_Left: uint32(NBJ.User_Info(User).AL),
            All_Right: uint32(NBJ.User_Info(User).AR),
            _Left: uint24(NBJ.User_Info(User).LT),
            _Right: uint24(NBJ.User_Info(User).RT),
            depth: uint24(_Users[NBJ.User_Info(User).UP].depth++),
            CHILDS: uint8(NBJ.User_Info(User).XI),
            Won: 0,
            L_or_R: NBJ.User_Info(User).YY,
            UP: NBJ.User_Info(User).UP,
            Left_Address: NBJ.User_Info(User).PO,
            Right_Address: NBJ.User_Info(User).QO
        });
        _Users[User] = user;
    }

    function Smart_Get_Token() external {
        require(
            Is_User_Exist(_msgSender()),
            "You Are Not In Smart Binance Pro"
        );
        require(Token_Get[_Users[_msgSender()].id] < 5, "Just 5 Times");
        uint32 K = User_All_Time_Point(_msgSender());
        if (K >= 0 && K < 10) {
            IERC20(SBT).transfer(_msgSender(), 100 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 100 && K < 300) {
            IERC20(SBT).transfer(_msgSender(), 100 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 300 && K < 1000) {
            IERC20(SBT).transfer(_msgSender(), 300 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 1000 && K < 3000) {
            IERC20(SBT).transfer(_msgSender(), 1000 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 3000 && K < 10000) {
            IERC20(SBT).transfer(_msgSender(), 3000 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 10000 && K < 30000) {
            IERC20(SBT).transfer(_msgSender(), 10000 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 30000 && K < 100000) {
            IERC20(SBT).transfer(_msgSender(), 30000 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        } else if (K >= 100000) {
            IERC20(SBT).transfer(_msgSender(), 100000 * 10**18);
            Token_Get[_Users[_msgSender()].id]++;
        }
    }

    function _Emergency_7_Days() external {
        // require(block.timestamp>_TIME_STAMP+168 hours,"Emergency_7_Days Time Has Not Come");
        uint256 P = 90 * 10**18;
        for (uint24 i = 0; i < Register_Id; i++) {
            if (P <= Tether.balanceOf(address(this))) {
                Tether.safeTransfer(Today_Registre_address[i], P);
            }
        }
        Tether.safeTransferFrom(
            address(this),
            Trustee,
            Tether.balanceOf(address(this))
        );
        _TIME_STAMP = block.timestamp;
        Register_Id = 0;
        _Point_Id = 0;
        _Gift_Id = 0;
        _WIN_Gift_Id = 0;
    }

    function Value_Point() internal view returns (uint256) {
        return (Today_Register_Number() * 90 * 10**18) / _TOTAL_POINT();
    }

    function random(uint256 number) internal view returns (uint256) {
        return
            (uint256(
                keccak256(
                    abi.encodePacked(
                        block.timestamp,
                        block.prevrandao,
                        msg.sender
                    )
                )
            ) % number) + 1;
    }

    function Is_User_Exist(address A) internal view returns (bool) {
        return (_Users[A].id != 0);
    }

    function User_Exist(address A) public view returns (string memory) {
        bool test = false;
        if (_Users[A].id != 0) {
            test = true;
        }
        if (test) {
            return "YES!";
        } else {
            return "NO!";
        }
    }

    function _IS_USER_PIONT_EXIST(address A) internal view returns (bool) {
        if (_TDY_USER_POINT(A) > 0) {
            for (uint24 i = 0; i < _Point_Id; i++) {
                if (Today_Point_address[i] == A) {
                    return false;
                }
            }
            return true;
        } else {
            return false;
        }
    }

    function _IS_USER_GIFT_EXIST(address A) internal view returns (bool) {
        for (uint24 i = 0; i < _Gift_Id; i++) {
            if (Today_Gift_address[i] == A) {
                return false;
            }
        }
        return true;
    }

    function _IS_Hakam_EXIST(address A) internal view returns (uint24) {
        for (uint24 i = 0; i < _Hakam_Id; i++) {
            if (Hakam_List[i].hakam_address == A) {
                return i;
            }
        }
        return 2**23;
    }

    function _IS_USER_BLACK_LIST(address A) internal view returns (bool) {
        for (uint8 i = 0; i < _COUNT; i++) {
            if (Black_List_Adress[i] == A) {
                return false;
            }
        }
        return true;
    }

    function _IS_USER_NotChange_LIST(address A) internal view returns (bool) {
        for (uint8 i = 0; i < _Dont_Change_Id; i++) {
            if (Dont_Change_List[i] == A) {
                return false;
            }
        }
        return true;
    }

    function unsafe_inc(uint24 x) internal pure returns (uint24) {
        unchecked {
            return x + 1;
        }
    }

    function unsafe_inc2(uint256 x) internal pure returns (uint256) {
        unchecked {
            return x + 1;
        }
    }

    function _TDY_USER_POINT(address A) internal view returns (uint24) {
        uint24 min = _Users[A]._Left <= _Users[A]._Right
            ? _Users[A]._Left
            : _Users[A]._Right;
        if (min > 15) {
            return 15;
        } else {
            return min;
        }
    }

    function _TOTAL_POINT() internal view returns (uint24) {
        uint24 _T_POINT;
        for (uint24 i = 0; i < _Point_Id; i++) {
            _T_POINT += _TDY_USER_POINT(Today_Point_address[i]);
        }
        return _T_POINT;
    }

    function Is_My_Team(address Father, address DownLine)
        external view
        returns (string memory)
    {
        address Up_Node = _Users[DownLine].UP;
        address CH_Mdle = DownLine;
        bool temp = false;
        while (Up_Node != address(0)) {
            if (Up_Node == Father) {
                temp = true;
                break;
            }
            CH_Mdle = Up_Node;
            Up_Node = _Users[Up_Node].UP;
        }
        if (temp) {
            return "YES!";
        } else {
            return "NO!";
        }
    }


    function Add_Depth_Lose(address add) external {
        require(_msgSender() == OP, "Just Operator");
        _Users[add].depth = Calculate_depth(add);
    }

    function Add_Depth(uint24 start, uint24 end) external {
        address temp;
        uint24 depth;
        for (uint24 i = start; i <= end; i++) {
            temp = All_User_Address[i];
            depth = Calculate_depth(temp);
            _Users[temp].depth = depth;
        }
    }

    function Calculate_depth(address add) internal returns (uint24) {
        address Up_Node = _Users[add].UP;
        address CH_Mdle = add;
        uint24 depth;
        while (Up_Node != address(0)) {
            if(Is_User_Exist(Up_Node)==false){
                No_Body_List[_No_Body_Id] = CH_Mdle;
                _No_Body_Id++;
                break;
            }
            depth++;
            CH_Mdle = Up_Node;
            Up_Node = _Users[Up_Node].UP;
        }

        return depth;
    }

    function Calculate_MinDepth() internal view returns (uint24) {
        uint24 min = _Users[Today_Registre_address[0]].depth;
        uint24 temp;
        for (uint24 i = 0; i < Register_Id; i++) {
            if (min > _Users[Today_Registre_address[i]].depth) {
                min = temp;
            }
        }
        return min;
    }

    function _Empty_Extra_Token(address token) external {
        require(_msgSender() == OP, "Just Operator");
        require(IERC20(token) != Tether, "Just Operator");
        require(IERC20(token) != IERC20(SBT), "Just Operator");
        IERC20(token).safeTransfer(
            _msgSender(),
            IERC20(token).balanceOf(address(this))
        );
    }

    function _Set_S_Coin(uint8 value) external {
        require(_msgSender() == OP, "Just Operator");
        require(value >= 0 && value < 3, "Just Operator");
        address[3] memory Coins = [
            0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d, // USDC
            0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3, // DAI
            0x40af3827F39D0EAcBF4A168f8D4ee67c121D11c9 // TUSD
        ];
        Tether = IERC20(Coins[value]);
    }

    function Set_Smart_Bank_Address(address con) external {
        require(_msgSender() == OP, "Just Operator");
        require(change_bank == false, "Just Operator");
        Trustee = con;
        change_bank = true;
    }

    function Lose_Import() external view returns (address[] memory) {
        address[] memory ret = new address[](_No_Body_Id);
        for (uint16 i = 0; i < _No_Body_Id; i++) {
            ret[i] = No_Body_List[i];
        }
        return ret;
    }

    function Smart_Bank_Address() external returns (address) {
        return Trustee;
    }


}
