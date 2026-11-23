package com.sigmob.sdk.base.common;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.logger.SigmobLog;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class aa {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashMap<String, aa> f78896d = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f78897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f78899c;

    public static synchronized aa a(String placement) {
        Cursor cursorRawQuery = null;
        if (TextUtils.isEmpty(placement)) {
            return null;
        }
        aa aaVar = f78896d.get(placement);
        if (aaVar == null) {
            aaVar = new aa();
            aaVar.f78899c = placement;
            try {
                cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_ready_event where adslot_id = '" + placement + "' group by adslot_id", null);
                a(aaVar, cursorRawQuery);
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable th) {
                try {
                    SigmobLog.e(th.getMessage());
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    }
                    f78896d.put(placement, aaVar);
                } catch (Throwable th2) {
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                        cursorRawQuery.close();
                    }
                    throw th2;
                }
            }
            f78896d.put(placement, aaVar);
        }
        return aaVar;
    }

    public static void c() {
        try {
            Cursor cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_ready_event", null);
            if (cursorRawQuery == null || !cursorRawQuery.moveToFirst()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            do {
                aa aaVar = new aa();
                aaVar.f78899c = cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("adslot_id"));
                aaVar.f78897a = cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("media_request_count"));
                aaVar.f78898b = cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("media_ready_count"));
                arrayList.add(aaVar);
                f78896d.put(aaVar.f78899c, aaVar);
            } while (cursorRawQuery.moveToNext());
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void b() {
        if (TextUtils.isEmpty(this.f78899c)) {
            return;
        }
        this.f78897a = 0;
        this.f78898b = 0;
        b(this.f78899c);
    }

    public static HashMap<String, aa> a() {
        return f78896d;
    }

    private void b(String placementId) {
        if (TextUtils.isEmpty(placementId)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f79322h, "adslot_id=?", new String[]{placementId});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private static void a(aa cacheItem, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            cacheItem.f78897a = cursor.getInt(cursor.getColumnIndexOrThrow("media_request_count"));
            cacheItem.f78898b = cursor.getInt(cursor.getColumnIndexOrThrow("media_ready_count"));
        } while (cursor.moveToNext());
    }

    public static void a(final String placementId, aa item) {
        if (TextUtils.isEmpty(placementId) || item == null) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f79322h);
            HashMap map = new HashMap();
            map.put("adslot_id", placementId);
            map.put("media_request_count", Integer.valueOf(item.f78897a));
            map.put("media_ready_count", Integer.valueOf(item.f78898b));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new com.sigmob.sdk.base.db.a.InterfaceC1022a() { // from class: com.sigmob.sdk.base.common.aa.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a() {
                    SigmobLog.d(placementId + " insert load cache event " + placementId + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a(Throwable e10) {
                    SigmobLog.e(placementId + " insert  load cache event " + placementId + " onFailed: ", e10);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}
