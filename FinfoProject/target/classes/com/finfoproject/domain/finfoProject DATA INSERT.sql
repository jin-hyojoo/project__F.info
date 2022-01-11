
-- 유저 데이터 등록
insert into USERS values(users_seq.nextval,'1234','test@gamil.com','홍길동','클래식','재즈',0); --0은 일반회원
insert into USERS values(users_seq.nextval,'1234','test1@naver.com','서일대','EDM-힙합','클래식',0);
insert into USERS values(users_seq.nextval,'1234','kim@gmail.com','김종대','락','힙합',0);
insert into USERS values(users_seq.nextval,'1234','kjm@gmail.com','김준면','클래식','재즈',0);
insert into USERS values(users_seq.nextval,'1234','sehun@gmail.com','오세훈','EDM-힙합','재즈',0);
insert into USERS values(users_seq.nextval,'1234','kai@gmail.com','김종인','EDM-힙합','클래식',0);

insert into USERS values(users_seq.nextval,'1234','admin','관리자1','','',1); --1은 관리자
insert into USERS values(users_seq.nextval,'1234','test','홍길동','클래식','재즈',2); --2는 계정정지

insert into USERS (U_NO, U_PW, U_EMAIL, U_NAME,
U_LIKE1, U_LIKE2) values(users_seq.nextval,'1234','test2','강길동','재즈','락'); --디폴트값 들어가는지 체크용 (회원가입할 때 무조건 0인 일반회원으로)

update users 
set u_ck=1
where u_name='김관리';


-- 장르 데이터 등록
insert into GENRE
values (0, '종합');

insert into GENRE
values (1, '재즈');

insert into GENRE
values (2, '일렉');

insert into GENRE
values (3, '콘서트');

insert into GENRE
values (4, '락');

insert into GENRE
values (5, 'EDM');

insert into GENRE
values (6, '힙합');

insert into GENRE
values (7, '클래식');


-- 축제 데이터 등록
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '서울 재즈 페스티벌 2019', '19/05/25', '19/05/26', '올림픽 공원', 1, 'http://www.seouljazz.co.kr/', 2);

update FESTIVAL
set F_TAG1 = '서울재즈페스티벌2019',
    F_TAG2 = '서재페',
    F_IMGURL = '1.jpg',
	F_THUMBNAIL = '1.jpg'
where F_SUBJECT = '서울 재즈 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '레인보우 뮤직 &'||' 캠핑 페스티벌 2019', '19/06/01', '19/06/02', '자라섬', 3, 'http://www.rainbowfestival.co.kr/rainbow-2019/', 2);

update FESTIVAL
set F_TAG1 = '레인보우페스티벌',
    F_TAG2 = '레인보우뮤직페스티벌',
    F_IMGURL = '2.jpg',
F_THUMBNAIL = '2.jpg'
where F_SUBJECT = '레인보우 뮤직 &'||' 캠핑 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 월드 디제이 페스티벌', '19/06/01', '19/06/02', '서울랜드', 3, 'http://www.wdjfest.com/', 2);

update FESTIVAL
set F_TAG1 = '월디페',
    F_TAG2 = '월드디제이페스티벌',
    F_IMGURL = '3.jpg',
F_THUMBNAIL = '3.jpg'
where F_SUBJECT = '2019 월드 디제이 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '울트라 코리아 2019', '19/06/07', '19/06/09', '에버랜드 스피드웨이', 3, 'https://ultrakorea.com/ko/', 2);

update FESTIVAL
set F_TAG1 = '움프',
    F_TAG2 = 'UMF',
        F_IMGURL = '4.jpg',
F_THUMBNAIL = '4.jpg'
where F_SUBJECT = '울트라 코리아 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'MERCEDES-BENZ 5TARDIUM 2019', '19/06/29', '19/06/30', '난지 한강공원', 2, 'http://5tardium.com/', 0);

