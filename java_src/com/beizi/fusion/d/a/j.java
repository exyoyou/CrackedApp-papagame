package com.beizi.fusion.d.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.haima.hmcp.beans.HmInputMappingContent;

/* JADX INFO: loaded from: classes6.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f10178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f10179c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f10177a = null;

    public j(Context context) {
        this.f10178b = context;
    }

    public String a() {
        Cursor cursorQuery = this.f10178b.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
        String string = null;
        if (cursorQuery != null) {
            string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex(HmInputMappingContent.FIELD_VALUE)) : null;
            cursorQuery.close();
        }
        return string;
    }
}
