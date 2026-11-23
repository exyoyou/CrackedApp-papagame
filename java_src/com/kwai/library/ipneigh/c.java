package com.kwai.library.ipneigh;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static d F(Context context, boolean z10) {
        return b(context, false, false);
    }

    private static d b(Context context, boolean z10, boolean z11) {
        String strJ;
        try {
            if (!b.isWifiConnected(context)) {
                return new d("", false, "");
            }
            String strGs = b.gs(((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getDhcpInfo().gateway);
            if (z10) {
                strJ = "";
            } else {
                strJ = a.iO("timeout 5 ip neigh show " + strGs);
            }
            if (z10 || TextUtils.isEmpty(strJ)) {
                strJ = KwaiIpNeigh.j(strGs, false);
            }
            String strIQ = b.iQ(strJ);
            return new d(strIQ, !TextUtils.isEmpty(strIQ), strJ);
        } catch (Throwable th) {
            return new d("", false, th.getMessage());
        }
    }

    public static d eV(Context context) {
        return F(context, false);
    }
}
