drop table board

create table board(

board_no number primary key,

board_title varchar2(300) not null,

board_content varchar2(4000) not null,

board_writer varchar2(20),

board_readcount number default 0 not null,

board_time date

check(regexp_like(board_writer,'^[a-z][a-z0-9]{4,19}$')),
check(board_readcount >=0)
);

drop sequence board_seq;

CREATE sequence board_seq;


insert into BOARD (board_no,board_title,board_content,board_writer,board_readcount)
values (board_seq.nextval,'안녕하세요','ㅋㅋㅋㅋ','gkstjd888',0);

insert into BOARD (board_no,board_title,board_content,board_writer,board_readcount)
values (board_seq.nextval,'바이','ㅂㅂ','asdasd',0);

insert into BOARD (board_no,board_title,board_content,board_writer,board_readcount)
values (board_seq.nextval,'오랜만','ㄹㅇ','qweqwe',0);

insert into BOARD (board_no,board_title,board_content,board_writer,board_readcount)
values (board_seq.nextval,'하이로','ㅎㅇㅎㅇ','zczxc',0);


SELECT * FROM board

create table check_out_book(
check_no number primary key,
check_name varchar2(90) not null,
check_begin date not null,
check_end date not null,
check_price number not null
)
--date의 계산 단위는 일

create sequence check_out_book_seq;

insert into CHECK_OUT_BOOK (check_no,check_name,check_begin,check_end,check_price)
values (
	check_out_book_seq.nextval,'불변의 법칙',
	--to_date('2024-06-24 16:17:05','yyyy-MM-dd hh24:mi:ss')
	sysdate,
	sysdate+3/24,
	22500
)

SELECT * from CHECK_OUT_BOOK
