package com.tencent.stat;

import android.database.Cursor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f83967a;

    t(n nVar) {
        this.f83967a = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f83967a.f83954d.getReadableDatabase().query("config", null, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                int i10 = cursorQuery.getInt(0);
                String string = cursorQuery.getString(1);
                String string2 = cursorQuery.getString(2);
                int i11 = cursorQuery.getInt(3);
                b bVar = new b(i10);
                bVar.f83865a = i10;
                bVar.f83866b = new JSONObject(string);
                bVar.f83867c = string2;
                bVar.f83868d = i11;
                StatConfig.a(bVar);
            }
        } catch (Throwable th) {
            try {
                n.f83949e.e(th);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }
}