update FESTIVAL
set F_TAG1 = '5TARDIUM',
    F_TAG2 = 'BENZ',
    F_IMGURL = '5.jpg',
F_THUMBNAIL = '5.jpg'
where F_SUBJECT = 'MERCEDES-BENZ 5TARDIUM 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '워터밤 서울 2019', '19/07/20', '19/07/21', '미공개', 3, 'http://waterbombfestival.com/', 0);

update FESTIVAL
set F_TAG1 = '워터밤',
    F_TAG2 = '워터밤서울',
    F_IMGURL = '6.jpg',
F_THUMBNAIL  = '6.jpg'
where F_SUBJECT = '워터밤 서울 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 지산 락 페스티벌', '19/07/26', '19/07/28', '지산 포레스트 리조트', 4, 'https://jisanrockfestival.modoo.at/', 0);

update FESTIVAL
set F_TAG1 = '지산락페',
    F_TAG2 = '지산',
    F_IMGURL = '7.jpg',
F_THUMBNAIL  = '7.jpg'
where F_SUBJECT = '2019 지산 락 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 인천 펜타포트 락 페스티벌', '19/08/09', '19/08/11', '송도 달빛축제공원', 4, 'http://www.pentaport.co.kr/kor/main/main.php', 0);

update FESTIVAL
set F_TAG1 = '펜타포트',
    F_TAG2 = '인천',
    F_IMGURL = '8.jpg',
F_THUMBNAIL  = '8.jpg'
where F_SUBJECT = '2019 인천 펜타포트 락 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'EDC KOREA 2019', '19/08/31', '19/09/01', '서울랜드', 5, 'http://www.pentaport.co.kr/kor/main/main.php', 0);

update FESTIVAL
set F_TAG1 = 'EDC',
    F_TAG2 = 'EDCKOREA',
    F_IMGURL = '9.jpg',
F_THUMBNAIL = '9.jpg'
where F_SUBJECT = 'EDC KOREA 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 스펙트럼 댄스 뮤직 페스티벌', '19/09/07', '19/09/08', '미공개', 2, 'http://spectrumdmf.com/', 0);

update FESTIVAL
set F_TAG1 = '스펙트럼댄스뮤직페스티벌',
    F_TAG2 = '스펙트럼',
    F_IMGURL = '10.jpg',
F_THUMBNAIL = '10.jpg'
where F_SUBJECT = '2019 스펙트럼 댄스 뮤직 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '제16회 자라섬 재즈 페스티벌', '19/10/04', '19/10/06', '자라섬', 1, 'http://www.jarasumjazz.com/the16th', 0);

update FESTIVAL
set F_TAG1 = '자라섬재즈페스티벌',
    F_TAG2 = '자라섬',
    F_IMGURL = '11.jpg',
F_THUMBNAIL = '11.jpg'
where F_SUBJECT = '제16회 자라섬 재즈 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'HIPHOPPLAYA FESTIVAL 2019', '19/04/27', '19/04/28', '난지 한강공원', 6, 'https://hiphopplaya.com/', 0);

update FESTIVAL
set F_TAG1 = '힙합플레이야',
    F_TAG2 = '힙합플레이야페스티벌',
    F_IMGURL = '12.jpg',
F_THUMBNAIL = '12.jpg'
where F_SUBJECT = 'HIPHOPPLAYA FESTIVAL 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'DMZ 피스트레인 뮤직 페스티벌 2019', '19/06/07', '19/06/09', '고석정', 0, 'http://www.jarasumjazz.com/the16th', 0);

update FESTIVAL
set F_TAG1 = 'DMZ',
    F_TAG2 = '피스트레인',
    F_IMGURL = '13.jpg',
F_THUMBNAIL = '13.jpg'
where F_SUBJECT = 'DMZ 피스트레인 뮤직 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'K-POP 뮤직페스티벌 2019', '19/05/31', '19/06/01', '코엑스', 0, 'http://korean.visitseoul.net/event-festival/2019-K-POP-뮤직페스티벌_/29558', 0);

