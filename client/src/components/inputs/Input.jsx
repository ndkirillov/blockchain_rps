import React from 'react';
import FormControl from '@mui/material/FormControl';
import OutlinedInput from '@mui/material/OutlinedInput';
import FormHelperText from '@mui/material/FormHelperText';
import { ButtonLogin } from '../buttons'
import { display, height } from '@mui/system';


const CheckInput = (e, type) => {
    if (type != "float") {
        const regexAddress = /^0x[a-fA-F0-9]{40}$/;
        let isOk = regexAddress.test(e.target.value);
        return (isOk ? e : "Invalid Address")
    }
    else {
        const regexBet = /(\d+(?:\.\d+)?)/;
        let isOk = regexBet.test(e.target.value);
        return (isOk ? e : "Invalid bet")
    }
}

const Input = ({ placeholder, type, helperText, login }) => {
    return (
        <div className="flex-initial justify-center items-center place-content-center cursor-pointer">
            <FormControl sx={{ width: '25ch' }}>
                {login && <ButtonLogin />}
                <OutlinedInput className="bg-white" placeholder={placeholder} onChange={(e) => CheckInput(e, type)} />
                <FormHelperText style={{ color: "white" }}>{helperText}</FormHelperText>
            </FormControl>
        </div >
    );
}

export default Input;