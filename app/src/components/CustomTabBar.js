import React, { useContext } from 'react'
import styles from 'styled-components/native';

import { UserContext } from '../contexts/UserContext';

import HomeIcon from '../assets/home.svg';
import SearchIcon from '../assets/search.svg';
import TodayIcon from '../assets/today.svg';
import FavoriteIcon from '../assets/favorite.svg';
import AccountIcon from '../assets/account.svg';


const TabArea = styles.View`
    height: 60px;
    backgroundColor: #4EADBE;
    flexDirection: row;
`;

const TabItem = styles.TouchableOpacity`
    flex: 1;
    justifyContent: center;
    alignItems: center;
`;
const TabItemCenter = styles.TouchableOpacity`
    width: 70px;
    height: 70px;
    justifyContent: center;
    alignItems: center;
    backgroundColor: #FFF;
    borderRadius: 35px;
    border: 3px solid #4EADBE;
    marginTop: -20px;
`;
const AvatarIcon = styles.Image`
    width: 24px;
    height: 24px;
    borderRadius: 12px;
`;

export default ({ state, navigation }) => {
    const { state:user } = useContext(UserContext);

    const goTo = (screenName) => {
        navigation.navigate(screenName);
    }

    return (
        <TabArea>
            <TabItem onPress={()=>goTo('Home')}>
                <HomeIcon style={{opacity: state.index===0? 1 : 0.5}} width="24" height="24" fill="#FFF" />
            </TabItem>
            <TabItem onPress={()=>goTo('Search')}>
                <SearchIcon style={{opacity: state.index===1? 1 : 0.5}} width="24" height="24" fill="#FFF" />
            </TabItem>
            <TabItemCenter onPress={()=>goTo('Appointments')}>
                <TodayIcon width="32" height="32" fill="#4EADBE" />
            </TabItemCenter>
            <TabItem onPress={()=>goTo('Favorites')}>
                <FavoriteIcon style={{opacity: state.index===3? 1 : 0.5}} width="24" height="24" fill="#FFF" />
            </TabItem>
            <TabItem onPress={()=>goTo('Profile')}>
                {user.avatar != '' ?
                    <AvatarIcon source={{uri: user.avatar}} />
                    :
                    <AccountIcon style={{opacity: state.index===4? 1 : 0.5}} width="24" height="24" fill="#FFF" />
                }
                
            </TabItem>
        </TabArea>
    );
}