update FESTIVAL
set F_TAG1 = 'K-POP',
    F_TAG2 = 'K-POP뮤직페스티벌',
    F_IMGURL = '14.jpg',
F_THUMBNAIL = '14.jpg'
where F_SUBJECT = 'K-POP 뮤직페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 서울거리공연', '19/04/01', '19/11/30', '전국', 0, 'http://korean.visitseoul.net/event-festival/2019-서울거리공연_/29404', 0);

update FESTIVAL
set F_TAG1 = '거리공연',
    F_TAG2 = '서울거리공연',
    F_IMGURL = '15.jpg',
F_THUMBNAIL = '15.jpg'
where F_SUBJECT = '2019 서울거리공연';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'KB RAPBEAT FESTIVAL 2019', '19/09/28', '19/09/28', '서울랜드', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203075#none', 0);

update FESTIVAL
set F_TAG1 = 'RAPBEAT',
    F_TAG2 = 'KB',
    F_IMGURL = '16.jpg',
F_THUMBNAIL = '16.jpg'
where F_SUBJECT = 'KB RAPBEAT FESTIVAL 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'NBA BUZZER BEAT FESTIVAL 2019', '19/07/13', '19/07/13', 'KBS아레나', 3, 'https://culturethink.net/ticket/', 0);

update FESTIVAL
set F_TAG1 = 'NBA',
    F_TAG2 = 'BUZZER BEAT',
    F_IMGURL = '17.jpg',
F_THUMBNAIL = '17.jpg'
where F_SUBJECT = 'NBA BUZZER BEAT FESTIVAL 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '서울 파크 뮤직 페스티벌 2019', '19/06/15', '19/06/16', '올림픽공원', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203475', 0);

update FESTIVAL
set F_TAG1 = '파크뮤직페스티벌',
    F_TAG2 = '올림픽 공원',
    F_IMGURL = '18.jpg',
F_THUMBNAIL  = '18.jpg'
where F_SUBJECT = '서울 파크 뮤직 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '홀리데이 랜드 페스티벌 2019', '19/07/27', '19/07/28', '인천 파라다이스시티', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203476', 0);

update FESTIVAL
set F_TAG1 = '홀리데이',
    F_TAG2 = '랜드 페스티벌',
    F_IMGURL = '19.jpg',
F_THUMBNAIL  = '19.jpg'
where F_SUBJECT = '홀리데이 랜드 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '미드나잇피크닉 페스티벌 2019', '19/07/12', '19/07/13', '삼포해변', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203551', 0);

update FESTIVAL
set F_TAG1 = '미드나잇피크닉',
    F_TAG2 = '피크닉페스티벌',
    F_IMGURL = '20.jpg',
F_THUMBNAIL  = '20.jpg'
where F_SUBJECT = '미드나잇피크닉 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '어반 뮤직 페스티벌 2019 in 대구', '19/07/20', '19/07/20', '대구 엑스포', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203573', 0);

update FESTIVAL
set F_TAG1 = '어뮤페',
    F_TAG2 = '엑스포',
    F_IMGURL = '21.jpg',
F_THUMBNAIL  = '21.jpg'
where F_SUBJECT = '어반 뮤직 페스티벌 2019 in 대구';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '어반 뮤직 페스티벌 2019', '19/07/06', '19/07/07', '세종대 컨벤션홀', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203593', 0);

update FESTIVAL
set F_TAG1 = '어뮤페',
    F_TAG2 = '서울',
    F_IMGURL = '22.jpg',
F_THUMBNAIL = '22.jpg'
where F_SUBJECT = '어반 뮤직 페스티벌 2019';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 쿠키와 함께하는 시리즈 페스티벌', '19/05/04', '19/06/22', '홍대 하나투어 브이홀', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203248', 0);

