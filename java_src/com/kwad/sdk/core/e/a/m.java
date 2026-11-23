package com.kwad.sdk.core.e.a;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class m {
    private Context mContext;

    public m(Context context) {
        this.mContext = context;
    }

    public final String getOAID() {
        String str;
        Exception e10;
        try {
            str = (String) i.callMethod(i.newInstance("com.android.id.impl.IdProviderImpl", new Object[0]), "getOAID", this.mContext);
            try {
                com.kwad.sdk.core.d.c.i("XiaomiDeviceIDHelper", "getOAID oaid:" + str);
            } catch (Exception e11) {
                e10 = e11;
                com.kwad.sdk.core.d.c.i("XiaomiDeviceIDHelper", "getOAID fail");
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            }
        } catch (Exception e12) {
            str = "";
            e10 = e12;
        }
        return str;
    }
}
