SELECT sound.id, sound.type
FROM SOUND
    INNER JOIN sound_source ON sound.sound_source_id = sound_source.id
    INNER JOIN effect ON sound.id = effect.sound_id
    INNER JOIN human ON human.id = effect.human_id
GROUP BY sound.id
HAVING 
    COUNT(DISTINCT human.id) >= 2 AND
    COUNT(DISTINCT effect.type) >= 2;
    