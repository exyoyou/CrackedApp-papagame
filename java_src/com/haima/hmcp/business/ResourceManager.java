package com.haima.hmcp.business;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.PluralsRes;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class ResourceManager {
    public static final String TAG = "ResourceManager";

    @SuppressLint({"StaticFieldLeak"})
    private static ResourceManager mResourceManager;
    private static Language sCurrentLanguage = Language.getDefaultLanguage();
    private Context mContext;
    private int mNewResourceMinOSVersionCode = 26;
    private Resources mResources;
    private String resPath;

    private ResourceManager() {
    }

    @SuppressLint({"DiscouragedPrivateApi"})
    private AssetManager createAssetManager(String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            try {
                AssetManager.class.getDeclaredMethod("addAssetPath", String.class).invoke(assetManager, str);
            } catch (Exception e10) {
                LogUtils.e(TAG, "createAssetManager Exception", e10);
            }
            return assetManager;
        } catch (Exception e11) {
            LogUtils.e(TAG, "createAssetManager Exception", e11);
            return null;
        }
    }

    @RequiresApi(api = 17)
    private Context getContextConfigurationContext() {
        Configuration configuration = this.mContext.getResources().getConfiguration();
        configuration.locale = sCurrentLanguage.getLocale();
        return this.mContext.createConfigurationContext(configuration);
    }

    private static String getHexResId(@StringRes int i10) {
        return Integer.toHexString(i10);
    }

    public static ResourceManager getInstance() {
        if (mResourceManager == null) {
            mResourceManager = new ResourceManager();
        }
        return mResourceManager;
    }

    private static String getPluralsResId(@PluralsRes int i10) {
        return Integer.toHexString(i10);
    }

    public static String getQuantityString(@PluralsRes int i10, int i11, Object... objArr) {
        ResourceManager resourceManager = mResourceManager;
        String resourceQuantityString = resourceManager != null ? resourceManager.getResourceQuantityString(i10, i11, objArr) : "";
        LogUtils.d(TAG, "ResourceManager::getQuantityString language = " + sCurrentLanguage + ", resId = " + getPluralsResId(i10) + " quantity = " + i11 + " formatArgs = " + JsonUtil.toJsonString(objArr) + " , result = " + resourceQuantityString);
        return resourceQuantityString;
    }

    private String getQuantityStringByOldWay(@PluralsRes int i10, int i11, Object[] objArr) {
        Locale locale = sCurrentLanguage.getLocale();
        Context context = this.mContext;
        if (context == null) {
            LogUtils.d(TAG, "getQuantityStringByOldWay: resId = " + getPluralsResId(i10) + ", mContext == null return empty");
            return "";
        }
        Resources resources = context.getResources();
        Locale locale2 = resources.getConfiguration().locale;
        if (locale.equals(locale2)) {
            String quantityString = resources.getQuantityString(i10, i11, objArr);
            LogUtils.d(TAG, "getQuantityStringByOldWay: resId = " + getPluralsResId(i10) + " quantity = " + i11 + " formatArgs = " + JsonUtil.toJsonString(objArr) + "oriLocale and current is same " + locale2 + " result = " + quantityString);
            return quantityString;
        }
        resources.getConfiguration().locale = locale;
        resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
        String quantityString2 = resources.getQuantityString(i10, i11, objArr);
        resources.getConfiguration().locale = locale2;
        resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
        LogUtils.d(TAG, "getQuantityStringByOldWay: resId = " + getPluralsResId(i10) + " quantity = " + i11 + " formatArgs = " + JsonUtil.toJsonString(objArr) + "oriLocale = " + locale2 + " locale = " + locale + " result = " + quantityString2);
        return quantityString2;
    }

    private String getResourceQuantityString(@PluralsRes int i10, int i11, Object... objArr) {
        if (Build.VERSION.SDK_INT < this.mNewResourceMinOSVersionCode) {
            return getQuantityStringByOldWay(i10, i11, objArr);
        }
        Resources resources = this.mResources;
        if (resources != null) {
            return resources.getQuantityString(i10, i11, objArr);
        }
        Context context = this.mContext;
        if (context == null) {
            return "";
        }
        getResources(context, this.resPath);
        return getResourceQuantityString(i10, i11, objArr);
    }

    private String getResourceString(@StringRes int i10) {
        if (Build.VERSION.SDK_INT < this.mNewResourceMinOSVersionCode) {
            return getResourceStringOldWay(i10);
        }
        Resources resources = this.mResources;
        if (resources != null) {
            return resources.getString(i10);
        }
        Context context = this.mContext;
        if (context == null) {
            return "";
        }
        getResources(context, this.resPath);
        return getResourceString(i10);
    }

    private String getResourceStringOldWay(@StringRes int i10) {
        Locale locale = sCurrentLanguage.getLocale();
        Context context = this.mContext;
        if (context == null) {
            LogUtils.d(TAG, "getResourceStringOldWay: resId = " + getHexResId(i10) + ", mContext == null return empty");
            return "";
        }
        Resources resources = context.getResources();
        Locale locale2 = resources.getConfiguration().locale;
        if (locale.equals(locale2)) {
            String string = resources.getString(i10);
            LogUtils.d(TAG, "getResourceStringOldWay: resId = " + getHexResId(i10) + "oriLocale and current is same " + locale2 + " result = " + string);
            return string;
        }
        resources.getConfiguration().locale = locale;
        resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
        String string2 = resources.getString(i10);
        resources.getConfiguration().locale = locale2;
        resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
        LogUtils.d(TAG, "getResourceStringOldWay: resId = " + getHexResId(i10) + "oriLocale = " + locale2 + " locale = " + locale + " result = " + string2);
        return string2;
    }

    public static String getString(@StringRes int i10) {
        ResourceManager resourceManager = mResourceManager;
        String resourceString = resourceManager != null ? resourceManager.getResourceString(i10) : "";
        LogUtils.d(TAG, "ResourceManager::getString language = " + sCurrentLanguage + ", resId = " + getHexResId(i10) + " , result = " + resourceString);
        return resourceString;
    }

    private boolean hasInit() {
        ResourceManager resourceManager = mResourceManager;
        return (resourceManager == null || resourceManager.mResources == null) ? false : true;
    }

    private void updateResourcesConfigurationForOld(Resources resources) {
        if (resources == null) {
            return;
        }
        Configuration configuration = resources.getConfiguration();
        Locale locale = sCurrentLanguage.getLocale();
        if (locale.equals(configuration.locale)) {
            return;
        }
        configuration.locale = locale;
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        LogUtils.d(TAG, "updateResourcesConfigurationForLowerApi21: locale updated to " + locale);
    }

    public int getResourceId(Context context, String str, String str2) {
        return getResources().getIdentifier(str2, str, "com.haima.me.plugin");
    }

    public Resources getResources() {
        return this.mResources;
    }

    public void init(Context context, String str) {
        if (context == null) {
            LogUtils.e(TAG, "init context can't be null,return");
            return;
        }
        if (hasInit()) {
            LogUtils.i(TAG, "ResourceManager already init! resPath= " + str);
            return;
        }
        this.mResources = getResources(context, str);
        LogUtils.i(TAG, "ResourceManager init success! resPath= " + str);
    }

    public void updateLanguage(Language language) {
        if (language == null) {
            LogUtils.d(TAG, "updateLanguage language == null,return");
            return;
        }
        if (!TextUtils.equals(sCurrentLanguage.getConfig(), language.getConfig())) {
            sCurrentLanguage = language;
            getResources(this.mContext, this.resPath);
            return;
        }
        LogUtils.d(TAG, "updateLanguage " + language + "and current is same ,return");
    }

    public void updateResourceByOSVersionCode(int i10) {
        LogUtils.d(TAG, "setResourceLevel:" + i10 + ",mContext:" + this.mContext + ",resPath:" + this.resPath);
        if (i10 < 17) {
            i10 = 17;
        }
        this.mNewResourceMinOSVersionCode = i10;
        getResources(this.mContext, this.resPath);
    }

    private Resources getResources(Context context, String str) {
        if (context == null) {
            LogUtils.d(TAG, "context can not be null!,return");
            return null;
        }
        int i10 = Build.VERSION.SDK_INT;
        this.mContext = context.getApplicationContext();
        this.resPath = str;
        boolean z10 = i10 >= this.mNewResourceMinOSVersionCode;
        LogUtils.d(TAG, "getResources:" + ("mNewResourceMinOSVersionCode:" + this.mNewResourceMinOSVersionCode + ",apkPath:" + str + ",osSdkInt:" + i10 + ",useNewResource:" + z10));
        if (!TextUtils.isEmpty(str)) {
            AssetManager assetManagerCreateAssetManager = createAssetManager(str);
            if (z10) {
                Context contextConfigurationContext = getContextConfigurationContext();
                this.mResources = new Resources(assetManagerCreateAssetManager, contextConfigurationContext.getResources().getDisplayMetrics(), contextConfigurationContext.getResources().getConfiguration());
            } else {
                Resources resources = new Resources(assetManagerCreateAssetManager, this.mContext.getResources().getDisplayMetrics(), this.mContext.getResources().getConfiguration());
                this.mResources = resources;
                updateResourcesConfigurationForOld(resources);
            }
        } else if (z10) {
            this.mResources = getContextConfigurationContext().getResources();
        } else {
            Resources resources2 = context.getResources();
            this.mResources = resources2;
            updateResourcesConfigurationForOld(resources2);
        }
        return this.mResources;
    }
}
