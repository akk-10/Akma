
create database MIDKA
use MIDKA

create table Trains(
Train_id integer identity(10,10) primary key,
Train_name varchar(20) not null,
);

create table Track(
Train_id integer foreign key references Trains(Train_id),
Track_id integer identity(10,1) primary key,
From_station varchar(30),
To_station varchar(30)
)

create table Times(
Track_id integer foreign key references Track(Track_id),
Train_id integer foreign key references Trains(Train_id) ,
Time_in varchar(30),
Time_out varchar(30)
)

create table Booking(
Train_id integer foreign key references Trains(Train_id),
Track_id integer foreign key references Track(Track_id),
Booking_num varchar(20) primary key,
Passenger_name varchar(20) not null,
Day date,
coach integer not null,
seat varchar(10) unique
)
drop table Booking
drop table Times
drop table Track



insert into Trains values(
'Saryarka'),
('Sairan'),
('Mangyshlak'),
('Almaly'),
('Baiterek')

insert into Track values(
50,	'Aktau', 'Oral'),
(50, 'Aktau', 'Aktobe'),
(50, 'Aktau', 'Kulsary'),
(30, 'Aktobe',	'Atyrau'),
(40, 'Aktobe', 'Kyzylorda'),
(40, 'Aktobe', 'Turkestan'),
(40, 'Aktobe', 	'Almaty'),
(50, 'Aktobe', 'Kulsary'),
(50, 'Aktobe', 'Aktau'),
(30, 'Aktobe', 'Turkestan'),
(30, 'Aktobe', 'Kyzylorda'),
(50, 'Aktobe', 'Oral'),
(10, 'Almaty', 'Karagandy'),
(10, 'Almaty', 'Petropavl'),
(10, 'Almaty', 'Astana'),
(20, 'Almaty', 'Semey'),
(20, 'Almaty', 'Shymkent'),
(20, 'Almaty', 'Taraz'),
(40, 'Almaty', 'Aktobe'),
(40, 'Almaty', 'Kyzylorda'),
(40, 'Almaty', 'Turkestan'),
(10, 'Astana', 'Petropavl'),
(10, 'Astana',	'Almaty'),
(10, 'Astana', 'Karagandy'),
(30, 'Atyrau', 'Turkestan'),
(30, 'Atyrau', 'Kyzylorda'),
(30, 'Atyrau', 'Aktobe'),
(10, 'Karagandy', 'Petropavl'),
(10, 'Karagandy', 'Astana'),
(10, 'Karagandy', 'Almaty'),
(50, 'Kulsary', 'Aktau'),
(50, 'Kulsary', 'Oral'),
(50, 'Kulsary', 'Aktobe'),
(30, 'Kyzylorda', 'Aktobe'),
(30, 'Kyzylorda', 'Atyrau'),
(40, 'Kyzylorda', 'Turkestan'),
(40, 'Kyzylorda', 'Almaty'),
(30, 'Kyzylorda', 'Turkestan'),
(40, 'Kyzylorda', 'Aktobe'),
(50, 'Oral', 'Aktobe'),
(50, 'Oral', 'Kulsary'),
(50, 'Oral', 'Aktau'),
(10, 'Petropavl', 'Almaty'),
(10, 'Petropavl',  'Karagandy'),
(10, 'Petropavl', 'Astana'),
(20, 'Semey', 'Shymkent'),
(20, 'Semey', 'Taraz'),
(20, 'Semey', 'Almaty'),
(20, 'Shymkent', 'Taraz'),
(20, 'Shymkent', 'Almaty'),
(20, 'Shymkent', 'Semey'),
(20, 'Taraz', 'Almaty'),
(20, 'Taraz', 'Semey'),
(20, 'Taraz', 'Shymkent'),
(30, 'Turkestan', 'Kyzylorda'),
(30, 'Turkestan', 'Aktobe'),
(30, 'Turkestan', 'Atyrau'),
(40, 'Turkestan', 'Almaty'),
(40, 'Turkestan', 'Aktobe'),
(40, 'Turkestan', 'Kyzylorda')
select*from Track

