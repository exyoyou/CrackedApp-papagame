package com.j256.ormlite.logger;

/* JADX INFO: loaded from: classes5.dex */
public enum Level {
    TRACE(1),
    DEBUG(2),
    INFO(3),
    WARNING(4),
    ERROR(5),
    FATAL(6),
    OFF(7);

    private final int value;

    Level(int i10) {
        this.value = i10;
    }

    public boolean isEnabled(Level level) {
        Level level2 = OFF;
        return (this == level2 || level == level2 || this.value > level.value) ? false : true;
    }
}
