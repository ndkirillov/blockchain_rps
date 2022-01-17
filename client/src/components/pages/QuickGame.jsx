import { ButtonPlay } from '../buttons'
import { Input } from '../inputs'
import { SwiperCarousel } from '.'

const QuickGame = () => {

    return (
        <>
            <div className="flex w-full justify-center items-center p-8 space-x-5">
                <SwiperCarousel />
            </div>
            <div className="flex w-full justify-center items-center p-8 space-x-5">
                <Input placeholder="Your ETH Account" helperText="Should start with 0x" login="true" />
                <Input placeholder="Opponent ETH Account" helperText="Should start with 0x" />
                <Input placeholder="Your Bet" type="float" helperText="Should be a number" />
            </div>
            <div className="flex w-full justify-center items-center p-8 space-x-5">
                <ButtonPlay />
            </div>
        </>
    );
}

export default QuickGame;