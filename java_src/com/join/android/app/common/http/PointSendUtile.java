package com.join.android.app.common.http;

import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.q;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.j1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y0;
import com.join.mgps.dto.PointMessageData;
import com.join.mgps.dto.PointMessageMain;

/* JADX INFO: loaded from: classes5.dex */
public class PointSendUtile {

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34539b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f34540c;

        a(final String val$body, final String val$finalIp) {
            this.f34539b = val$body;
            this.f34540c = val$finalIp;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            y0.c(com.join.mgps.rpc.h.J + "/client/send", this.f34539b, this.f34540c);
        }
    }

    public static void sendPoint(Context context, String gameId) {
        String serverIPAddress;
        String strO;
        String upperCase;
        String property;
        String string;
        String upperCase2;
        try {
            serverIPAddress = WifiUtils.getInstance(context).getServerIPAddress();
            try {
            } catch (Exception e10) {
                e = e10;
                try {
                    e.printStackTrace();
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            }
        } catch (Exception e12) {
            e = e12;
            serverIPAddress = "";
        }
        String deviceId = null;
        try {
            strO = q.n(context).o();
        } catch (Exception e13) {
            e13.printStackTrace();
            strO = null;
        }
        try {
            upperCase = j1.d(strO.toUpperCase()).toUpperCase();
        } catch (Exception e14) {
            e14.printStackTrace();
            upperCase = null;
        }
        try {
            property = System.getProperty("http.agent");
        } catch (Exception e15) {
            e15.printStackTrace();
            property = null;
        }
        try {
            string = !TextUtils.isEmpty(MApplication.K) ? MApplication.K : Settings.System.getString(context.getContentResolver(), "android_id");
        } catch (Exception e16) {
            e16.printStackTrace();
            string = null;
        }
        try {
            upperCase2 = j1.d(string.toUpperCase()).toUpperCase();
        } catch (Exception e17) {
            e17.printStackTrace();
            upperCase2 = null;
        }
        String str = MApplication.L;
        try {
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74779c) == 0) {
                deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            }
        } catch (Exception e18) {
            e18.printStackTrace();
        }
        if (t2.h(deviceId)) {
            deviceId = "";
        }
        String strD = t2.i(deviceId) ? j1.d(deviceId) : "";
        PointMessageData pointMessageData = new PointMessageData();
        pointMessageData.ip = serverIPAddress;
        pointMessageData.mac = strO;
        pointMessageData.mac_md5 = upperCase;
        pointMessageData.useragent = property;
        pointMessageData.androidid = string;
        pointMessageData.androidid_md5 = upperCase2;
        pointMessageData.oaid = str;
        pointMessageData.imei = deviceId;
        pointMessageData.imei_md5 = strD;
        pointMessageData.callback_url = "";
        pointMessageData.osversion = com.join.android.app.mgsim.wufun.b.f35535h;
        pointMessageData.gameId = gameId;
        pointMessageData.clicktime = System.currentTimeMillis() + "";
        PointMessageMain pointMessageMain = new PointMessageMain();
        pointMessageMain.gameId = gameId;
        pointMessageMain.data = pointMessageData;
        new a(JsonMapper.toJsonString(pointMessageMain), serverIPAddress).start();
    }
}
