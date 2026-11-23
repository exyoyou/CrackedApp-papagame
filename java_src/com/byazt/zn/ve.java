package com.byazt.zn;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.byazt.gq.t;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 501, 54})
public class ve {
    public static volatile ve tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SQLiteDatabase f22931c;

    private ve() {
        try {
            this.f22931c = new tt(t.getContext()).getWritableDatabase();
        } catch (Throwable th) {
            com.byazt.dm.ve.c().c(th, "ClickEventHelper");
        }
    }

    public static ve c() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    public boolean tt() {
        return com.byazt.k.c.ve().c("click_event_switch", 0) == 1;
    }

    public boolean ve() {
        return com.byazt.k.c.ve().c("click_event_switch", 0) == 2;
    }

    private void ve(long j10, String str) {
        SQLiteDatabase sQLiteDatabase = this.f22931c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j10 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strOptString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            this.f22931c.delete("click_event", "time < ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j10), strOptString});
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public boolean tt(long j10, String str) {
        SQLiteDatabase sQLiteDatabase = this.f22931c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j10 <= 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            try {
                String strOptString = new JSONObject(str).optString("req_id");
                if (TextUtils.isEmpty(strOptString)) {
                    return false;
                }
                cursorQuery = this.f22931c.query("click_event", tt.f22930c, "time > ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j10), strOptString}, null, null, null, null);
                boolean z10 = cursorQuery.getCount() > 0;
                cursorQuery.close();
                return z10;
            } catch (Exception e10) {
                m.c(e10);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public void c(long j10, String str) {
        SQLiteDatabase sQLiteDatabase = this.f22931c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j10 <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strOptString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(MediationConstant.EXTRA_ADID, Long.valueOf(j10));
            contentValues.put("req_id", strOptString);
            contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
            this.f22931c.insert("click_event", null, contentValues);
        } catch (Exception e10) {
            m.c(e10);
        }
        ve(j10, str);
    }
}
