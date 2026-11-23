package com.beizi.fusion.sm.b.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
class i implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10301a;

    public i(Context context) {
        this.f10301a = context;
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        Context context = this.f10301a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null;
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            return false;
        }
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10301a == null || bVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.f10301a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
                if (string != null && string.length() != 0) {
                    com.beizi.fusion.sm.b.e.a("OAID query success: " + string);
                    bVar.a(string);
                    cursorQuery.close();
                    return;
                }
                throw new com.beizi.fusion.sm.b.d("OAID query failed");
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            bVar.a(e10);
        }
    }
}
