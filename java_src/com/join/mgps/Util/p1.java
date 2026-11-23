package com.join.mgps.Util;

import android.content.Context;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.FirstIntentData;

/* JADX INFO: loaded from: classes4.dex */
public class p1 {
    public static FirstIntentData a(Context context) {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("CUSTOM_MADE_DATA");
            if (t2.h(string)) {
                return null;
            }
            return (FirstIntentData) JsonMapper.getInstance().fromJson(new String(p.a(string)), FirstIntentData.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int b(Context context) {
        return a0.c(context);
    }
}
