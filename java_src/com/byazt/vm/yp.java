package com.byazt.vm;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.haima.hmcp.beans.HmInputMappingContent;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 215})
public final class yp implements nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt<Boolean> f21262c = new tt<Boolean>() { // from class: com.byazt.vm.yp.1
        @Override // com.byazt.vm.tt
        /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
        public Boolean c(Object... objArr) {
            try {
                PackageManager packageManager = ((Context) objArr[0]).getPackageManager();
                if (packageManager != null) {
                    return Boolean.valueOf(packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null);
                }
            } catch (Exception unused) {
            }
            return Boolean.FALSE;
        }
    };

    private String c(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(HmInputMappingContent.FIELD_VALUE);
        if (columnIndex >= 0) {
            return cursor.getString(columnIndex);
        }
        return null;
    }

    @Override // com.byazt.vm.nu
    public boolean tt(Context context) {
        if (context == null) {
            return false;
        }
        return this.f21262c.tt(context).booleanValue();
    }

    @Override // com.byazt.vm.nu
    public nu.c ve(Context context) {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery == null) {
                com.byazt.yv.u.c(cursorQuery);
                return null;
            }
            try {
                nu.c cVar = new nu.c();
                cVar.tt = c(cursorQuery);
                com.byazt.yv.u.c(cursorQuery);
                return cVar;
            } catch (Throwable th) {
                th = th;
                try {
                    com.byazt.yv.da.c(th);
                    return null;
                } finally {
                    com.byazt.yv.u.c(cursorQuery);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }
}
