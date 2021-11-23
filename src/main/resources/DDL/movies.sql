------ #DDL) TABLE Movies------
--���� �� ��ȭ���� ���̺�

CREATE SEQUENCE seq_movie;
DROP SEQUENCE seq_movie;

CREATE TABLE movies (
    movie_no NUMBER(20),
    movie_title VARCHAR2(100) NOT NULL,
    movie_op_day varchar2(20),
    movie_director varchar2(100) NOT NULL,
    movie_actor VARCHAR2(1000),
    movie_genre VARCHAR2(100),
    movie_country VARCHAR2(100),
    movie_story VARCHAR2(3000),
    movie_img VARCHAR2(4000),
    movie_bg_img VARCHAR2(4000), -- ��ȭ ��� �̹��� �߰�
    reg_date DATE DEFAULT SYSDATE, --������ ����� �÷� �߰�
    rank NUMBER(10), -- ��ȭ ���� �÷� �߰�
    update_date DATE,
    CONSTRAINT pk_movie_no PRIMARY KEY (movie_no)
);


---- ��ȭ ��� �̹��� �߰� (���̺� ���� �ȸ������ �̰ɷ� �߰�)
ALTER TABLE movies ADD movie_bg_img VARCHAR2(4000);

---- ��ȭ ���� �÷��� �߰�
ALTER TABLE movies ADD rank NUMBER(10);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '�帣�� �θǽ�', '2021-11-17', '������', '���·�, ������, ������, �����, ������, ������', '�ڹ̵� / ���', '�ѱ�',
'���ϸ��� �����̾�Ƽ�� �� �۰��� ���Ȱ �����ڵ�! ������ ��ȥ�κ� ������� ���Ŀ�� �ְ����� �������� �˽��޽� �̿����� ������� ���� �θǽ��� ���� �̵��� ���Ȱ�� ��������!',
'https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU'
, 'https://an2-img.amz.wtchn.net/image/v2/d547faa1193a10d07f4bbbd419789edf.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU1qSTJPVGt6TWpRek9UQTFPREl5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuRHE0UHdqdVNNbXZCZHYyU293YVVJb3VGY1ZhZ3Q5LVR1X0FVanpBSk55WQ'
, 1);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '��', '2021-10-20', '��� ������', 'Ƽ��� �����, ����ī �۰Ž�, ����ī ���̻�, �����̾�, ���� ��Ѹ�', '���� / ��� / SF','�̱�, ĳ����',
'10191��, ��Ʈ���̵��� ������ �İ����� ��(Ƽ��� �����)�� �ð��� �ʿ��� �������� �� ���ָ� ������ ������ ���� ����� Ÿ����. �׸��� � ���ó�� ���� �޿��� �ƶ�Ű�� �༺�� �ִ� �� ������ ������. �𷡾���� ���ϴ� "��"�̶� �Ҹ��� �ƶ�Ű���� �� �� ��� ���� �縷������ ���ֿ��� ���� ��� ������ �ż��� ȯ���� �����̽��� ������ �������� �̸� �����ϱ� ���� ������ ġ���ϴ�. Ȳ���� ������� ���� ��Ʈ���̵��� ������ ������ ��ٸ��� �ƶ�Ű���� ���ϴµ��� ������ �ڴ� �θ��� �����Ѵ�, �η��� �¼���, �̰��� ������ �����̴�!',
'https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU'
, 'https://an2-img.amz.wtchn.net/image/v2/4123fd0faaaa1b6ba203292a557e16a4.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1TOXROR2cyWTNCNGQyUjBjbXgzZVdFeGVuVmxaU0lzSW5GMVlXeHBkSGtpT2pnd0xDSjNhV1IwYUNJNk1USTRNSDAuM3JDMFF4YWxPbTZIa0lXT3NVNFVIMXh2YURpckVPdTZCZnlFbXlYN3Y3Yw'
, 2);
INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '���ͳν�', '2021-11-03', 'Ŭ���� �ڿ�',
'���� ��, ��ó�� �ŵ�, �������� ����, ���� �����ƴ�, ���� ����, ������, ����̾� Ÿ�̸� �, �η� �������, �踮 Ű����, ���� ���̿�', '��Ÿ�� / �׼� / ����', '�̱�',
'���� ��Ʃ����� <���ͳν�>�� �� õ�⿡ ���� �� ����� �巯���� �ʰ� ��ƿ� �Ҹ��� ����ε��� <�����: �������> ���� �η��� ���� ������ �� ��������� �¼��� ���� �ٽ� ���� ��ġ�鼭 �������� �̾߱�',
'https://an2-img.amz.wtchn.net/image/v2/ab7acc4092fb3aefd19631b0de56d922.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjlkQUlCTy00eDltT1Jxc0ZzVGVkNFI1MENJdmRNMzdUckRpNDZvTzBiV0U',
'https://t1.daumcdn.net/movie/7fcc375ef4a9b96a73166bebb64c0fb347ad666e',3);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '��ĭ��: ������ ����', '2021-11-24', '�ڷ��� �ν�, ���̷� �Ͽ���, ä���� ī��Ʈ�� ���̽�',
'�����Ĵ� ����Ʈ����, �� �����ڸ�, ������ ���Ǹ��� ���׷�, ���̾� �Է���, ���� �縮��, ����ī ��ο�, ���� �����, ���� �ߴ���, ĳ�Ѹ��� ����ź, ����� ī��ƿ��', '�ִϸ��̼� / ���� / �ڹ̵�', '�̱�',
'�ݷҺ���� ���� �� ��, ���� ������ Ȱ���� �ŷ��� ��ġ�� ���� ����ĭ�䡯. �� ������ Ư���� �ɷ��� ���� ���帮�� �йи��� ��� �ִ�. ����ĭ�䡯�� ���� ���п� ������ ��, ġ���ϴ� �� �� ������ Ư���� �ɷ��� ������ �¾ ���帮�� �йи�. ������ ���̶󺧡��� ���� �� �����ϰ� �ƹ��� �ɷ��� ����. ��� ��, ����ĭ�䡯�� �ѷ��� ������ ���� ���迡 ó���� ���̶󺧡��� �����ϰ� ����� �ڽ��� Ư���� �� ������ ������ ������� �𸥴ٰ� �����ϴµ�.. ����� ���̶󺧡��� ���� ������ ���� �� ������? �� ���� �����鿡�� ������ ������ ������ ������ ���� ���� ��ȭ! ������� ������ �� �� �� ���۵ȴ�',
'https://an2-img.amz.wtchn.net/image/v2/309238c68bd0c8c0cd14ef5719ba6402.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ETTBOVEk0TnpRMU1qTTNOalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjFhYktZMzE1M0pmWVdPeVFzck9FWGNzVjB1dDFkdTdfeFM5XzJCaWwtbnc', 
'https://t1.daumcdn.net/movie/ea029758912751b4140494eabe34ee0dba7e1a6c', 4);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '��ü��Ż��', '2021-11-24', '�����',
'�����, �ڿ��, ������, ����ȯ, ���¸�, �̼���, �����, ������', '�̽��͸� / ��Ÿ�� / �׼�', '�ѱ�',
'������ ��¥ ������ �𸣰ھ�䡱 ������ ���忡�� ���� �� �� ����. �ſ￡ ��ģ ���� �󱼰� �̸�, �ڽ��� �������� ����� ���� �ʴ´�. ���� �ٲ����. ������ �ٲ���� �㿡�� �ǡ� ��� ��, �� �ٸ� ����� ������ ��� ����. �״� 12�ð����� ���� �ٲ�ٴ� ����� ���ݰ� �ǰ�, �ڽ��� �ѷ��� ����� ������ ������� ã�� �����Ѵ�. �װ� 12�ð����� ���� �ٲ���� �����, ���� ������ ��Ÿ���� �ǹ��� ���ڱ���, �׸���, �̵��� �Ѱ� �ִ� ����������� �����̾ȡ�. ������ �˰� �ƾ�. ���� �� �ؾ� �Ǵ����� ��ΰ� ������ �Ǿ� �Ѱ� �ִ� �����̾ȡ��� �ٷ� �ڽ����� ������ ����, �ڽ��� ã�� ���� ������ �����ϴµ��� ��¥ ���� ã�� ���� ������ �׼��� ���۵ȴ�!',
'https://an2-img.amz.wtchn.net/image/v2/aed6ed77f093980ebfba50d7ee1bcbba.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9USTBNalV3T1Rjek5qVTFPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkxPT1UxbkVXcjdnbmdkV2NhVS1XdXA2RUNmc0twNjVrZU1YWUVqTUtobmM',
'https://an2-img.amz.wtchn.net/image/v2/dd07b237696f565f989a0429d65cd0b1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTFOVFUzTVRFeU9EYzJPREV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEuYTVDSFNEYWpmWHJqMU94WXpFWWszdlZVUkNha3BrMjN5YS1uclZoMWk2TQ'
,5);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '����', '2021-11-10', '������', '������, ����, �ڼ���, ����ȯ, �Ž�ȯ, ��ä��, �Ѽ�ȭ, �ۿ���, ���ع�', '�׼� / ����', '�ѱ�',
'���� �ִ� ������ ���漮�� ��ȭ�� �Ǹ��� �߿���ϸ� ���� �ְ� ��ư��� ���� �տ� ���� �ִ� ����Ʈ �������� �븰 ���� ���μ����� ��Ÿ���� ù �������� ������ �����Ⱑ ������ ��, ���μ����� �ڽ��� ��ǥ�� ���� ���������� �����̱� �����ϸ鼭 �� ���� ���̿��� ������ �� ���� ������ ���۵Ǵµ�.. ��ģ ��� �տ� ���� �� ���� �׵��� �̾߱Ⱑ ���۵ȴ�'
,'https://an2-img.amz.wtchn.net/image/v2/754c42a8d5badadc347b1cca2875cec1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTJNamM1TURBek16QTNOakEzSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmhpdUFCVEM5MlVzeFhLUVVJV1BfTmoyaVlIdjJXSU9ITVAzbGJNU0x0OTg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211014_79%2F1634190055543menOz_JPEG%2Fmovie_image.jpg'
,6);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '��� ���� �ڽ�', '2021-11-17', '��Ƽ�� ũ����Ű', '�� �÷�, �ٸ��� ����, ���̹� �ƴ㽺, ����Ʋ�� ���, �Ƹ���� ���ٹ���, �� ���ٴ�, ��ư ���̾�', '������ / ���', '�̱�',
'�ڽŰ� ����, ���簨 ����, ��� ���� ���� ���� �ʴ� �ҳ� ������ �ڽ����� ���� �����ο��� ������ ���� ������ �ٸ� Ư���� �Ϸ縦 �޲۴�. ��� ��, �ڽſ��� �� ������ ���ڳʡ����� ���ѱ� ���� �ڽ�. ��ĥ �� ���۽����� �ڳ��� �������� ���� �ڽ��� ������ �ڳ��� ������ �����ϰ� ã�ƿ� ���� ������ ������ ������ ǥ�ϰ� �������� �ڽ��� �˾ƺ� �ֱ� �ٶ�� ���� �ڽ��� �׵��� �����Կ� �󶳰ῡ �ڳʿ��� ������ �߾￡ ���� ����� ������ �Ǹ� ����� ������ �����̰� �Ǵµ��� ���� ȥ�� ������ �� ���� ���� ������ ����� ã�ư��ϴ�.'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211013_44%2F1634090696216vDR6R_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211022_207%2F1634884009760FmIWF_JPEG%2Fmovie_image.jpg'
,7);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '�ƴ㽺 �йи� 2', '2021-11-10', '�׷� Ƽ�, �ܷ��� ����', '����ī ���̻�, �������� �׷�, Ŭ���� ����, �� ũ��, ���̺� ���� ��ư', '�ִϸ��̼�', '�̱�, ����, ĳ����',
'����԰��� �Ÿ��� �� ȣ���� �ƴ㽺 �йи����� ��ģ �ִ� ����. ���̵��� ����⿡ ������, ���·ο� ���� �����⿡ ���⸦ ���� �ƺ� �������� ���� ����Ƽ�þơ��� �������� ȭ���� ���� ���̾ư��� �������� �׷��� ĳ�Ͼ���� �̱��� ���������� ���� ������ ������. ������, ��¾�� �»����� ���޶��� ������̡��� ���� ����� �������鼭 ������̡��� ������ ������ �̸���, �ƴ㽺 �йи��� ������ ���� �� �ų���, ���� �� �������� ��Ȳ���� ġ�ݴµ���'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211110_170%2F1636522953153AbQfv_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211021_88%2F1634778460505oJEks_JPEG%2Fmovie_image.jpg'
,8);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '����ġ ����ġ', '2021-11-18', '���� �ش���', 'ƿ�� ����ư, �����ý� �Ƶ��ǵ�, �� �ӷ���, ������ ����Ʈ, �ֵ帮�� ��ε�', '�ڹ̵� / ��� / �θǽ�', '�̱�',
'20���� �� �������� ��ġ�� ������ ������ ���� ����� �پ��� ����� ��ξֶ��� ��Ƴ��� �̱� �Ű��� ������ġ ����ġ�� ��� ��, ���۽����� �������� �������� ������ ���θ���Ʈ���� ���ڸ��� ���̰� ������ ���ົ�� ���� 4���� Ư���� ���� �̾߱⸦ �����ϴµ���! ����� �ŷ��ų ������ ��簡 ���� �����ȴ�!'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211021_101%2F1634786145985rjNpq_JPEG%2Fmovie_image.jpg'
, 'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20210916_275%2F1631756515018q8FA8_JPEG%2Fmovie_image.jpg'
,9);

INSERT into movies
(movie_no, movie_title, movie_op_day, movie_director, movie_actor, movie_genre, movie_country, movie_story, movie_img, movie_bg_img, rank)
values
(SEQ_MOVIE.nextval, '������', '2021-12-01', 'ȫ��ǥ', '�嵿��, ������, ������, ��ö��, ����ȿ', '�ִϸ��̼�', '�ѱ�',
'1970�� ��ȭ����, �δ��� �뵿 ȯ���� �ٲٱ� ���� �̰߰� �ο��� û�� �������ϡ��� �̾߱⸦ �׸� �ִϸ��̼� ��ȭ.'
,'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211109_134%2F1636448495538XjbNi_JPEG%2Fmovie_image.jpg', 
'https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20211026_20%2F1635221017410vkAGK_JPEG%2Fmovie_image.jpg'
,10);


select * from movies;
drop table movies;

commit;