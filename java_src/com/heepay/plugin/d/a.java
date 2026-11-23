package com.heepay.plugin.d;

import android.webkit.WebView;
import com.heepay.plugin.activity.HyNotityActivity;
import com.heepay.plugin.c.g;
import com.heepay.plugin.c.i;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    public static void CallAPP(WebView webView, String str) {
        byte b10;
        HyNotityActivity hyNotityActivity;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strA = g.a(jSONObject, "cmd");
            com.heepay.plugin.c.c.c("---->object1", jSONObject.toString());
            com.heepay.plugin.c.c.c("---->method1", strA);
            int iHashCode = strA.hashCode();
            if (iHashCode != -1858369644) {
                if (iHashCode != 2580550) {
                    if (iHashCode == 360228041 && strA.equals("can_close")) {
                        b10 = 2;
                    } else {
                        b10 = -1;
                    }
                } else if (strA.equals("TODO")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
            } else if (strA.equals("pay_result")) {
                b10 = 0;
            } else {
                b10 = -1;
            }
            if (b10 == 0) {
                i.a().a(webView.getContext(), "支付完成");
                hyNotityActivity = (HyNotityActivity) webView.getContext();
            } else {
                if (b10 != 1) {
                    if (b10 != 2) {
                        ((HyNotityActivity) webView.getContext()).f34260k = false;
                        return;
                    } else {
                        ((HyNotityActivity) webView.getContext()).f34260k = true;
                        return;
                    }
                }
                if (webView != null && webView.canGoBack()) {
                    webView.goBack();
                    return;
                }
                hyNotityActivity = (HyNotityActivity) webView.getContext();
            }
            hyNotityActivity.finish();
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }
}
