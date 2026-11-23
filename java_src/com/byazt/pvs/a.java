package com.byazt.pvs;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.byazt.bv.BaseConstants;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 705, 34})
public class a implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.vb.n f18866c;
    public Context tt;

    public a(com.byazt.vb.n nVar) {
        this.tt = nVar.getContext();
        this.f18866c = nVar;
    }

    public static String tt() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0,retry INTEGER default 0,extra TEXT ,encrypt INTEGER default 0)").toString();
    }

    public static String uj() {
        return "ALTER TABLE trackurl ADD COLUMN encrypt INTEGER default 0";
    }

    public static String ve() {
        return "ALTER TABLE trackurl ADD COLUMN extra TEXT";
    }

    @Override // com.byazt.pvs.n
    public List<uj> c() {
        JSONObject jSONObject;
        LinkedList linkedList = new LinkedList();
        Cursor cursorQuery = com.byazt.ym.tt.query(this.tt, "trackurl", null, null, null, null, null, null, this.f18866c);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("url"));
                        boolean z10 = cursorQuery.getInt(cursorQuery.getColumnIndex("replaceholder")) > 0;
                        int i10 = cursorQuery.getInt(cursorQuery.getColumnIndex("retry"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndex(BaseConstants.EVENT_LABEL_EXTRA));
                        int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex("encrypt"));
                        if (i11 > 0) {
                            string3 = com.byazt.nr.c.ve(string3);
                        }
                        try {
                            jSONObject = new JSONObject(string3);
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        linkedList.add(new uj(string, string2, z10, i10, jSONObject, i11));
                    } finally {
                        cursorQuery.close();
                    }
                } catch (Throwable unused2) {
                }
            }
            cursorQuery.close();
        }
        return linkedList;
    }

    @Override // com.byazt.pvs.n
    public void delete(uj ujVar) {
        com.byazt.ym.tt.delete(this.tt, "trackurl", "id=?", new String[]{ujVar.tt()}, this.f18866c);
    }

    @Override // com.byazt.pvs.n
    public void insert(uj ujVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", ujVar.tt());
        contentValues.put("url", ujVar.ve());
        contentValues.put("replaceholder", Integer.valueOf(ujVar.uj() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(ujVar.n()));
        contentValues.put(BaseConstants.EVENT_LABEL_EXTRA, com.byazt.nr.c.tt(ujVar.c().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.byazt.ym.tt.insert(this.tt, "trackurl", contentValues, this.f18866c);
    }

    @Override // com.byazt.pvs.n
    public void update(uj ujVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", ujVar.tt());
        contentValues.put("url", ujVar.ve());
        contentValues.put("replaceholder", Integer.valueOf(ujVar.uj() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(ujVar.n()));
        contentValues.put(BaseConstants.EVENT_LABEL_EXTRA, com.byazt.nr.c.tt(ujVar.c().toString()));
        contentValues.put("encrypt", (Integer) 1);
        com.byazt.ym.tt.update(this.tt, "trackurl", contentValues, "id=?", new String[]{ujVar.tt()}, this.f18866c);
    }
}
