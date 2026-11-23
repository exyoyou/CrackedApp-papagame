package com.haima.hmcp.language;

import com.haima.hmcp.beans.Language;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
class LanguageManager extends AbsLanguageManager {
    private static final String TAG = "LanguageManager";
    private static final LanguageManager INSTANCE = new LanguageManager();
    private static volatile Language sCurrentLanguage = Language.getDefaultLanguage();
    private static volatile int sCurrentLanguageConfigLevel = 40;

    private LanguageManager() {
    }

    static AbsLanguageManager getImpl() {
        return INSTANCE;
    }

    @Override // com.haima.hmcp.language.AbsLanguageManager
    public Language getCurrentLanguage() {
        return sCurrentLanguage;
    }

    @Override // com.haima.hmcp.language.AbsLanguageManager
    public int getCurrentLanguageConfigLevel() {
        LogUtils.d(TAG, "sCurrentLanguageConfigLevel = " + sCurrentLanguageConfigLevel);
        return sCurrentLanguageConfigLevel;
    }

    @Override // com.haima.hmcp.language.AbsLanguageManager
    public boolean updateLanguage(String str, String str2, int i10) {
        Language languageByConfig = Language.getLanguageByConfig(str);
        if (languageByConfig == null || i10 / LanguageConfig.COMPARISON_BASE > sCurrentLanguageConfigLevel / LanguageConfig.COMPARISON_BASE) {
            LogUtils.d(TAG, str2 + " updateLanguage fail,languageConfig is : " + str + " not Support or languageConfigLevel " + i10 + " > sCurrentLanguageConfigLevel " + sCurrentLanguageConfigLevel);
            return false;
        }
        LogUtils.d(TAG, str2 + " updateLanguage success,origin " + sCurrentLanguage + " update to " + languageByConfig + "sCurrentLanguageConfigLevel " + sCurrentLanguageConfigLevel + " ,languageConfigLevel = " + i10);
        sCurrentLanguageConfigLevel = i10;
        sCurrentLanguage = languageByConfig;
        ResourceManager.getInstance().updateLanguage(languageByConfig);
        return true;
    }
}
