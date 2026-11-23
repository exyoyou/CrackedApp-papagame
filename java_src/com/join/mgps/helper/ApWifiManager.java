package com.join.mgps.helper;

import android.content.Context;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.k;

/* JADX INFO: loaded from: classes3.dex */
public class ApWifiManager {
    private static final String TAG = "ApWifiManager";
    Context context;
    k mApWifiUtil;
    WifiUtils wifiUtil;

    public ApWifiManager(Context mContext) {
        this.wifiUtil = WifiUtils.getInstance(mContext);
        this.mApWifiUtil = k.i(mContext);
        this.context = mContext;
    }

    public void closeWifiAp() {
        this.mApWifiUtil.f();
        this.wifiUtil.openWifi(this.context);
    }

    public boolean connectApWifi(String ssid, String pwd) {
        this.mApWifiUtil.f();
        this.wifiUtil.openWifi(this.context);
        if (!this.wifiUtil.isWifiEnable()) {
            return false;
        }
        this.mApWifiUtil.h();
        return this.mApWifiUtil.a(ssid, pwd);
    }

    public void createApWifi(final String ssid, final String pwd) {
        this.wifiUtil.closeWifi(this.context);
        this.mApWifiUtil.g(ssid, pwd);
    }
}
