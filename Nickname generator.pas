program NicknameGenerator;

uses
  SysUtils;

const
  Adjectives: array[1..5] of string = ('Смешной', 'Умный', 'Скоростной', 'Творческий', 'Секретный');
  Nouns: array[1..5] of string = ('Кот', 'Пёс', 'Дракон', 'Робот', 'Герой');

function GenerateNickname: string;
var
  AdjIndex, NounIndex: Integer;
begin
  Randomize; // Инициализация генератора случайных чисел
  AdjIndex := Random(Length(Adjectives)) + 1; // Случайный индекс для прилагательного
  NounIndex := Random(Length(Nouns)) + 1; // Случайный индекс для существительного

  Result := Adjectives[AdjIndex] + ' ' + Nouns[NounIndex]; // Формирование никнейма
end;

var
  Nickname: string;
begin
  Nickname := GenerateNickname; // Генерация никнейма
  WriteLn('Ваш новый никнейм: ', Nickname); // Вывод никнейма на экран
end.