update FESTIVAL
set F_TAG1 = '쿠키',
    F_TAG2 = '홍대야놀자',
    F_IMGURL = '23.jpg',
F_THUMBNAIL  = '23.jpg'
where F_SUBJECT = '2019 쿠키와 함께하는 시리즈 페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '2019 부산국제록페스티벌', '19/07/27', '19/07/28', '부산 삼락생태공원', 3, 'https://ticket.melon.com/performance/index.htm?prodId=203586', 0);

update FESTIVAL
set F_TAG1 = '부산록페',
    F_TAG2 = '부산국제록페',
    F_IMGURL = '24.jpg',
F_THUMBNAIL = '24.jpg'
where F_SUBJECT = '2019 부산국제록페스티벌';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '픽사 인 콘서트', '19/07/25', '19/07/25', '롯데 콘서트홀', 7, 'https://ticket.melon.com/performance/index.htm?prodId=203504', 0);

update FESTIVAL
set F_TAG1 = '픽사',
    F_TAG2 = '픽사필름콘서트',
    F_IMGURL = '25.jpg',
F_THUMBNAIL = '25.jpg'
where F_SUBJECT = '픽사 인 콘서트';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'Mid summer Festival', '19/07/25', '19/07/25', '부산', 3, 'http://midsummerprog.com/', 0);

update FESTIVAL
set F_TAG1 = 'MSF',
    F_TAG2 = '부산',
    F_IMGURL = '26.jpg',
F_THUMBNAIL = '26.jpg'
where F_SUBJECT = 'Mid summer Festival';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, 'DRIFT AWAY', '19/03/30', '19/03/30', '무브홀', 5, 'https://ticket.melon.com/performance/index.htm?prodId=203242', 0);

update FESTIVAL
set F_TAG1 = 'DA페스티벌',
    F_TAG2 = '홍대',
    F_IMGURL = '27.jpg',
F_THUMBNAIL = '27.jpg'
where F_SUBJECT = 'DRIFT AWAY';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '쁘티콘서트', '19/06/20', '19/06/21', '세종문화회관 체임버홀', 7, 'http://www.sejongpac.or.kr/performance/view_real.asp?performIdx=29686&performCode=chpv1901071643001', 0);

update FESTIVAL
set F_TAG1 = '서울시합창단',
    F_TAG2 = '세종',
    F_IMGURL = '28.jpg',
F_THUMBNAIL = '28.jpg'
where F_SUBJECT = '쁘티콘서트';

------------------
insert into FESTIVAL (F_NO, F_SUBJECT, F_START, F_END, F_PLACE, G_NO, F_URL, F_STATE)
values (festival_seq.nextval, '신나는 콘서트', '19/08/17', '19/08/17', '세종문화회관 대극장', 7, 'https://ticket.melon.com/performance/index.htm?prodId=203227', 0);

update FESTIVAL
set F_TAG1 = '신나는콘서트',
    F_TAG2 = '합창',
    F_IMGURL = '29.jpg',
F_THUMBNAIL = '29.jpg'
where F_SUBJECT = '신나는 콘서트';


-------------------------
--사용자 이메일이 디비에 존재해야 생성됨.
insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 1, 'test@naver.com', '너무 아름다운 공연이였어요', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 8, 'test@naver.com', '황홀 그자체 였습니다 ', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 7, 'test', '안가면 후회', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 6, 'test@naver.com', '아니 외않봐??? 당장 달려가세요', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 5, 'test@naver.com', '이제 이 공연 없이 못 살 듯', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 4, 'test@naver.com', '제발 가주라 존잼쓰', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 3, 'test@naver.com', '이보다 더 좋은 공연이 있을까?', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 8, 'test@naver.com', '행복하고 또 행복했습니다', sysdate )

insert into REVIEW (R_NO,F_NO,U_EMAIL,R_CONTENT, R_REGDATE)
values(review_seq.nextval, 8, 'test@naver.com', '공연 자주해주세요', sysdate )





