package com.haima.hmcp.language;

import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsLanguageManager {
    private static final String TAG = "AbsLanguageManager";
    private static final String SDK_PACKAGE = HmcpManager.class.getPackage().getName();
    public static boolean IS_AUTO_BY_SYSTEM = true;

    private AbsLanguageManager getInstance() {
        return LanguageManager.getImpl();
    }

    public Language getCurrentLanguage() {
        return getInstance().getCurrentLanguage();
    }

    public int getCurrentLanguageConfigLevel() {
        return getInstance().getCurrentLanguageConfigLevel();
    }

    public boolean updateLanguage(String str, String str2, int i10) {
        LogUtils.d(TAG, str2 + " updateLanguage: languageConfig = " + str + " ,languageManager = " + this + " ,languageConfigLevel = " + i10);
        if (toString().contains(SDK_PACKAGE)) {
            return getInstance().updateLanguage(str, str2, i10);
        }
        return false;
    }
}
