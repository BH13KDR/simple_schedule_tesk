CREATE TABLE IF NOT EXISTS schedules (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    start_datetime DATETIME NOT NULL,
    end_datetime DATETIME,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    alarm_enabled BOOLEAN DEFAULT FALSE,
    alarm_datetime DATETIME
);
INSERT INTO schedules (title, description, start_datetime, end_datetime, alarm_enabled,alarm_datetime)
VALUES (
    '팀미팅',
    '주간 업무 보고',
    '20250823180000',
    '20250823200000',
    TRUE,
    '20250823170000'
);

-- 운동 추가
INSERT INTO schedules (title, start_datetime, end_datetime, alarm_enabled, alarm_datetime)
VALUES (
    '운동',
    '20250823200000',
    '20250823210000',
    TRUE,
    '20250823195000'
);

INSERT INTO schedules (
    title, description, start_datetime, end_datetime, alarm_enabled, alarm_datetime
) VALUES

('장보기',
 NULL,
 '20250824070000',
 '20250824080000',
 TRUE,
 '20250824070000'),

('책반납',
 NULL,
 '20250824100000',
 '20250824103000',
 TRUE,
 '20250824100000'),

('저녁약속',
 NULL,
 '20250824180000',
 '20250824200000',
 TRUE,
 '20250824170000'),

('친구결혼식',
 NULL,
 '20250823140000',
 '20250823180000',
 TRUE,
 '20250823110000'),

('막차시간',
 NULL,
 '20250823230000',
 '20250824000000',
 TRUE,
 '20250823220000'),


('PT시간',
 '헬스 트레이닝',
 '20250823180000',
 '20250823190000',
 TRUE,
 '20250823180000'),

('업무전화예정',
 '클라이언트 피드백',
 '20250823200000',
 '20250823210000',
 TRUE,
 '20250823200000'),

('공부',
 'Python 문제풀기',
 '20250823090000',
 '20250823103000',
 TRUE,
 '20250823090000'),

('영화관람',
 '여름특선 공포 영화',
 '20250824193000',
 '20250824220000',
 TRUE,
 '20250824193000');

UPDATE schedules SET description = '월간 업무 보고' WHERE id = 1;

DELETE FROM schedules WHERE id = 1;
