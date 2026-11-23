package com.j256.ormlite.logger;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public class Logger {
    private static final String ARG_STRING = "{}";
    private static final int ARG_STRING_LENGTH = 2;
    private static final int DEFAULT_FULL_MESSAGE_LENGTH = 128;
    private static final Object UNKNOWN_ARG = new Object();
    private static Level globalLevel;
    private final LogBackend backend;

    public Logger(LogBackend logBackend) {
        this.backend = logBackend;
    }

    private void appendArg(StringBuilder sb2, Object obj) {
        if (obj == UNKNOWN_ARG) {
            return;
        }
        if (obj == null) {
            sb2.append("null");
            return;
        }
        if (!obj.getClass().isArray()) {
            sb2.append(obj.toString());
            return;
        }
        sb2.append('[');
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            appendArg(sb2, Array.get(obj, i10));
        }
        sb2.append(']');
    }

    private String buildFullMessage(String str, Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        StringBuilder sb2 = null;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int iIndexOf = str.indexOf(ARG_STRING, i10);
            if (iIndexOf == -1) {
                break;
            }
            if (sb2 == null) {
                sb2 = new StringBuilder(128);
            }
            sb2.append((CharSequence) str, i10, iIndexOf);
            i10 = ARG_STRING_LENGTH + iIndexOf;
            if (objArr == null) {
                if (i11 == 0) {
                    appendArg(sb2, obj);
                } else if (i11 == 1) {
                    appendArg(sb2, obj2);
                } else if (i11 == 2) {
                    appendArg(sb2, obj3);
                } else if (i11 == 3) {
                    appendArg(sb2, obj4);
                }
            } else if (i11 < objArr.length) {
                appendArg(sb2, objArr[i11]);
            }
            i11++;
        }
        if (sb2 == null) {
            return str;
        }
        sb2.append((CharSequence) str, i10, str.length());
        return sb2.toString();
    }

    private void logIfEnabled(Level level, Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        Level level2 = globalLevel;
        if ((level2 == null || level2.isEnabled(level)) && this.backend.isLevelEnabled(level)) {
            String strBuildFullMessage = buildFullMessage(str, obj, obj2, obj3, obj4, objArr);
            if (th == null) {
                this.backend.log(level, strBuildFullMessage);
            } else {
                this.backend.log(level, strBuildFullMessage, th);
            }
        }
    }

    public static void setGlobalLogLevel(Level level) {
        globalLevel = level;
    }

    public void debug(String str) {
        Level level = Level.DEBUG;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public void error(String str) {
        Level level = Level.ERROR;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public void fatal(String str) {
        Level level = Level.FATAL;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public LogBackend getLogBackend() {
        return this.backend;
    }

    public void info(String str) {
        Level level = Level.INFO;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public boolean isLevelEnabled(Level level) {
        return this.backend.isLevelEnabled(level);
    }

    public void log(Level level, String str) {
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public void trace(String str) {
        Level level = Level.TRACE;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public void warn(String str) {
        Level level = Level.WARNING;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, null);
    }

    public void debug(String str, Object obj) {
        Level level = Level.DEBUG;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void error(String str, Object obj) {
        Level level = Level.ERROR;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void fatal(String str, Object obj) {
        Level level = Level.FATAL;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void info(String str, Object obj) {
        Level level = Level.INFO;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void log(Level level, String str, Object obj) {
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void trace(String str, Object obj) {
        Level level = Level.TRACE;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void warn(String str, Object obj) {
        Level level = Level.WARNING;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj2, obj2, null);
    }

    public void debug(String str, Object obj, Object obj2) {
        Level level = Level.DEBUG;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void error(String str, Object obj, Object obj2) {
        Level level = Level.ERROR;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void fatal(String str, Object obj, Object obj2) {
        Level level = Level.FATAL;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void info(String str, Object obj, Object obj2) {
        Level level = Level.INFO;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void log(Level level, String str, Object obj, Object obj2) {
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void trace(String str, Object obj, Object obj2) {
        Level level = Level.TRACE;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void warn(String str, Object obj, Object obj2) {
        Level level = Level.WARNING;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj2, obj3, obj3, null);
    }

    public void debug(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.DEBUG, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void error(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.ERROR, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void fatal(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.FATAL, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void info(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.INFO, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void log(Level level, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(level, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void trace(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.TRACE, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void warn(String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.WARNING, null, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void debug(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.DEBUG, null, str, obj, obj2, obj3, obj4, null);
    }

    public void error(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.ERROR, null, str, obj, obj2, obj3, obj4, null);
    }

    public void fatal(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.FATAL, null, str, obj, obj2, obj3, obj4, null);
    }

    public void info(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.INFO, null, str, obj, obj2, obj3, obj4, null);
    }

    public void log(Level level, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(level, null, str, obj, obj2, obj3, obj4, null);
    }

    public void trace(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.TRACE, null, str, obj, obj2, obj3, obj4, null);
    }

    public void warn(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.WARNING, null, str, obj, obj2, obj3, obj4, null);
    }

    public void debug(String str, Object[] objArr) {
        Level level = Level.DEBUG;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void error(String str, Object[] objArr) {
        Level level = Level.ERROR;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void fatal(String str, Object[] objArr) {
        Level level = Level.FATAL;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void info(String str, Object[] objArr) {
        Level level = Level.INFO;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void log(Level level, String str, Object[] objArr) {
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void trace(String str, Object[] objArr) {
        Level level = Level.TRACE;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void warn(String str, Object[] objArr) {
        Level level = Level.WARNING;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, null, str, obj, obj, obj, obj, objArr);
    }

    public void debug(Throwable th, String str) {
        Level level = Level.DEBUG;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void error(Throwable th, String str) {
        Level level = Level.ERROR;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void fatal(Throwable th, String str) {
        Level level = Level.FATAL;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void info(Throwable th, String str) {
        Level level = Level.INFO;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void log(Level level, Throwable th, String str) {
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void trace(Throwable th, String str) {
        Level level = Level.TRACE;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, null, null);
    }

    public void warn(Throwable th, String str) {
        Level level = Level.WARNING;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, null);
    }

    public void debug(Throwable th, String str, Object obj) {
        Level level = Level.DEBUG;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void error(Throwable th, String str, Object obj) {
        Level level = Level.ERROR;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void fatal(Throwable th, String str, Object obj) {
        Level level = Level.FATAL;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void info(Throwable th, String str, Object obj) {
        Level level = Level.INFO;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void log(Level level, Throwable th, String str, Object obj) {
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void trace(Throwable th, String str, Object obj) {
        Level level = Level.TRACE;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void warn(Throwable th, String str, Object obj) {
        Level level = Level.WARNING;
        Object obj2 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj2, obj2, null);
    }

    public void debug(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.DEBUG;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void error(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.ERROR;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void fatal(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.FATAL;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void info(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.INFO;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void log(Level level, Throwable th, String str, Object obj, Object obj2) {
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void trace(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.TRACE;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void warn(Throwable th, String str, Object obj, Object obj2) {
        Level level = Level.WARNING;
        Object obj3 = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj2, obj3, obj3, null);
    }

    public void debug(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.DEBUG, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void error(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.ERROR, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void fatal(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.FATAL, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void info(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.INFO, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void log(Level level, Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(level, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void trace(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.TRACE, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void warn(Throwable th, String str, Object obj, Object obj2, Object obj3) {
        logIfEnabled(Level.WARNING, th, str, obj, obj2, obj3, UNKNOWN_ARG, null);
    }

    public void debug(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.DEBUG, th, str, obj, obj2, obj3, obj4, null);
    }

    public void error(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.ERROR, th, str, obj, obj2, obj3, obj4, null);
    }

    public void fatal(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.FATAL, th, str, obj, obj2, obj3, obj4, null);
    }

    public void info(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.INFO, th, str, obj, obj2, obj3, obj4, null);
    }

    public void log(Level level, Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(level, th, str, obj, obj2, obj3, obj4, null);
    }

    public void trace(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.TRACE, th, str, obj, obj2, obj3, obj4, null);
    }

    public void warn(Throwable th, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        logIfEnabled(Level.WARNING, th, str, obj, obj2, obj3, obj4, null);
    }

    public void debug(Throwable th, String str, Object[] objArr) {
        Level level = Level.DEBUG;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void error(Throwable th, String str, Object[] objArr) {
        Level level = Level.ERROR;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void fatal(Throwable th, String str, Object[] objArr) {
        Level level = Level.FATAL;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void info(Throwable th, String str, Object[] objArr) {
        Level level = Level.INFO;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void log(Level level, Throwable th, String str, Object[] objArr) {
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void trace(Throwable th, String str, Object[] objArr) {
        Level level = Level.TRACE;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }

    public void warn(Throwable th, String str, Object[] objArr) {
        Level level = Level.WARNING;
        Object obj = UNKNOWN_ARG;
        logIfEnabled(level, th, str, obj, obj, obj, obj, objArr);
    }
}
