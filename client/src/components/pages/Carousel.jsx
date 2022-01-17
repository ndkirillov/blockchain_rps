import { ButtonArrowBkw, ButtonArrowFrw } from "../buttons";
import SwipeableViews from "react-swipeable-views";
import { virtualize, bindKeyboard } from "react-swipeable-views-utils";
import flowRight from 'lodash/flowRight';

import rockImg from '../../../images/rock.svg';
import paperImg from '../../../images/paper.svg';
import sciImg from '../../../images/scissors.svg';

const data = [
    {
        title: "Rock",
        pic: rockImg
    },
    {
        title: "Paper",
        pic: paperImg
    },
    {
        title: "Scissors",
        pic: sciImg
    }
];

const EnhancedSwipeableViews = flowRight(bindKeyboard, virtualize)(SwipeableViews);

const SwiperCarousel = () => {
    const slideRenderer = ({ key, index }) => {
        const dataIndex = Math.abs(
            index - data.length * Math.floor(index / data.length)
        );
        return (
            <>
                <div className="flex justify-center items-center" key={key}>
                    <img className="w-48" src={data[dataIndex].pic} />
                </div>
                <div className="flex justify-center items-center">
                    {`${data[dataIndex].title}`}
                </div>
            </>
        )
    };
    return (
        <>
            <ButtonArrowBkw />
            <div className="flex bg-white rounded-full justify-center items-center w-72 h-72">
                <EnhancedSwipeableViews
                    slideRenderer={slideRenderer}
                    enableMouseEvents />
            </div>
            <ButtonArrowFrw />
        </>
    );
};

export default SwiperCarousel;