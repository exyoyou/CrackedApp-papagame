package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class XiaomiDeviceIDHelper {
    private static final String TAG = "XiaomiDeviceIDHelper";
    private Context mContext;

    public XiaomiDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    public String getOAID() {
        String str;
        Exception e10;
        try {
            str = (String) OaidJavaCalls.callMethod(OaidJavaCalls.newInstance("com.android.id.impl.IdProviderImpl", new Object[0]), "getOAID", this.mContext);
            try {
                LiteApiLogger.i(TAG, "getOAID oaid:" + str);
            } catch (Exception e11) {
                e10 = e11;
                LiteApiLogger.i(TAG, "getOAID fail");
                LiteApiLogger.printStackTraceOnly(e10);
            }
        } catch (Exception e12) {
            str = "";
            e10 = e12;
        }
        return str;
    }
}
