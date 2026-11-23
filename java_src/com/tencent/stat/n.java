package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.StatLogger;
import com.umeng.analytics.pro.aw;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static StatLogger f83949e = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static n f83950f = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Handler f83951a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w f83954d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile int f83952b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    DeviceInfo f83953c = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, String> f83955g = new HashMap<>();

    private n(Context context) {
        this.f83951a = null;
        try {
            HandlerThread handlerThread = new HandlerThread("StatStore");
            handlerThread.start();
            f83949e.w("Launch store thread:" + handlerThread);
            this.f83951a = new Handler(handlerThread.getLooper());
            Context applicationContext = context.getApplicationContext();
            w wVar = new w(applicationContext);
            this.f83954d = wVar;
            wVar.getWritableDatabase();
            this.f83954d.getReadableDatabase();
            b(applicationContext);
            c();
            f();
            this.f83951a.post(new o(this));
        } catch (Throwable th) {
            f83949e.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", (Integer) 1);
            this.f83954d.getWritableDatabase().update(com.umeng.analytics.pro.f.ax, contentValues, "status=?", new String[]{Long.toString(2L)});
            this.f83952b = (int) DatabaseUtils.queryNumEntries(this.f83954d.getReadableDatabase(), com.umeng.analytics.pro.f.ax);
            f83949e.i("Total " + this.f83952b + " unsent events.");
        } catch (Throwable th) {
            f83949e.e(th);
        }
    }

    private void f() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f83954d.getReadableDatabase().query("keyvalues", null, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                this.f83955g.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
        } catch (Throwable th) {
            try {
                f83949e.e(th);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    public int a() {
        return this.f83952b;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0097 A[Catch: all -> 0x0194, TryCatch #0 {all -> 0x0194, blocks: (B:10:0x001d, B:12:0x0026, B:14:0x0044, B:18:0x0059, B:20:0x0063, B:21:0x0065, B:23:0x006d, B:25:0x0070, B:27:0x0074, B:39:0x0097, B:41:0x009a, B:47:0x00d2, B:49:0x0104, B:51:0x0117, B:54:0x0126, B:56:0x0130, B:58:0x0136, B:60:0x014c, B:42:0x00b1, B:44:0x00b7, B:46:0x00bd, B:31:0x007f, B:33:0x0085, B:36:0x008f), top: B:79:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1 A[Catch: all -> 0x0194, TryCatch #0 {all -> 0x0194, blocks: (B:10:0x001d, B:12:0x0026, B:14:0x0044, B:18:0x0059, B:20:0x0063, B:21:0x0065, B:23:0x006d, B:25:0x0070, B:27:0x0074, B:39:0x0097, B:41:0x009a, B:47:0x00d2, B:49:0x0104, B:51:0x0117, B:54:0x0126, B:56:0x0130, B:58:0x0136, B:60:0x014c, B:42:0x00b1, B:44:0x00b7, B:46:0x00bd, B:31:0x007f, B:33:0x0085, B:36:0x008f), top: B:79:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b7 A[Catch: all -> 0x0194, TryCatch #0 {all -> 0x0194, blocks: (B:10:0x001d, B:12:0x0026, B:14:0x0044, B:18:0x0059, B:20:0x0063, B:21:0x0065, B:23:0x006d, B:25:0x0070, B:27:0x0074, B:39:0x0097, B:41:0x009a, B:47:0x00d2, B:49:0x0104, B:51:0x0117, B:54:0x0126, B:56:0x0130, B:58:0x0136, B:60:0x014c, B:42:0x00b1, B:44:0x00b7, B:46:0x00bd, B:31:0x007f, B:33:0x0085, B:36:0x008f), top: B:79:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0104 A[Catch: all -> 0x0194, TryCatch #0 {all -> 0x0194, blocks: (B:10:0x001d, B:12:0x0026, B:14:0x0044, B:18:0x0059, B:20:0x0063, B:21:0x0065, B:23:0x006d, B:25:0x0070, B:27:0x0074, B:39:0x0097, B:41:0x009a, B:47:0x00d2, B:49:0x0104, B:51:0x0117, B:54:0x0126, B:56:0x0130, B:58:0x0136, B:60:0x014c, B:42:0x00b1, B:44:0x00b7, B:46:0x00bd, B:31:0x007f, B:33:0x0085, B:36:0x008f), top: B:79:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0117 A[Catch: all -> 0x0194, TryCatch #0 {all -> 0x0194, blocks: (B:10:0x001d, B:12:0x0026, B:14:0x0044, B:18:0x0059, B:20:0x0063, B:21:0x0065, B:23:0x006d, B:25:0x0070, B:27:0x0074, B:39:0x0097, B:41:0x009a, B:47:0x00d2, B:49:0x0104, B:51:0x0117, B:54:0x0126, B:56:0x0130, B:58:0x0136, B:60:0x014c, B:42:0x00b1, B:44:0x00b7, B:46:0x00bd, B:31:0x007f, B:33:0x0085, B:36:0x008f), top: B:79:0x001d }] */
    public synchronized DeviceInfo b(Context context) {
        boolean z10;
        String str;
        String str2;
        boolean z11;
        String strC;
        ContentValues contentValues;
        DeviceInfo deviceInfo = this.f83953c;
        if (deviceInfo != null) {
            return deviceInfo;
        }
        Cursor cursor = null;
        try {
            Cursor cursorQuery = this.f83954d.getReadableDatabase().query(aw.f84332m, null, null, null, null, null, null, null);
            try {
                if (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    String strD = com.tencent.stat.common.k.d(string);
                    z10 = true;
                    int i10 = cursorQuery.getInt(1);
                    String string2 = cursorQuery.getString(2);
                    long j10 = cursorQuery.getLong(3);
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    int i11 = (i10 == 1 || com.tencent.stat.common.k.a(j10 * 1000).equals(com.tencent.stat.common.k.a(jCurrentTimeMillis * 1000))) ? i10 : 1;
                    if (!string2.equals(com.tencent.stat.common.k.r(context))) {
                        i11 |= 2;
                    }
                    String[] strArrSplit = strD.split(",");
                    if (strArrSplit == null || strArrSplit.length <= 0) {
                        strD = com.tencent.stat.common.k.b(context);
                        str2 = strD;
                    } else {
                        str2 = strArrSplit[0];
                        if (str2 == null || str2.length() < 11) {
                            String strL = com.tencent.stat.common.k.l(context);
                            if (strL != null && strL.length() > 10) {
                                str2 = strL;
                            }
                            if (strArrSplit != null || strArrSplit.length < 2) {
                                strC = com.tencent.stat.common.k.c(context);
                                if (strC != null && strC.length() > 0) {
                                    strD = str2 + "," + strC;
                                    z11 = true;
                                }
                            } else {
                                strC = strArrSplit[1];
                                strD = str2 + "," + strC;
                            }
                            this.f83953c = new DeviceInfo(str2, strC, i11);
                            contentValues = new ContentValues();
                            contentValues.put("uid", com.tencent.stat.common.k.c(strD));
                            contentValues.put("user_type", Integer.valueOf(i11));
                            contentValues.put("app_ver", com.tencent.stat.common.k.r(context));
                            contentValues.put("ts", Long.valueOf(jCurrentTimeMillis));
                            if (z11) {
                                this.f83954d.getWritableDatabase().update(aw.f84332m, contentValues, "uid=?", new String[]{string});
                            }
                            if (i11 != i10) {
                                this.f83954d.getWritableDatabase().replace(aw.f84332m, null, contentValues);
                            }
                        }
                        z11 = false;
                        if (strArrSplit != null) {
                            strC = com.tencent.stat.common.k.c(context);
                            if (strC != null) {
                                strD = str2 + "," + strC;
                                z11 = true;
                            }
                        } else {
                            strC = com.tencent.stat.common.k.c(context);
                            if (strC != null) {
                                strD = str2 + "," + strC;
                                z11 = true;
                            }
                        }
                        this.f83953c = new DeviceInfo(str2, strC, i11);
                        contentValues = new ContentValues();
                        contentValues.put("uid", com.tencent.stat.common.k.c(strD));
                        contentValues.put("user_type", Integer.valueOf(i11));
                        contentValues.put("app_ver", com.tencent.stat.common.k.r(context));
                        contentValues.put("ts", Long.valueOf(jCurrentTimeMillis));
                        if (z11) {
                            this.f83954d.getWritableDatabase().update(aw.f84332m, contentValues, "uid=?", new String[]{string});
                        }
                        if (i11 != i10) {
                            this.f83954d.getWritableDatabase().replace(aw.f84332m, null, contentValues);
                        }
                    }
                    z11 = true;
                    if (strArrSplit != null) {
                        strC = com.tencent.stat.common.k.c(context);
                        if (strC != null) {
                            strD = str2 + "," + strC;
                            z11 = true;
                        }
                    } else {
                        strC = com.tencent.stat.common.k.c(context);
                        if (strC != null) {
                            strD = str2 + "," + strC;
                            z11 = true;
                        }
                    }
                    this.f83953c = new DeviceInfo(str2, strC, i11);
                    contentValues = new ContentValues();
                    contentValues.put("uid", com.tencent.stat.common.k.c(strD));
                    contentValues.put("user_type", Integer.valueOf(i11));
                    contentValues.put("app_ver", com.tencent.stat.common.k.r(context));
                    contentValues.put("ts", Long.valueOf(jCurrentTimeMillis));
                    if (z11) {
                        this.f83954d.getWritableDatabase().update(aw.f84332m, contentValues, "uid=?", new String[]{string});
                    }
                    if (i11 != i10) {
                        this.f83954d.getWritableDatabase().replace(aw.f84332m, null, contentValues);
                    }
                } else {
                    z10 = false;
                }
                if (!z10) {
                    String strB = com.tencent.stat.common.k.b(context);
                    String strC2 = com.tencent.stat.common.k.c(context);
                    if (strC2 == null || strC2.length() <= 0) {
                        str = strB;
                    } else {
                        str = strB + "," + strC2;
                    }
                    long jCurrentTimeMillis2 = System.currentTimeMillis() / 1000;
                    String strR = com.tencent.stat.common.k.r(context);
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("uid", com.tencent.stat.common.k.c(str));
                    contentValues2.put("user_type", (Integer) 0);
                    contentValues2.put("app_ver", strR);
                    contentValues2.put("ts", Long.valueOf(jCurrentTimeMillis2));
                    this.f83954d.getWritableDatabase().insert(aw.f84332m, null, contentValues2);
                    this.f83953c = new DeviceInfo(strB, strC2, 0);
                }
                cursorQuery.close();
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                try {
                    f83949e.e(th);
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return this.f83953c;
    }

    void c() {
        this.f83951a.post(new t(this));
    }

    public static synchronized n a(Context context) {
        if (f83950f == null) {
            f83950f = new n(context);
        }
        return f83950f;
    }

    public static n b() {
        return f83950f;
    }

    private void c(List<x> list, int i10) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f83954d.getReadableDatabase().query(com.umeng.analytics.pro.f.ax, null, "status=?", new String[]{Integer.toString(1)}, null, null, "event_id", Integer.toString(i10));
            while (cursorQuery.moveToNext()) {
                list.add(new x(cursorQuery.getLong(0), com.tencent.stat.common.k.d(cursorQuery.getString(1)), cursorQuery.getInt(2), cursorQuery.getInt(3)));
            }
        } catch (Throwable th) {
            try {
                f83949e.e(th);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    void a(int i10) {
        this.f83951a.post(new v(this, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(int i10) {
        try {
            if (this.f83952b > 0 && i10 > 0) {
                f83949e.i("Load " + Integer.toString(this.f83952b) + " unsent events");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (i10 == -1 || i10 > StatConfig.a()) {
                    i10 = StatConfig.a();
                }
                this.f83952b -= i10;
                c(arrayList2, i10);
                f83949e.i("Peek " + Integer.toString(arrayList2.size()) + " unsent events.");
                if (!arrayList2.isEmpty()) {
                    b(arrayList2, 2);
                    Iterator<x> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(it2.next().f83974b);
                    }
                    d.b().b(arrayList, new u(this, arrayList2, i10));
                }
            }
        } catch (Throwable th) {
            f83949e.e(th);
        }
    }

    void a(com.tencent.stat.a.e eVar, c cVar) {
        if (StatConfig.isEnableStatService()) {
            try {
                if (Thread.currentThread().getId() == this.f83951a.getLooper().getThread().getId()) {
                    b(eVar, cVar);
                } else {
                    this.f83951a.post(new r(this, eVar, cVar));
                }
            } catch (Throwable th) {
                f83949e.e(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(com.tencent.stat.a.e eVar, c cVar) {
        w wVar;
        try {
            try {
                if (StatConfig.getMaxStoreEventCount() <= 0) {
                    return;
                }
                try {
                    this.f83954d.getWritableDatabase().beginTransaction();
                    if (this.f83952b > StatConfig.getMaxStoreEventCount()) {
                        f83949e.warn("Too many events stored in db.");
                        this.f83952b -= this.f83954d.getWritableDatabase().delete(com.umeng.analytics.pro.f.ax, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)", null);
                    }
                    ContentValues contentValues = new ContentValues();
                    String strC = com.tencent.stat.common.k.c(eVar.d());
                    contentValues.put("content", strC);
                    contentValues.put("send_count", "0");
                    contentValues.put("status", Integer.toString(1));
                    contentValues.put(UMCrash.SP_KEY_TIMESTAMP, Long.valueOf(eVar.b()));
                    if (this.f83954d.getWritableDatabase().insert(com.umeng.analytics.pro.f.ax, null, contentValues) == -1) {
                        f83949e.error("Failed to store event:" + strC);
                    } else {
                        this.f83952b++;
                        this.f83954d.getWritableDatabase().setTransactionSuccessful();
                        if (cVar != null) {
                            cVar.a();
                        }
                    }
                    wVar = this.f83954d;
                } catch (Throwable th) {
                    try {
                        f83949e.e(th);
                        wVar = this.f83954d;
                    } catch (Throwable th2) {
                        try {
                            this.f83954d.getWritableDatabase().endTransaction();
                        } catch (Throwable unused) {
                        }
                        throw th2;
                    }
                }
                wVar.getWritableDatabase().endTransaction();
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    void a(b bVar) {
        if (bVar == null) {
            return;
        }
        this.f83951a.post(new s(this, bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(b bVar) {
        boolean z10;
        long jInsert;
        Cursor cursor = null;
        try {
            String strA = bVar.a();
            String strA2 = com.tencent.stat.common.k.a(strA);
            ContentValues contentValues = new ContentValues();
            contentValues.put("content", bVar.f83866b.toString());
            contentValues.put("md5sum", strA2);
            bVar.f83867c = strA2;
            contentValues.put("version", Integer.valueOf(bVar.f83868d));
            Cursor cursorQuery = this.f83954d.getReadableDatabase().query("config", null, null, null, null, null, null);
            while (true) {
                try {
                    if (!cursorQuery.moveToNext()) {
                        z10 = false;
                        break;
                    } else if (cursorQuery.getInt(0) == bVar.f83865a) {
                        z10 = true;
                        break;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    try {
                        f83949e.e(th);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th2;
                    }
                }
            }
            if (true == z10) {
                jInsert = this.f83954d.getWritableDatabase().update("config", contentValues, "type=?", new String[]{Integer.toString(bVar.f83865a)});
            } else {
                contentValues.put("type", Integer.valueOf(bVar.f83865a));
                jInsert = this.f83954d.getWritableDatabase().insert("config", null, contentValues);
            }
            if (jInsert == -1) {
                f83949e.e("Failed to store cfg:" + strA);
            } else {
                f83949e.d("Sucessed to store cfg:" + strA);
            }
            cursorQuery.close();
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(List<x> list) {
        StatLogger statLogger;
        f83949e.i("Delete " + list.size() + " sent events in thread:" + Thread.currentThread());
        try {
            this.f83954d.getWritableDatabase().beginTransaction();
            Iterator<x> it2 = list.iterator();
            while (it2.hasNext()) {
                this.f83952b -= this.f83954d.getWritableDatabase().delete(com.umeng.analytics.pro.f.ax, "event_id = ?", new String[]{Long.toString(it2.next().f83973a)});
            }
            this.f83954d.getWritableDatabase().setTransactionSuccessful();
            this.f83952b = (int) DatabaseUtils.queryNumEntries(this.f83954d.getReadableDatabase(), com.umeng.analytics.pro.f.ax);
            try {
                this.f83954d.getWritableDatabase().endTransaction();
            } catch (SQLiteException e10) {
                e = e10;
                statLogger = f83949e;
                statLogger.e((Exception) e);
            }
        } catch (Throwable th) {
            try {
                f83949e.e(th);
                try {
                    this.f83954d.getWritableDatabase().endTransaction();
                } catch (SQLiteException e11) {
                    e = e11;
                    statLogger = f83949e;
                    statLogger.e((Exception) e);
                }
            } catch (Throwable th2) {
                try {
                    this.f83954d.getWritableDatabase().endTransaction();
                } catch (SQLiteException e12) {
                    f83949e.e((Exception) e12);
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(List<x> list, int i10) {
        StatLogger statLogger;
        f83949e.i("Update " + list.size() + " sending events to status:" + i10 + " in thread:" + Thread.currentThread());
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", Integer.toString(i10));
            this.f83954d.getWritableDatabase().beginTransaction();
            for (x xVar : list) {
                if (xVar.f83976d + 1 > StatConfig.getMaxSendRetryCount()) {
                    this.f83952b -= this.f83954d.getWritableDatabase().delete(com.umeng.analytics.pro.f.ax, "event_id=?", new String[]{Long.toString(xVar.f83973a)});
                } else {
                    contentValues.put("send_count", Integer.valueOf(xVar.f83976d + 1));
                    f83949e.i("Update event:" + xVar.f83973a + " for content:" + contentValues);
                    int iUpdate = this.f83954d.getWritableDatabase().update(com.umeng.analytics.pro.f.ax, contentValues, "event_id=?", new String[]{Long.toString(xVar.f83973a)});
                    if (iUpdate <= 0) {
                        f83949e.e("Failed to update db, error code:" + Integer.toString(iUpdate));
                    }
                }
            }
            this.f83954d.getWritableDatabase().setTransactionSuccessful();
            this.f83952b = (int) DatabaseUtils.queryNumEntries(this.f83954d.getReadableDatabase(), com.umeng.analytics.pro.f.ax);
            try {
                this.f83954d.getWritableDatabase().endTransaction();
            } catch (SQLiteException e10) {
                e = e10;
                statLogger = f83949e;
                statLogger.e((Exception) e);
            }
        } catch (Throwable th) {
            try {
                f83949e.e(th);
                try {
                    this.f83954d.getWritableDatabase().endTransaction();
                } catch (SQLiteException e11) {
                    e = e11;
                    statLogger = f83949e;
                    statLogger.e((Exception) e);
                }
            } catch (Throwable th2) {
                try {
                    this.f83954d.getWritableDatabase().endTransaction();
                } catch (SQLiteException e12) {
                    f83949e.e((Exception) e12);
                }
                throw th2;
            }
        }
    }

    void a(List<x> list) {
        try {
            if (Thread.currentThread().getId() == this.f83951a.getLooper().getThread().getId()) {
                b(list);
            } else {
                this.f83951a.post(new q(this, list));
            }
        } catch (SQLiteException e10) {
            f83949e.e((Exception) e10);
        }
    }

    void a(List<x> list, int i10) {
        try {
            if (Thread.currentThread().getId() == this.f83951a.getLooper().getThread().getId()) {
                b(list, i10);
            } else {
                this.f83951a.post(new p(this, list, i10));
            }
        } catch (Throwable th) {
            f83949e.e(th);
        }
    }
}
