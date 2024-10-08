USE eksamen_db;

CREATE SCHEMA IF NOT EXISTS eksamen_db;

INSERT INTO discipline (discipline_name, approx_duration)
VALUES
    ('100m Dash', '2 hours'),
    ('Marathon', '8 hours'),
    ('Long Jump', '2 hours'),
    ('Pole Vault', '2 hours'),
    ('4x400m Relay', '2 hours'),
    ('Shot Put', '1 hour'),
    ('High Jump', '2 hours'),
    ('1500m Run', '4 hours'),
    ('400m Hurdles', '3 hours'),
    ('Decathlon', '8 hours');

INSERT INTO participant (full_name, participant_number, gender, age_group)
VALUES
    ('Emma Brown', 20, 'FEMALE', 'JUNIOR'),
    ('Liam Smith', 34, 'MALE', 'SENIOR'),
    ('Olivia Johnson', 45, 'FEMALE', 'SENIOR'),
    ('Noah Davis', 12, 'MALE', 'JUNIOR'),
    ('Ava Martinez', 78, 'FEMALE', 'YOUTH'),
    ('William Wilson', 56, 'MALE', 'SENIOR'),
    ('Sophia Clark', 63, 'FEMALE', 'YOUTH'),
    ('James Lee', 91, 'MALE', 'JUNIOR'),
    ('Isabella Rodriguez', 27, 'FEMALE', 'JUNIOR'),
    ('Benjamin Harris', 88, 'MALE', 'SENIOR'),
    ('Mia Walker', 102, 'FEMALE', 'YOUTH'),
    ('Elijah King', 54, 'MALE', 'SENIOR'),
    ('Charlotte Scott', 39, 'FEMALE', 'JUNIOR'),
    ('Lucas Green', 67, 'MALE', 'JUNIOR'),
    ('Amelia Moore', 81, 'FEMALE', 'YOUTH'),
    ('Mason Wright', 73, 'MALE', 'SENIOR'),
    ('Harper Taylor', 99, 'FEMALE', 'JUNIOR'),
    ('Ethan Anderson', 42, 'MALE', 'YOUTH'),
    ('Abigail Thomas', 58, 'FEMALE', 'SENIOR'),
    ('Alexander Jackson', 110, 'MALE', 'SENIOR');

INSERT INTO time_slot (date, start_time, end_time)
VALUES
    ('2021-06-01T08:00:00', '2021-06-01T08:00:00', '2021-06-01T10:00:00'),
    ('2021-06-01T10:00:00', '2021-06-01T10:00:00', '2021-06-01T12:00:00'),
    ('2021-06-01T12:00:00', '2021-06-01T12:00:00', '2021-06-01T14:00:00'),
    ('2021-06-01T14:00:00', '2021-06-01T14:00:00', '2021-06-01T16:00:00'),
    ('2021-06-01T16:00:00', '2021-06-01T16:00:00', '2021-06-01T18:00:00'),
    ('2021-06-02T08:00:00', '2021-06-02T08:00:00', '2021-06-02T10:00:00'),
    ('2021-06-02T10:00:00', '2021-06-02T10:00:00', '2021-06-02T12:00:00'),
    ('2021-06-02T12:00:00', '2021-06-02T12:00:00', '2021-06-02T14:00:00'),
    ('2021-06-02T14:00:00', '2021-06-02T14:00:00', '2021-06-02T16:00:00'),
    ('2021-06-02T16:00:00', '2021-06-02T16:00:00', '2021-06-02T18:00:00');

INSERT INTO track (track_type, track.track_shape, track_surface, track_length, lanes)
VALUES
    ('FIELD', 'OVAL', 'SAND', 'METERS', '6'),
    ('FIELD', 'OVAL', 'GRASS', 'KILOMETERS', '8'),
    ('TRACK', 'STRAIGHT', 'SAND', 'MILES', '6'),
    ('TRACK', 'STRAIGHT', 'GRASS', 'METERS', '8'),
    ('FIELD', 'OVAL', 'SAND', 'KILOMETERS', '8'),
    ('TRACK', 'OVAL', 'GRASS', 'MILES', '10'),
    ('FIELD', 'STRAIGHT', 'SAND', 'METERS', '6'),
    ('TRACK', 'STRAIGHT', 'SAND', 'KILOMETERS', '8'),
    ('FIELD', 'OVAL', 'SAND', 'MILES', '10'),
    ('FIELD', 'OVAL', 'GRASS', 'KILOMETERS', '12');

INSERT INTO event (event_name, minimum_duration, maximum_participants, time_slot_id, track_id, discipline_id, participant_id)
VALUES
    ('100m Dash', '1 day', 10, 1, 1, 1, 1),
    ('Marathon', '1 day', 10, 2, 2, 2, 2),
    ('Long Jump', '2 days', 10, 3, 3, 3, 3),
    ('Pole Vault', '2 days', 10, 4, 4, 4, 4),
    ('4x400m Relay', '1 day', 10, 5, 5, 5, 5),
    ('Shot Put', '2 days', 10, 6, 6, 6, 6),
    ('High Jump', '2 days', 10, 7, 7, 7, 7),
    ('1500m Run', '1 day', 10, 8, 8, 8, 8),
    ('400m Hurdles', '1 day', 10, 9, 9, 9, 9),
    ('Decathlon', '2 days', 10, 10, 10, 10, 10);

INSERT INTO discipline_participants (discipline_id, participants_id)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (1,10),
    (2,11),
    (2,12),
    (2,13),
    (2,14),
    (2,15),
    (2,16),
    (2,17),
    (2,18),
    (2,19),
    (2,20);

INSERT INTO track_disciplines (track_id, disciplines_id)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10);

