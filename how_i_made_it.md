## Продумывание идеи

Первым делом я попытался сформулировать проблему, которую мое приложение собиралось решить. Это не должно было стать типичным приложением, которое показывает сколько я потратил, сколько заработал и сколько осталось. Это приложение должно было помочь мне планировать траты, чтобы всегда знать сколько у меня есть свободных денег сейчас, сколько будет через месяц и какие траты я могу делать сейчас, а какие нужно перенести

## Минималистичный дизайн

Вдохновляюсь изучая примеры дизайном на pinterest, dribble, behance, чтобы пирдумать, как будет выглядеть мое приложение
Вообще меня вдохновляют минималистичные дизайны. Я считаю подобный типа дизайна это то идеальное, к чему мы должны стремиться. Из большого потока информации, различных приложений чатов и тд, минималистичный дизайн помогает видеть важное, концентрироваться на том, что нужно прямо сейчас. Это уменьшает уровень стресса и повышает продуктивность и концентрацию. А значит и решает ту важную проблему, для которой сделано приложение

https://dribbble.com/shots/6259293-Sleep-Tracker-App/attachments

Я сохранил несколькко интересных решений и приступил к реализации своего в фигме. Я не эксперт по фигме, но это отличный инструмент для проектирования ui/ux приложений, им часто пользуются дизайнеры. А чтобы овладеть базовыми навыками работы с этиим инструментом достаточно потратить пары часов.

Я понял, что на фоне моего приложения должны быть расслабляющая красиво отрисованная картинка. А также самая важная информация. Я полез в сток, чтобы найти

## Flutter

## День 1
За первый день, я разобрался как создавать и запускать приложение в эмуляторе, что такое виджеты, какие есть основные виджеты для организации лэйаута приложения и как делать базовую стилизацию типа размера, отступов и цветов

1. Убрал MaterialApp. Изучаем основные виджеты Row и Column. Рассказать про них, особенность кастомизации, направление и тд
https://docs.flutter.dev/development/ui/layout
 Note: Row and Column are basic primitive widgets for horizontal and vertical layouts—these low-level widgets allow for maximum customization. Flutter also offers specialized, higher level widgets that might be sufficient for your needs. For example, instead of Row you might prefer ListTile, an easy-to-use widget with properties for leading and trailing icons, and up to 3 lines of text. Instead of Column, you might prefer ListView, a column-like layout that automatically scrolls if its content is too long to fit the available space. For more information, see Common layout widgets.
2. Ошибка No Directionality widget found
3. Ошибка Vertical RenderFlex with CrossAxisAlignment.start has a null textDirection, so the alignment cannot be resolved
Важный поинт по поводу направления контента виджетов Column и Row
https://api.flutter.dev/flutter/widgets/Column/Column.html
4. Добавил градиент для фона
5. Далее я искал как сделать расстояние между элементами в колонке (Пока не нашел)
https://stackoverflow.com/questions/52774921/space-between-columns-children-in-flutter
6. Разделил на компоненты Stateless and Statefull widgets


Добавление картинок и иконок
Футер
Шрифты
Анимация
Состояние приложения

## День 2
1. Понял что мне не нравится шрифт. Долго выбирал
https://fonts.google.com/specimen/Nunito?preview.text=Yor%20Finance%20Today&preview.text_type=custom
https://docs.flutter.dev/cookbook/design/fonts
2. Привел немного в порядок компонент статистики. Столкнулся с проблемой выравнивания, а оказалось просто, что я зафиксировал высоту блока, из-за этого текст не помещался
3. Подключил иконки
4. Делаю футер. Узнал как приклеить блок к низу. Есть несколько способ реализации sticky блока, я выбрал использование Positioned виджета. Но столкнулся с проблемой что Positioned может быть только в Stack. В итоге растянулся компонент _StatListState на всю высоту