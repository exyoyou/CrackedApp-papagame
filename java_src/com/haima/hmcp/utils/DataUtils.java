package com.haima.hmcp.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.haima.hmcp.business.HmcpRequestManager;
import com.haima.hmcp.countly.CountlyUtil;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class DataUtils {
    public static final String ADVERT_NAME = "advert_name";
    public static final String CID_CACHE_EXPIRE_TIME = "cid_cache_expire_time";
    public static final String CID_CACHE_INTERVAL = "cid_cache_interval";
    public static final String CLIENT_KEY = "client_key";
    public static final String CONFIG_INFO_KEY = "config_info_key";
    public static final String COUNTLY_DEVICE_ID = "countly_device_id";
    private static final String IS_DATA_REPORT_ENABLED_KEY = "hmcp_is_data_report_enabled";
    private static final String PREFERENCE_NAME = "saas_sdk_preferences";
    private static final int REPORT_LEN = 120;
    public static final String SPEED_PLAY_TIME = "speed_play_time";
    public static final String SPEED_URL = "speed_url";
    private static final String TAG = "DataUtils";
    private static final int VALUE_MAX_LEN_TO_REPORT = 320;
    private static DataUtils mInstance;
    private static SharedPreferences sharedPreferences;
    ExecutorService executorService = Executors.newSingleThreadExecutor();

    private boolean checkSpIsNull() {
        return sharedPreferences == null;
    }

    private void clearCache() {
        clearSp();
        putPreferences(IS_DATA_REPORT_ENABLED_KEY, false);
    }

    private void clearSp() {
        if (checkSpIsNull()) {
            return;
        }
        this.executorService.submit(new Runnable() { // from class: com.haima.hmcp.utils.DataUtils.5
            @Override // java.lang.Runnable
            public void run() {
                LogUtils.d(DataUtils.TAG, "Thread name:" + Thread.currentThread().getName());
                SharedPreferences.Editor editorEdit = DataUtils.sharedPreferences.edit();
                editorEdit.clear();
                editorEdit.commit();
            }
        });
    }

    public static DataUtils getSharedInstance(Context context) {
        if (mInstance == null) {
            synchronized (DataUtils.class) {
                if (mInstance == null) {
                    mInstance = new DataUtils();
                    sharedPreferences = context.getApplicationContext().getSharedPreferences(PREFERENCE_NAME, 0);
                }
            }
        }
        return mInstance;
    }

    public String getCidPreferences(String str, String str2) {
        if (checkSpIsNull()) {
            return str2;
        }
        String string = sharedPreferences.getString(HmcpRequestManager.CID_KEY, str2);
        String str3 = TAG;
        LogUtils.d(str3, "getCidPreferences(),key=" + str + ", mapString=" + string + ",md5(key) = " + CryptoUtils.md5(str));
        if (!CryptoUtils.md5(str).equals(string) && !str.equals(string)) {
            return str2;
        }
        String string2 = sharedPreferences.getString(HmcpRequestManager.CID_VALUE, str2);
        LogUtils.d(str3, "返回的缓存CID Value=" + string2);
        return string2;
    }

    public boolean getPreferences(String str, boolean z10) {
        return checkSpIsNull() ? z10 : sharedPreferences.getBoolean(str, z10);
    }

    public void putPreferences(final String str, final String str2) {
        if (checkSpIsNull()) {
            return;
        }
        LogUtils.d(TAG, "Thread name1:" + Thread.currentThread().getName());
        this.executorService.submit(new Runnable() { // from class: com.haima.hmcp.utils.DataUtils.1
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(str2) && str2.length() > 320) {
                    CountlyUtil.recordEvent("12200", "sp key:" + str + ",value:" + str2.substring(0, 120));
                }
                LogUtils.d(DataUtils.TAG, "Thread name:" + Thread.currentThread().getName());
                SharedPreferences.Editor editorEdit = DataUtils.sharedPreferences.edit();
                editorEdit.putString(str, str2);
                editorEdit.commit();
            }
        });
    }

    public boolean readDataReportIsEnabled() {
        return getPreferences(IS_DATA_REPORT_ENABLED_KEY, true);
    }

    public boolean updateDataReportEnable(boolean z10) {
        LogUtils.d(TAG, "Thread name1:" + Thread.currentThread().getName());
        if (z10) {
            putPreferences(IS_DATA_REPORT_ENABLED_KEY, true);
        } else {
            clearCache();
        }
        return z10;
    }

    public int getPreferences(String str, int i10) {
        return checkSpIsNull() ? i10 : sharedPreferences.getInt(str, i10);
    }

    public void putPreferences(final String str, final int i10) {
        if (checkSpIsNull()) {
            return;
        }
        LogUtils.d(TAG, "Thread name1:" + Thread.currentThread().getName());
        this.executorService.submit(new Runnable() { // from class: com.haima.hmcp.utils.DataUtils.2
            @Override // java.lang.Runnable
            public void run() {
                LogUtils.d(DataUtils.TAG, "Thread name:" + Thread.currentThread().getName());
                SharedPreferences.Editor editorEdit = DataUtils.sharedPreferences.edit();
                editorEdit.putInt(str, i10);
                editorEdit.commit();
            }
        });
    }

    public String getPreferences(String str, String str2) {
        return checkSpIsNull() ? str2 : sharedPreferences.getString(str, str2);
    }

    public long getPreferences(String str, long j10) {
        return checkSpIsNull() ? j10 : sharedPreferences.getLong(str, j10);
    }

    public void putPreferences(final String str, final long j10) {
        if (checkSpIsNull()) {
            return;
        }
        LogUtils.d(TAG, "Thread name1:" + Thread.currentThread().getName());
        this.executorService.submit(new Runnable() { // from class: com.haima.hmcp.utils.DataUtils.3
            @Override // java.lang.Runnable
            public void run() {
                LogUtils.d(DataUtils.TAG, "Thread name:" + Thread.currentThread().getName());
                SharedPreferences.Editor editorEdit = DataUtils.sharedPreferences.edit();
                editorEdit.putLong(str, j10);
                editorEdit.commit();
            }
        });
    }

    public void putPreferences(final String str, final boolean z10) {
        if (checkSpIsNull()) {
            return;
        }
        LogUtils.d(TAG, "Thread name1:" + Thread.currentThread().getName());
        this.executorService.submit(new Runnable() { // from class: com.haima.hmcp.utils.DataUtils.4
            @Override // java.lang.Runnable
            public void run() {
                LogUtils.d(DataUtils.TAG, "Thread name:" + Thread.currentThread().getName());
                SharedPreferences.Editor editorEdit = DataUtils.sharedPreferences.edit();
                editorEdit.putBoolean(str, z10);
                editorEdit.commit();
            }
        });
    }
}
