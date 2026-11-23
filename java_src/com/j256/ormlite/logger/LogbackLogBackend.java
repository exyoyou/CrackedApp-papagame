package com.j256.ormlite.logger;

import org.slf4j.ILoggerFactory;
import org.slf4j.impl.StaticLoggerBinder;

/* JADX INFO: loaded from: classes5.dex */
public class LogbackLogBackend implements LogBackend {
    private final org.slf4j.Logger logger;

    /* JADX INFO: renamed from: com.j256.ormlite.logger.LogbackLogBackend$1, reason: invalid class name */
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

    public static class LogbackLogBackendFactory implements LogBackendFactory {
        private final ILoggerFactory factory = StaticLoggerBinder.getSingleton().getLoggerFactory();

        @Override // com.j256.ormlite.logger.LogBackendFactory
        public LogBackend createLogBackend(String str) {
            return new LogbackLogBackend(this.factory.getLogger(str));
        }
    }

    public LogbackLogBackend(org.slf4j.Logger logger) {
        this.logger = logger;
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public boolean isLevelEnabled(Level level) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            return this.logger.isTraceEnabled();
        }
        if (i10 == 2) {
            return this.logger.isDebugEnabled();
        }
        if (i10 == 3) {
            return this.logger.isWarnEnabled();
        }
        if (i10 != 4) {
            return i10 != 5 ? this.logger.isInfoEnabled() : this.logger.isErrorEnabled();
        }
        return this.logger.isErrorEnabled();
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            this.logger.trace(str);
            return;
        }
        if (i10 == 2) {
            this.logger.debug(str);
            return;
        }
        if (i10 == 3) {
            this.logger.warn(str);
            return;
        }
        if (i10 == 4) {
            this.logger.error(str);
        } else if (i10 != 5) {
            this.logger.info(str);
        } else {
            this.logger.error(str);
        }
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str, Throwable th) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            this.logger.trace(str, th);
            return;
        }
        if (i10 == 2) {
            this.logger.debug(str, th);
            return;
        }
        if (i10 == 3) {
            this.logger.warn(str, th);
            return;
        }
        if (i10 == 4) {
            this.logger.error(str, th);
        } else if (i10 != 5) {
            this.logger.info(str, th);
        } else {
            this.logger.error(str, th);
        }
    }
}