insert into Times values
(10, 50, '09:00', '22:50'),
(11, 50, '09:00', '19:00'),
(12, 50, '09:00', '13:20'),
(13, 30, '18:00', '23:30'),
(14, 40, '00:20', '14:50'),
(15, 40, '00:20', '20:45'),
(16, 40, '00:20', '23:30'),
(17, 50, '13:20', '19:00'),
(18, 50, '13:20', '22:50'),
(19, 30, '09:15', '23:30'),
(20, 30, '09:15', '18:00'),
(21, 50, '19:00', '22:50'),
(22, 10, '10:00', '14:00'),
(23, 10, '10:00', '21:40'),
(24, 10, '10:00', '15:40'),
(25, 20, '11:10', '23:30'),
(26, 20, '05:40', '23:30'),
(27, 20, '05:40', '11:10'),
(28, 40, '00:20', '23:30'),
(29, 40, '00:20', '20:45'),
(30, 40, '00:20', '14:50'),
(31, 10, '15:40', '21:40'),
(32, 10, '14:00', '21:40'),
(33, 10, '14:00', '15:40'),
(34, 30, '05:30', '23:30'),
(35, 30, '05:30', '18:00'),
(36, 30, '05:30', '09:15'),
(37, 10, '14:00', '21:40'),
(38, 10, '14:00', '15:40'),
(39, 10, '15:40', '21:40'),
(40, 50, '19:00', '22:50'),
(41, 50, '13:20', '22:50'),
(42, 50, '13:20', '19:00'),
(43, 30, '09:15', '18:00'),
(44, 30, '09:15', '23:30'),
(45, 40, '14:50', '20:45'),
(46, 40, '14:50', '23:30'),
(47, 30, '18:00', '23:30'),
(48, 40, '20:45', '23:30'),
(49, 50, '09:00', '13:20'),
(50, 50, '09:00', '19:00'),
(51, 50, '09:00', '22:50'),
(52, 10, '10:00', '21:40'),
(53, 10, '10:00', '15:40'),
(54, 10, '10:00', '14:00'),
(55, 20, '02:00', '23:30'),
(56, 20, '02:00', '11:10'),
(57, 20, '02:00', '05:40'),
(58, 20, '02:00', '05:40'),
(59, 20, '02:00', '11:10'),
(60, 20, '02:00', '23:30'),
(61, 20, '05:40', '11:10'),
(62, 20, '05:40', '23:30'),
(63, 20, '11:10', '23:30'),
(64, 30, '05:30', '09:15'),
(65, 30, '05:30', '18:00'),
(66, 30, '05:30', '23:30'),
(67, 40, '20:45', '23:30'),
(68, 40, '14:50', '23:30'),
(69, 40, '14:50', '20:45')
select*from Times

insert into Booking values
(40, 46, '202301', 'Eraly Kundyz',	'11.03.2023',	'1', 	'01A'),
(20, 26, '202302',	'Amire Aruzhan',	'22.03.2023',	'4',	'11A'),
(30, 64, '202303',	'Zhakypbek Tumar',	'01.03.2023',	'5',	'09A'),
(20, 25, '202304',	'Baurzhan Amina',	'17.03.2023',	'3',	'03A'),
(30, 13, '202305',	'Tarikh Symbat',	'25.03.2023',	'8',	'15A'),
(20, 60, '202306',	'Zhursin Laura',	'19.03.2023',	'9',	'06B'),
(40, 67, '202307',	'Abubakir Aizhan', 	'21.03.2023',	'10',	'14B'),
(50, 51, '202308',	'Ospan Aisultan',	'09.03.2023',	'5', 	'16B'),
(50, 40, '202309',	'Kemel Arman',	'05.03.2023',	'8',	'04B'),
(40, 15, '202310',	'Kanat Ayim',	'23.03.2023',	'9',	'08B')
select*from Booking


--1
/* Display Scedule of Train */
select Tn.Train_id, Tn.Train_name, Tk.From_station, Tk.To_station, T.Time_in, T.Time_out from Track Tk
left outer join Times T
on T.Track_id = Tk.Track_id
left outer join Trains Tn
on Tn.Train_id = Tk.Train_id
order by Tn.Train_id asc

--2
/* Display date of birth and name of all passengers who booked ticket for Almaly train */
select B.Passenger_name, Tn.Train_name, B.coach,  B.seat, Tk.From_station, Tk.To_station from Booking B
right outer join Trains Tn
on B.Train_id = Tn.Train_id
right outer join Track Tk
on B.Track_id = Tk.Track_id
where Tn.Train_name = 'Almaly'

--3
/* All information about passengers */
select B.Booking_num, B.Passenger_name, B.coach, B.seat, B.Day,
Tn.Train_name, T.Time_in, Tk.From_station, T.Time_out, Tk.To_station from Booking B
left outer join Trains Tn
on B.Train_id = Tn.Train_id
left outer join Track Tk
on B.Track_id = Tk.Track_id
left outer join Times T
on T.Track_id = Tk.Track_id

--4
/* Show passengers who are leaving almaty */
select B.Booking_num, B.Passenger_name, B.coach, B.seat, B.Day,
Tn.Train_name, T.Time_in, Tk.From_station, T.Time_out, Tk.To_station from Booking B
left outer join Trains Tn
on B.Train_id = Tn.Train_id
left outer join Track Tk
on B.Track_id = Tk.Track_id
left outer join Times T
on T.Track_id = Tk.Track_id
where Tk.From_station like '%Almaty'

--5
/* Show trains with stations*/
select distinct  Tn.Train_name, Tk.From_station as Stations from Trains Tn
right outer join Track Tk
on Tn.Train_id = Tk.Train_id

--5
/* Count stations*/
select distinct Tn.Train_id, count(distinct Tk.From_station) as cnt from Trains Tn
right outer join Track Tk
on Tn.Train_id = Tk.Train_id
group by Tn.Train_id

--6
select B.Passenger_name, Tk.From_station, Tk.To_station, B.Day from Booking B
left outer join Track Tk
on B.Track_id = Tk.Track_id
order by B.Day asc



