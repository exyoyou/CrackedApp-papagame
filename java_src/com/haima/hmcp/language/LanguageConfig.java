package com.haima.hmcp.language;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public class LanguageConfig {
    public static int COMPARISON_BASE = 10;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Level {
        public static final int CONTROL_PLAY = 2;
        public static final int INIT_SDK = 0;
        public static final int PLAY_BY_BUNDLE = 1;
        public static final int SDK_DEFAULT = 40;
        public static final int UPDATE_BY_LOCAL_CONTROL_PLAY = 12;
        public static final int UPDATE_BY_LOCAL_INIT_SDK = 10;
        public static final int UPDATE_BY_LOCAL_PLAY_BY_BUNDLE = 11;
        public static final int UPDATE_BY_SAAS_CONFIG = 20;
        public static final int UPDATE_BY_SAAS_GLOBAL_CONFIG = 30;
    }
}
