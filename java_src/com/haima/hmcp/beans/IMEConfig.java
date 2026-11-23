package com.haima.hmcp.beans;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class IMEConfig {
    public static final int IME_SWITCH_NOT_SUPPORT = 0;
    public static final int IME_SWITCH_OFF = 0;
    public static final int IME_SWITCH_ON = 1;
    public static final int IME_SWITCH_SUPPORT = 1;
    public static final int IME_SWITCH_TIME_OUT = 5;
    public static final int IME_TYPE_INSTANCE = 0;
    public static final int IME_TYPE_LOCAL = 1;
    public static final String LOCAL_IME = "com.heshle.holderime/.HMHolderKeyboard";
    private int currentIMEType;
    private ArrayList<IMEBean> mIMEList;
    private String instanceIMEConfig = "com.sohu.inputmethod.sogou/.SogouIME";
    private int switchIMEAckTimeout = 5;
    private boolean enableSwitchIME = true;
    private int clientImeType = -1;

    public int getCurrentIMEType() {
        return this.currentIMEType;
    }

    public ArrayList<IMEBean> getIMEList() {
        return this.mIMEList;
    }

    public String getInstanceDefaultIMEConfig() {
        return this.instanceIMEConfig;
    }

    public String getInstanceIMEName() {
        ArrayList<IMEBean> arrayList = this.mIMEList;
        if (arrayList != null && arrayList.size() != 0) {
            for (IMEBean iMEBean : this.mIMEList) {
                if (iMEBean != null && iMEBean.isDefault == 1) {
                    return iMEBean.name;
                }
            }
        }
        return null;
    }

    public String getLocalIMEName() {
        return LOCAL_IME;
    }

    public int getSwitchIMEAckTimeout() {
        return this.switchIMEAckTimeout;
    }

    public boolean isEnableSwitchIME() {
        return this.enableSwitchIME;
    }

    public boolean isSupportSwitchIME() {
        boolean z10;
        if (this.clientImeType != -1) {
            LogUtils.d(HmIMEManager.TAG, "client_ime_type-> check ime switch support, app set ime type: " + this.clientImeType + " and support ime switch");
            z10 = true;
        } else {
            z10 = Constants.CONFIG_IME_TYPE == 1;
            LogUtils.d(HmIMEManager.TAG, "client_ime_type-> check ime switch support，108 config is: " + Constants.CONFIG_IME_TYPE + " and is support: " + z10);
        }
        ArrayList<IMEBean> arrayList = this.mIMEList;
        return z10 && (arrayList != null && arrayList.size() > 0);
    }

    public void parseConfig(HashMap<String, String> map) {
        boolean z10 = true;
        this.enableSwitchIME = true;
        this.mIMEList = null;
        this.currentIMEType = Constants.CONFIG_IME_TYPE;
        String str = map.get(Constants.IME_SWITCH_ENABLE);
        if (!TextUtils.isEmpty(str)) {
            try {
                if (Integer.parseInt(str) < 1) {
                    z10 = false;
                }
                this.enableSwitchIME = z10;
            } catch (NumberFormatException unused) {
                this.enableSwitchIME = false;
            }
        }
        String str2 = map.get(Constants.IME_SWITCH_ACK_TIMEOUT);
        if (!TextUtils.isEmpty(str2)) {
            try {
                int i10 = Integer.parseInt(str2);
                this.switchIMEAckTimeout = i10;
                this.switchIMEAckTimeout = Math.max(i10, 5);
            } catch (NumberFormatException unused2) {
                LogUtils.d(HmIMEManager.TAG, "parse act timeout error and set default value: 5");
                this.switchIMEAckTimeout = 5;
            }
        }
        LogUtils.d(HmIMEManager.TAG, "config->ime_type: " + Constants.CONFIG_IME_TYPE + "; enable: " + this.enableSwitchIME + "; ack_time_out: " + this.switchIMEAckTimeout);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Constants.IME_TYPE, Constants.CONFIG_IME_TYPE);
            jSONObject.put("enable", this.enableSwitchIME);
            jSONObject.put("ack_time_out", this.switchIMEAckTimeout);
        } catch (JSONException unused3) {
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_IME_CONFIG, jSONObject.toString());
        String str3 = map.get(Constants.INSTANCE_IME_DEFAULT);
        if (TextUtils.isEmpty(str3)) {
            LogUtils.d(HmIMEManager.TAG, "config->instance_ime_default is null! Use default ime:" + this.instanceIMEConfig);
            return;
        }
        this.instanceIMEConfig = str3;
        LogUtils.d(HmIMEManager.TAG, "config->instance_ime_default =>" + str3);
    }

    public void setClientImeType(int i10) {
        this.clientImeType = i10;
    }

    public void setCurrentIMEType(int i10) {
        this.currentIMEType = i10;
    }

    public void setIMEList(ArrayList<IMEBean> arrayList) {
        this.mIMEList = arrayList;
        if (arrayList == null || arrayList.size() == 0) {
            this.enableSwitchIME = false;
        }
    }
}
