#ifndef TIMERCLASS_H
#define TIMERCLASS_H

#include <QObject>
#include <QTimer>

class TimerClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString timeDisplay READ timeDisplay WRITE setTimeDisplay NOTIFY timeDisplayChanged)

    public:
        explicit TimerClass(QObject *parent = nullptr);
        QString timeDisplay();

    public slots:
        void setTimeDisplay( QString display );
        void timeTicker();
        void pauseTimer();
        void resumeTimer();
        void resetTimer();

    signals:
        void timeDisplayChanged();
    private:
        QString m_timeDisplay;
        QTimer * m_timer;

        int m_seconds;
        int m_minutes;

};

#endif // TIMERCLASS_H
