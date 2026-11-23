package com.j256.ormlite.logger;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: classes5.dex */
public class CommonsLoggingLogBackend implements LogBackend {
    private final Log log;

    /* JADX INFO: renamed from: com.j256.ormlite.logger.CommonsLoggingLogBackend$1, reason: invalid class name */
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

    public static class CommonsLoggingLogBackendFactory implements LogBackendFactory {
        @Override // com.j256.ormlite.logger.LogBackendFactory
        public LogBackend createLogBackend(String str) {
            return new CommonsLoggingLogBackend(str);
        }
    }

    public CommonsLoggingLogBackend(String str) {
        this.log = LogFactory.getLog(str);
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public boolean isLevelEnabled(Level level) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            return this.log.isTraceEnabled();
        }
        if (i10 == 2) {
            return this.log.isDebugEnabled();
        }
        if (i10 == 3) {
            return this.log.isWarnEnabled();
        }
        if (i10 != 4) {
            return i10 != 5 ? this.log.isInfoEnabled() : this.log.isFatalEnabled();
        }
        return this.log.isErrorEnabled();
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            this.log.trace(str);
            return;
        }
        if (i10 == 2) {
            this.log.debug(str);
            return;
        }
        if (i10 == 3) {
            this.log.warn(str);
            return;
        }
        if (i10 == 4) {
            this.log.error(str);
        } else if (i10 != 5) {
            this.log.info(str);
        } else {
            this.log.fatal(str);
        }
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str, Throwable th) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            this.log.trace(str, th);
            return;
        }
        if (i10 == 2) {
            this.log.debug(str, th);
            return;
        }
        if (i10 == 3) {
            this.log.warn(str, th);
            return;
        }
        if (i10 == 4) {
            this.log.error(str, th);
        } else if (i10 != 5) {
            this.log.info(str, th);
        } else {
            this.log.fatal(str, th);
        }
    }
}
