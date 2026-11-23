package org.hmwebrtc.log;

import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class LogApi {
    public static final int LOG_LEVEL_DEBUG = 1;
    public static final int LOG_LEVEL_ERROR = 4;
    public static final int LOG_LEVEL_INFO = 2;
    public static final int LOG_LEVEL_VERBOSE = 0;
    public static final int LOG_LEVEL_WARING = 3;
    private static int mCurrentLevel = 3;
    private static LogAdapter mLogAdapter;

    public static class LogMessage {
        public int level;
        public String msg;
        public long pid;
        public String tag;
        public long tid;
        public long time;
    }

    public static abstract class LogSink {
        public abstract void onLog(int i10, LogMessage logMessage);

        public void onLog(List<LogMessage> list) {
            for (LogMessage logMessage : list) {
                onLog(logMessage.level, logMessage);
            }
        }
    }

    public static void d(String str, String str2) {
        getAdapter().log(1, str, str2);
    }

    public static void e(String str, String str2) {
        getAdapter().log(4, str, str2);
    }

    private static LogAdapter getAdapter() {
        if (mLogAdapter == null) {
            mLogAdapter = new LogAdapter();
        }
        return mLogAdapter;
    }

    public static int getLevel() {
        return mCurrentLevel;
    }

    public static String getLevelString(int i10) {
        if (i10 == 0) {
            return "VER";
        }
        if (i10 == 2) {
            return "INF";
        }
        if (i10 == 1) {
            return "DBG";
        }
        if (i10 == 3) {
            return "WAR";
        }
        return i10 == 4 ? "ERR" : "NUL";
    }

    public static int getSinkCount() {
        return getAdapter().getSinkCount();
    }

    public static void i(String str, String str2) {
        getAdapter().log(2, str, str2);
    }

    public static boolean initializate(boolean z10) {
        return getAdapter().initializate(z10);
    }

    public static void registerSink(LogSink logSink) {
        getAdapter().addSink(logSink);
    }

    public static void setLevel(int i10) {
        if (i10 < 0 || i10 > 4) {
            return;
        }
        getAdapter().setLevel(i10);
        mCurrentLevel = i10;
    }

    public static void terminate() {
        getAdapter().terminate();
        mCurrentLevel = 2;
    }

    public static void unregisterAllSink() {
        getAdapter().removeAll();
    }

    public static void unregisterSink(LogSink logSink) {
        getAdapter().removeSink(logSink);
    }

    public static void v(String str, String str2) {
        getAdapter().log(0, str, str2);
    }

    public static void w(String str, String str2) {
        getAdapter().log(3, str, str2);
    }

    public static boolean initializate(boolean z10, long j10, long j11, String[] strArr) {
        return getAdapter().initializate(z10, j10, j11, strArr);
    }
}
