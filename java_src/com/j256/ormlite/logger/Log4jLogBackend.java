package com.j256.ormlite.logger;

/* JADX INFO: loaded from: classes5.dex */
public class Log4jLogBackend implements LogBackend {
    private final org.apache.log4j.Logger logger;

    /* JADX INFO: renamed from: com.j256.ormlite.logger.Log4jLogBackend$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$logger$Level;

        static {
            int[] iArr = new int[Level.values().length];
            $SwitchMap$com$j256$ormlite$logger$Level = iArr;
            try {
                iArr[Level.TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Level[Level.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Level[Level.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Level[Level.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Level[Level.FATAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Level[Level.INFO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static class Log4jLogBackendFactory implements LogBackendFactory {
        @Override // com.j256.ormlite.logger.LogBackendFactory
        public LogBackend createLogBackend(String str) {
            return new Log4jLogBackend(str);
        }
    }

    public Log4jLogBackend(String str) {
        this.logger = org.apache.log4j.Logger.getLogger(str);
    }

    private org.apache.log4j.Level levelToLog4jLevel(Level level) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            return org.apache.log4j.Level.TRACE;
        }
        if (i10 == 2) {
            return org.apache.log4j.Level.DEBUG;
        }
        if (i10 == 3) {
            return org.apache.log4j.Level.WARN;
        }
        if (i10 != 4) {
            return i10 != 5 ? org.apache.log4j.Level.INFO : org.apache.log4j.Level.FATAL;
        }
        return org.apache.log4j.Level.ERROR;
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public boolean isLevelEnabled(Level level) {
        return this.logger.isEnabledFor(levelToLog4jLevel(level));
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str) {
        this.logger.log(levelToLog4jLevel(level), str);
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str, Throwable th) {
        this.logger.log(levelToLog4jLevel(level), str, th);
    }
}
