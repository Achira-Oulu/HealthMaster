#include "timerclass.h"

TimerClass::TimerClass(QObject *parent)

    : QObject{parent}
    , m_timeDisplay( QString () )
    , m_seconds (0)
    , m_minutes  (0)

{
    m_timer = new QTimer ( this );
    m_timer ->setInterval(1000);

    connect (m_timer, &QTimer::timeout, this, &TimerClass::timeTicker);
    m_timer ->start();
}
QString TimerClass::timeDisplay()
{
    return m_timeDisplay;
}

void TimerClass::setTimeDisplay ( QString display )
{
    if (m_timeDisplay != display)
    {
        m_timeDisplay = display;
        emit timeDisplayChanged();
    }
}
void TimerClass::timeTicker()
{
    m_seconds++;

    if (m_seconds >= 60)
    {
        m_seconds = 0;
        m_minutes++;
    }

    QString outText;

    if(m_minutes < 10)
    {
        outText.append("0");
    }

    outText.append(QString::number(m_minutes));

    outText.append(":");

    if(m_seconds < 10)
    {
        outText.append("0");
    }
    outText.append(QString::number(m_seconds));

    setTimeDisplay(outText);

}

void TimerClass::pauseTimer()
{
    m_timer ->stop();
}
void TimerClass::resumeTimer()
{
    m_timer ->start();
}
