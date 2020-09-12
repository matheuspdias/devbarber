import React from 'react';
import styled from 'styled-components/native';
import { useNavigation } from '@react-navigation/native';

import ExpandIcon from '../assets/expand.svg';

const Modal = styled.Modal``;

const ModalArea = styled.View`
    flex: 1%;
    backgroundColor: rgba(0, 0, 0, 0.5);
    justifyContent: flex-end;
`;

const ModalBody = styled.View`
    backgroundColor: #83D6E3;
    borderTopLeftRadius: 20px;
    borderTopRightRadius: 20px;
    min-height: 300px;
    padding: 10px 20px 40px 20px;
`;

const CloseButton = styled.TouchableOpacity`
    width: 40px;
    height: 40px;
`;

const ModalItem = styled.View`
    backgroundColor: #FFF;
    borderRadius: 10px;
    marginBottom: 15px;
    padding: 10px;
`;

const UserInfo = styled.View`
    flexDirection: row;
    alignItems:center;
`;

const UserAvatar = styled.Image`
    width: 56px;
    height: 56px;
    borderRadius: 20px;
    marginRight: 15px;
`;

const UserName = styled.Text`
    fontSize: 18px;
    fontWeight: bold;
    color: #000;
`;

export default ({ show, setShow, user, service }) => {
    const navigation = useNavigation();

    const handleCloseButton = () => {
        setShow(false);
    }

    return (
        <Modal
            transparent={true}
            visible={show}
            animationType="slide"
        >
            <ModalArea>
                <ModalBody>
                    <CloseButton onPress={handleCloseButton}>
                        <ExpandIcon width="40" height="40" fill="#000" />
                    </CloseButton>

                    <ModalItem>
                        <UserInfo>
                            <UserAvatar source={{uri: user.avatar}} />
                            <UserName>{user.name}</UserName>
                        </UserInfo>
                    </ModalItem>
                </ModalBody>
            </ModalArea>
        </Modal>
    )
}