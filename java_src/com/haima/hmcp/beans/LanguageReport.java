package com.haima.hmcp.beans;

import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class LanguageReport {
    public static final String LANGUAGE_REPORT_ID = "15488";
    private static final String TAG = "LanguageReport";
    private static LanguageReport sInstance = new LanguageReport();
    public String timeZone = TimeZone.getDefault().getDisplayName(false, 0, Locale.US);
    public String language = Language.getCurrentLanguage().getConfig();
    public int languageConfigLevel = Language.getCurrentLanguageConfigLevel();
    public final String sdkDefaultLanguage = Language.getDefaultLanguage().getConfig();
    public String systemLanguage = Locale.getDefault().toString();
    public final String versionName = Constants.SDK_VERSION;
    public final HashSet<String> supportedLanguageConfigSet = Language.getSupportedLanguageConfigSet();
    public boolean isPlayBy211 = true;

    private LanguageReport() {
    }

    public static LanguageReport getInstance() {
        return sInstance;
    }

    public void report() {
        this.timeZone = TimeZone.getDefault().getDisplayName(false, 0, Locale.US);
        this.language = Language.getCurrentLanguage().getConfig();
        this.languageConfigLevel = Language.getCurrentLanguageConfigLevel();
        this.systemLanguage = Locale.getDefault().toString();
        LogUtils.d(TAG, "report " + this);
        CountlyUtil.recordEvent(LANGUAGE_REPORT_ID, toString());
    }

    public String toString() {
        return JsonUtil.toJsonString(this);
    }

    public LanguageReport updateIsPlayBy211(boolean z10) {
        this.isPlayBy211 = z10;
        return this;
    }
}
