import React, { useState, useEffect } from 'react';
import styled from 'styled-components/native';
import { useNavigation } from '@react-navigation/native';

import Api from '../Api';

import ExpandIcon from '../assets/expand.svg';
import NavPrevIcon from '../assets/nav_prev.svg'
import NavNextIcon from '../assets/nav_next.svg'

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

const DateInfo = styled.View`
    flexDirection: row;
`

const DatePrevArea = styled.TouchableOpacity`
    flex: 1;
    justifyContent: flex-end;
    alignItems: flex-end;
`;

const DateTitleArea = styled.View`
    width: 140px;
    justifyContent: center;
    alignItems: center;
`;

const DateTitle = styled.Text`
    fontSize: 17px;
    fontWeight: bold;
    color: #000;
`;

const DateNextArea = styled.TouchableOpacity`
    flex: 1;
    alignItems: flex-start;
`;

const DateList = styled.ScrollView``;

const DateItem = styled.TouchableOpacity`
    width: 45px;
    justifyContent: center;
    alignItems: center;
    borderRadius: 10px;
    paddingTop: 5px;
    paddingBottom: 5px;
`;

const DateItemWeekDay = styled.Text`
    fontSize: 16px;
    fontWeight: bold;
`;

const DateItemNumber = styled.Text`
    fontSize: 16px;
    fontWeight: bold;
`;

const TimeList = styled.ScrollView``;

const TimeItem = styled.TouchableOpacity`
    width: 75px;
    height: 40px;
    justifyContent: center;
    alignItems: center;
    borderRadius: 10px;
`;

const TimeItemText = styled.Text`
    fontSize:16px;
`;

const months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
];

const days = [
    'Dom',
    'Seg',
    'Ter',
    'Qua',
    'Qui',
    'Sex',
    'Sab'
];

export default ({ show, setShow, user, service }) => {
    const navigation = useNavigation();

    const [selectedYear, setSelectedYear] = useState(0);
    const [selectedMonth, setSelectedMonth] = useState(0);
    const [selectedDay, setSelectedDay] = useState(0);
    const [selectedHour, setSelectedHour] = useState(null);
    const [listDays, setListDays] = useState([]);
    const [listHours, setListHours] = useState([]);

    useEffect(()=>{ 
        if(user.available) {
            let daysInMonth = new Date(selectedYear, selectedMonth +1, 0).getDate();
            let newListDays = [];

            for(let i=1;i<=daysInMonth;i++) {
                let d = new Date(selectedYear, selectedMonth, i);
                let year = d.getFullYear();
                let month = d.getMonth() + 1;
                let day = d.getDate();
                month = month < 10 ? '0'+month : month;
                day = day < 10 ? '0'+day : day;
                let selDate = `${year}-${month}-${day}`;

                let availability = user.available.filter(e=>e.date === selDate);

                newListDays.push({
                    status: availability.length > 0 ? true : false,
                    weekday: days[ d.getDay() ],
                    number: i
                });
            }

            setListDays(newListDays);
            setSelectedDay(0);
            setListHours([]);
            setSelectedHour(0);
        }
    }, [user, selectedMonth, selectedYear]);

    useEffect(()=>{
        if(user.available && selectedDay > 0) {
            let d = new Date(selectedYear, selectedMonth, selectedDay);
            let year = d.getFullYear();
            let month = d.getMonth() + 1;
            let day = d.getDate();
            month = month < 10 ? '0'+month : month;
            day = day < 10 ? '0'+day : day;
            let selDate = `${year}-${month}-${day}`;

            let availability = user.available.filter(e=>e.date === selDate);

            if(availability.length > 0) {
                setListHours( availability[0].hours );
            }
        }
        setSelectedHour(null);
    }, [user, selectedDay]);

    useEffect(()=>{
        let today = new Date();
        setSelectedYear( today.getFullYear() );
        setSelectedMonth( today.getMonth() );
        setSelectedDay( today.getDate() );
    }, []);

    const handleLeftDateClick = () => {
        let mountDate = new Date(selectedYear, selectedMonth, 1);
        mountDate.setMonth( mountDate.getMonth() - 1 );
        setSelectedYear(mountDate.getFullYear());
        setSelectedMonth(mountDate.getMonth());
        setSelectedDay(0);
    }

    const handleRightDateClick = () => {
        let mountDate = new Date(selectedYear, selectedMonth, 1);
        mountDate.setMonth( mountDate.getMonth() + 1 );
        setSelectedYear(mountDate.getFullYear());
        setSelectedMonth(mountDate.getMonth());
        setSelectedDay(0)
    }

    const handleCloseButton = () => {
        setShow(false);
    }

    const handleFinishClick = async () => {
        if(
            user.id &&
            service != null &&
            selectedYear > 0 &&
            selectedMonth > 0 &&
            selectedDay > 0 &&
            selectedHour != null
        ) {
            /*let res = await Api.setAppointment(
                user.id,
                service,
                selectedYear,
                selectedMonth,
                selectedDay,
                selectedHour
            );
            if(res.error === '') {
                setShow(false);
                navigation.navigate('Appointments');
            } else {
                alert(res.error);
            }            
            */

           setShow(false);
           navigation.navigate('Appointments');
        } else {
            alert("Preencha todos os dados");
        }
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

                    <ModalItem>
                        <DateInfo>
                            <DatePrevArea onPress={handleLeftDateClick}>
                                <NavPrevIcon width="35" height="35" fill="#000" />
                            </DatePrevArea>
                            <DateTitleArea>
                                <DateTitle>{months[selectedMonth]} {selectedYear} </DateTitle>
                            </DateTitleArea>
                            <DateNextArea onPress={handleRightDateClick}>
                                <NavNextIcon width="35" height="35" fill="#000" />
                            </DateNextArea>
                        </DateInfo>
                        <DateList horizontal={true} showsHorizontalScrollIndicator={false}>
                            {listDays.map((item, key)=>(
                                <DateItem key={key}
                                    onPress={()=>item.status ? setSelectedDay(item.number) : null}
                                    style={{
                                        opacity: item.status ? 1 : 0.5,
                                        backgroundColor: item.number === selectedDay ? '#4EADBE' : '#FFF'
                                    }}
                                >
                                    <DateItemWeekDay
                                        style={{
                                            color: item.number === selectedDay ? '#FFF' : '#000'
                                        }}
                                    >{item.weekday}</DateItemWeekDay>
                                    <DateItemNumber
                                        style={{
                                            color: item.number === selectedDay ? '#FFF' : '#000'
                                        }}
                                    >{item.number}</DateItemNumber>
                                </DateItem>
                            ))}
                        </DateList>
                    </ModalItem>

                    {selectedDay > 0 && listHours.length > 0 &&
                        <ModalItem>
                            <TimeList horizontal={true} showsHorizontalScrollIndicator={false}>
                                {listHours.map((item, key)=>(
                                    <TimeItem
                                        key={key}
                                        onPress={()=>setSelectedHour(item)}
                                        style={{
                                            backgroundColor: item === selectedHour ? '#4EADBE' : '#FFF'
                                        }}
                                    >
                                        <TimeItemText
                                            style={{
                                                color: item === selectedHour ? '#FFF' : '#000',
                                                fontWeight: item === selectedHour ? 'bold' : 'normal'
                                            }}
                                        >{item}</TimeItemText>
                                    </TimeItem>
                                ))}
                            </TimeList>                            
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