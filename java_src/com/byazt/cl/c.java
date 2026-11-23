package com.byazt.cl;

import android.content.ContentValues;
import android.database.Cursor;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import com.byazt.ete.gu;
import com.byazt.omf.gt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1542, 20})
public class c {
    public static JSONObject c() {
        int i10;
        int i11;
        if (gu.c() <= 0 || gu.tt() <= 0) {
            return new JSONObject();
        }
        int iC = gu.c();
        Cursor cursorQuery = com.byazt.pe.c.query(gt.getContext(), "dpl_status_record", null, "create_time >= ?", new String[]{String.valueOf(System.currentTimeMillis() - (((long) iC) * 60000))}, null, null, null);
        int i12 = 0;
        if (cursorQuery == null || !cursorQuery.moveToFirst()) {
            i10 = 0;
            i11 = 0;
        } else {
            i10 = 0;
            i11 = 0;
            do {
                int i13 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                if (i13 == 1) {
                    i12++;
                } else if (i13 == 2) {
                    i10++;
                } else if (i13 == 3) {
                    i11++;
                }
            } while (cursorQuery.moveToNext());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("minute", iC);
            jSONObject.put("trigger_count", i12);
            jSONObject.put("dialog_count", i10);
            jSONObject.put("reject_count", i11);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void tt() {
        try {
            com.byazt.pe.c.delete(gt.getContext(), "dpl_status_record", "create_time < ?", new String[]{String.valueOf(System.currentTimeMillis() - bn.f7592d)});
        } catch (Throwable unused) {
        }
    }

    public static void c(final int i10) {
        if (gu.c() <= 0 || gu.tt() <= 0) {
            return;
        }
        x.c(new sp("recordStatus") { // from class: com.byazt.cl.c.1
            @Override // java.lang.Runnable
            public void run() {
                ContentValues contentValues = new ContentValues();
                contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("status", Integer.valueOf(i10));
                com.byazt.pe.c.insert(gt.getContext(), "dpl_status_record", contentValues);
            }
        });
    }

    public static void c(JSONObject jSONObject) {
        if (gu.c() <= 0 || gu.tt() <= 0) {
            return;
        }
        try {
            jSONObject.put("dpl_status_counter", c());
        } catch (JSONException unused) {
        }
    }
}
