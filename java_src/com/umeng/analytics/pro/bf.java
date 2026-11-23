package com.umeng.analytics.pro;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: classes9.dex */
class bf implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f84382a = "content://cn.nubia.provider.deviceid.dataid/oaid";

    bf() {
    }

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        String string = null;
        if (context == null) {
            return null;
        }
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse(f84382a), null, null, null, null);
        if (cursorQuery != null) {
            string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex("device_ids_grndid")) : null;
            cursorQuery.close();
        }
        return string;
    }
}
