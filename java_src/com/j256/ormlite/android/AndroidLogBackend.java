package com.j256.ormlite.android;

import android.util.Log;
import com.j256.ormlite.logger.Level;
import com.j256.ormlite.logger.LogBackend;
import com.j256.ormlite.logger.LogBackendFactory;
import com.j256.ormlite.logger.LoggerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidLogBackend implements LogBackend {
    private static final String ALL_LOGS_NAME = "ORMLite";
    private static final int MAX_TAG_LENGTH = 23;
    private static final int REFRESH_LEVEL_CACHE_EVERY = 200;
    private final String className;
    private final boolean[] levelCache;
    private volatile int levelCacheC = 0;

    /* JADX INFO: renamed from: com.j256.ormlite.android.AndroidLogBackend$1, reason: invalid class name */
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

    public static class AndroidLogBackendFactory implements LogBackendFactory {
        @Override // com.j256.ormlite.logger.LogBackendFactory
        public LogBackend createLogBackend(String str) {
            return new AndroidLogBackend(str);
        }
    }

    public AndroidLogBackend(String str) {
        String simpleClassName = LoggerFactory.getSimpleClassName(str);
        int length = simpleClassName.length();
        this.className = length > 23 ? str.substring(length - 23, length) : simpleClassName;
        int i10 = 0;
        for (Level level : Level.values()) {
            int iLevelToAndroidLevel = levelToAndroidLevel(level);
            if (iLevelToAndroidLevel > i10) {
                i10 = iLevelToAndroidLevel;
            }
        }
        this.levelCache = new boolean[i10 + 1];
        refreshLevelCache();
    }

    private boolean isLevelEnabledInternal(int i10) {
        return Log.isLoggable(this.className, i10) || Log.isLoggable(ALL_LOGS_NAME, i10);
    }

    private int levelToAndroidLevel(Level level) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
        if (i10 == 1) {
            return 2;
        }
        if (i10 == 2) {
            return 3;
        }
        if (i10 != 3) {
            return (i10 == 4 || i10 == 5) ? 6 : 4;
        }
        return 5;
    }

    private void refreshLevelCache() {
        for (Level level : Level.values()) {
            int iLevelToAndroidLevel = levelToAndroidLevel(level);
            boolean[] zArr = this.levelCache;
            if (iLevelToAndroidLevel < zArr.length) {
                zArr[iLevelToAndroidLevel] = isLevelEnabledInternal(iLevelToAndroidLevel);
            }
        }
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public boolean isLevelEnabled(Level level) {
        int i10 = this.levelCacheC + 1;
        this.levelCacheC = i10;
        if (i10 >= 200) {
            refreshLevelCache();
            this.levelCacheC = 0;
        }
        int iLevelToAndroidLevel = levelToAndroidLevel(level);
        boolean[] zArr = this.levelCache;
        return iLevelToAndroidLevel < zArr.length ? zArr[iLevelToAndroidLevel] : isLevelEnabledInternal(iLevelToAndroidLevel);
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str, Throwable th) {
        int i10 = AnonymousClass1.$SwitchMap$com$j256$ormlite$logger$Level[level.ordinal()];
    }
}
