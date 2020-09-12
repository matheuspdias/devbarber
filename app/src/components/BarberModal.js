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

const ServiceInfo = styled.View`
    flexDirection: row;
    justifyContent: space-between;
`;

const ServiceName = styled.Text`
    fontSize: 16px;
    fontWeight: bold;
`;

const ServicePrice = styled.Text`
    fontSize: 16px;
    fontWeight: bold;
`;

const FinishButton = styled.TouchableOpacity`
    backgroundColor: #268596;
    height: 60px;
    justifyContent: center;
    alignItems: center;
    borderRadius: 10px;
`;

const FinishButtonText = styled.Text`
    color: #FFF;
    fontSize: 17px;
    fontWeight: bold;
`;

export default ({ show, setShow, user, service }) => {
    const navigation = useNavigation();

    const handleCloseButton = () => {
        setShow(false);
    }

    const handleFinishClick = () => {

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
                    
                    {service != null &&
                        <ModalItem>
                            <ServiceInfo>
                                <ServiceName>{user.services[service].name}</ServiceName>
                                <ServicePrice>R$ {user.services[service].price.toFixed(2)}</ServicePrice>
                            </ServiceInfo>
                        </ModalItem>
                    }

                    <FinishButton onPress={handleFinishClick}>
                        <FinishButtonText>Finalizar Agendamento</FinishButtonText>
                    </FinishButton>

                </ModalBody>
            </ModalArea>
        </Modal>
    )
}