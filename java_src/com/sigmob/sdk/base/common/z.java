package com.sigmob.sdk.base.common;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.logger.SigmobLog;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final HashMap<String, z> f79302h = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f79303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f79304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f79305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f79306d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f79307e = 30;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f79308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f79309g;

    public static synchronized z a(String placement) {
        Cursor cursorRawQuery = null;
        if (TextUtils.isEmpty(placement)) {
            return null;
        }
        z zVar = f79302h.get(placement);
        if (zVar == null) {
            zVar = new z();
            try {
                cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select * from adload_cache_event where adslot_id = ? group by adslot_id", new String[]{placement});
                a(zVar, cursorRawQuery);
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable th) {
                try {
                    SigmobLog.e(th.getMessage());
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    }
                    f79302h.put(placement, zVar);
                } catch (Throwable th2) {
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                        cursorRawQuery.close();
                    }
                    throw th2;
                }
            }
            f79302h.put(placement, zVar);
        }
        return zVar;
    }

    private void b(String placementId) {
        if (TextUtils.isEmpty(placementId)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f79321g, "adslot_id=?", new String[]{placementId});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    private static void a(z cacheItem, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            cacheItem.f79303a = cursor.getInt(cursor.getColumnIndexOrThrow("media_request_count"));
            cacheItem.f79304b = cursor.getInt(cursor.getColumnIndexOrThrow("media_ready_count"));
            long j10 = cursor.getLong(cursor.getColumnIndexOrThrow("pre_req_time"));
            cacheItem.f79305c = j10;
            cacheItem.f79309g = j10;
            cacheItem.f79306d = cursor.getInt(cursor.getColumnIndexOrThrow("req_interval_time"));
            cacheItem.f79307e = cursor.getInt(cursor.getColumnIndexOrThrow("req_pool_size"));
        } while (cursor.moveToNext());
    }

    public static void a(final String placementId, z item) {
        if (TextUtils.isEmpty(placementId) || item == null) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f79321g);
            HashMap map = new HashMap();
            map.put("adslot_id", placementId);
            map.put("media_request_count", Integer.valueOf(item.f79303a));
            map.put("media_ready_count", Integer.valueOf(item.f79304b));
            map.put("pre_req_time", Long.valueOf(item.f79305c));
            map.put("req_interval_time", Integer.valueOf(item.f79306d));
            map.put("req_pool_size", Integer.valueOf(item.f79307e));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new com.sigmob.sdk.base.db.a.InterfaceC1022a() { // from class: com.sigmob.sdk.base.common.z.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a() {
                    SigmobLog.d(placementId + " insert load cache event " + placementId + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a(Throwable e10) {
                    SigmobLog.e(placementId + " insert load cache event " + placementId + " onFailed: ", e10);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }
}
