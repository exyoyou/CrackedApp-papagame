package com.haima.hmcp.beans;

import android.text.TextUtils;
import com.haima.hmcp.BuildConfig;
import com.haima.hmcp.language.AbsLanguageManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class Language {
    public static final String LANGUAGE_CONFIG = "language_config";
    private static final AbsLanguageManager LANGUAGE_MANAGER;
    private static final ArrayList<Language> SUPPORTED_LANGUAGES;
    private static final HashSet<String> SUPPORTED_LANGUAGE_CONFIG_SET;
    private static final String TAG = "Language";
    private final String mConfig;
    private final Locale mLocale;
    private final String mName;

    static {
        ArrayList<Language> arrayList = new ArrayList<>();
        SUPPORTED_LANGUAGES = arrayList;
        LANGUAGE_MANAGER = new AbsLanguageManager() { // from class: com.haima.hmcp.beans.Language.1
        };
        HashSet<String> hashSet = new HashSet<>();
        SUPPORTED_LANGUAGE_CONFIG_SET = hashSet;
        String[] strArr = BuildConfig.SUPPORT_LANGUAGE_CONFIG_ARRAY;
        if (strArr == null || strArr.length >= 1 || TextUtils.equals(getAmericanEnglishConfig(), BuildConfig.SDK_DEFAULT_LANGUAGE)) {
            Locale locale = Locale.US;
            arrayList.add(new Language(locale.getDisplayName(locale), getAmericanEnglishConfig(), locale));
        } else {
            LogUtils.d(TAG, "BuildConfig.SDK_DEFAULT_LANGUAGE zh_CN , BuildConfig.SUPPORT_LANGUAGE_CONFIG_ARRAY " + JsonUtil.toJsonString(strArr));
        }
        LogUtils.d(TAG, "BuildConfig.SDK_DEFAULT_LANGUAGE zh_CN , BuildConfig.SUPPORT_LANGUAGE_CONFIG_ARRAY " + JsonUtil.toJsonString(strArr));
        hashSet.add(BuildConfig.SDK_DEFAULT_LANGUAGE);
        Collections.addAll(hashSet, strArr);
        for (String str : hashSet) {
            if (!TextUtils.isEmpty(str)) {
                ArrayList<Language> arrayList2 = SUPPORTED_LANGUAGES;
                if (!arrayList2.contains(getLanguageByConfig(str))) {
                    String[] strArrSplit = str.split("_");
                    if (strArrSplit == null) {
                        LogUtils.d(TAG, "languageAndCountry == null,continue");
                    } else {
                        String str2 = strArrSplit[0];
                        String str3 = strArrSplit.length == 2 ? strArrSplit[1] : "";
                        LogUtils.d(TAG, " languageAndCountry " + JsonUtil.toJsonString(strArrSplit));
                        Locale locale2 = new Locale(str2, str3);
                        Language language = new Language(locale2.getDisplayName(locale2), str, locale2);
                        LogUtils.d(TAG, "static init SupportedLanguages by BuildConfig.SUPPORT_LANGUAGE_CONFIG_ARRAY " + language);
                        arrayList2.add(language);
                    }
                }
            }
        }
        LogUtils.d(TAG, "static init SupportedLanguages " + JsonUtil.toJsonString(SUPPORTED_LANGUAGES));
    }

    private Language(String str, String str2, Locale locale) {
        this.mName = str;
        this.mConfig = str2;
        this.mLocale = locale;
    }

    public static String getAmericanEnglishConfig() {
        return "en_US";
    }

    public static Language getCurrentLanguage() {
        return LANGUAGE_MANAGER.getCurrentLanguage();
    }

    public static int getCurrentLanguageConfigLevel() {
        return LANGUAGE_MANAGER.getCurrentLanguageConfigLevel();
    }

    public static Language getDefaultLanguage() {
        return getLanguageByConfig(BuildConfig.SDK_DEFAULT_LANGUAGE);
    }

    public static Language getLanguageByConfig(String str) {
        if (!isSupportConfig(str)) {
            return null;
        }
        String[] strArrSplit = str.split("_");
        String str2 = strArrSplit[0];
        String str3 = strArrSplit.length > 1 ? strArrSplit[1] : "";
        for (Language language : getSupportedLanguages()) {
            if (TextUtils.equals(language.mConfig, str)) {
                LogUtils.d(TAG, str + " is matched");
                return language;
            }
        }
        for (Language language2 : getSupportedLanguages()) {
            if (TextUtils.equals(language2.mConfig, str2 + "_" + str3)) {
                LogUtils.d(TAG, str + " is matched by " + str2 + "_" + str3);
                return language2;
            }
        }
        for (Language language3 : getSupportedLanguages()) {
            if (language3.mConfig.contains(str2)) {
                LogUtils.d(TAG, str + " is fuzzy matched by " + str2);
                return language3;
            }
        }
        return null;
    }

    public static String getSimplifiedChineseConfig() {
        return BuildConfig.SDK_DEFAULT_LANGUAGE;
    }

    public static HashSet<String> getSupportedLanguageConfigSet() {
        return SUPPORTED_LANGUAGE_CONFIG_SET;
    }

    public static ArrayList<Language> getSupportedLanguages() {
        return SUPPORTED_LANGUAGES;
    }

    public static boolean isSupportConfig(String str) {
        boolean z10;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<Language> it2 = getSupportedLanguages().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            if (TextUtils.equals(it2.next().mConfig, str)) {
                LogUtils.d(TAG, str + " is exact match");
                z10 = true;
                break;
            }
        }
        String[] strArrSplit = str.split("_");
        if (strArrSplit == null || strArrSplit.length < 1) {
            LogUtils.d(TAG, str + " split end is empty or null,return " + z10);
            return z10;
        }
        String str2 = strArrSplit[0];
        String str3 = strArrSplit.length > 1 ? strArrSplit[1] : "";
        Iterator<Language> it3 = getSupportedLanguages().iterator();
        while (it3.hasNext()) {
            if (TextUtils.equals(it3.next().mConfig, str2 + "_" + str3)) {
                LogUtils.d(TAG, str + " is exact match");
                z10 = true;
                break;
            }
        }
        Iterator<Language> it4 = getSupportedLanguages().iterator();
        while (it4.hasNext()) {
            if (it4.next().mConfig.contains(str2)) {
                LogUtils.d(TAG, str + " is fuzzy match");
                return true;
            }
        }
        return z10;
    }

    public String getConfig() {
        return this.mConfig;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public String getName() {
        return this.mName;
    }

    public String toString() {
        return "Language{name='" + this.mName + "', config='" + this.mConfig + "', Locale=" + this.mLocale + '}';
    }
}
