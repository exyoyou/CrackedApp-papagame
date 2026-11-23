package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Keep;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.kwad.sdk.liteapi.LiteApiLogger;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class MeizuDeviceIDHelper {
    private static final String TAG = "MeizuDeviceIDHelper";
    private Context mContext;

    public MeizuDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    private String getOaid(Cursor cursor) {
        String string = "";
        if (cursor != null && !cursor.isClosed()) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex(HmInputMappingContent.FIELD_VALUE);
            string = columnIndex > 0 ? cursor.getString(columnIndex) : "";
            int columnIndex2 = cursor.getColumnIndex("code");
            if (columnIndex2 > 0) {
                cursor.getInt(columnIndex2);
            }
            int columnIndex3 = cursor.getColumnIndex("expired");
            if (columnIndex3 > 0) {
                cursor.getLong(columnIndex3);
            }
        }
        return string;
    }

    private boolean isMeizuSupport() {
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            return (packageManager == null || packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) == null) ? false : true;
        } catch (Exception e10) {
            LiteApiLogger.printStackTrace(e10);
        }
    }

    public String getOAID() {
        String oaid = "";
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mContext.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
                oaid = getOaid(cursorQuery);
                LiteApiLogger.i(TAG, "getOAID oaid:" + oaid);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                } finally {
                    OaidInnerUtils.closeQuietly(cursorQuery);
                }
            }
        } catch (Exception e10) {
            LiteApiLogger.i(TAG, "getOAID service not found;");
            LiteApiLogger.printStackTrace(e10);
        }
        return oaid;
    }
}
