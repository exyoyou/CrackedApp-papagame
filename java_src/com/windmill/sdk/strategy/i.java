package com.windmill.sdk.strategy;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.FreEntity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static i f87179d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SimpleDateFormat f87180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m f87181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f87182c;

    private i() {
    }

    public static i a() {
        if (f87179d == null) {
            synchronized (i.class) {
                if (f87179d == null) {
                    f87179d = new i();
                }
            }
        }
        return f87179d;
    }

    public String b(Date date) {
        return this.f87180a.format(date).substring(8, 10);
    }

    public String c(Date date) {
        return this.f87180a.format(date).substring(11, 13);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x007f A[PHI: r1
      0x007f: PHI (r1v4 android.database.sqlite.SQLiteDatabase) = (r1v3 android.database.sqlite.SQLiteDatabase), (r1v6 android.database.sqlite.SQLiteDatabase) binds: [B:16:0x007d, B:9:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    @SuppressLint({"Range"})
    public List<FreEntity> b() {
        SQLiteDatabase sQLiteDatabase;
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            SQLiteDatabase readableDatabase = this.f87181b.getReadableDatabase();
            this.f87182c = readableDatabase;
            cursorRawQuery = readableDatabase.rawQuery("select * from table_frequency", null);
            while (cursorRawQuery.moveToNext()) {
                arrayList.add(new FreEntity(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("channelId")), cursorRawQuery.getString(cursorRawQuery.getColumnIndex(m.a.f87210b)), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("placementId")), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87212d)), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87213e)), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87214f)), cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(m.a.f87215g))));
            }
            cursorRawQuery.close();
            sQLiteDatabase = this.f87182c;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            } catch (Throwable th2) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                SQLiteDatabase sQLiteDatabase2 = this.f87182c;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                throw th2;
            }
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    public FreEntity c(String id2, int type) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        FreEntity freEntity = null;
        try {
            SQLiteDatabase readableDatabase = this.f87181b.getReadableDatabase();
            this.f87182c = readableDatabase;
            Cursor cursorRawQuery = readableDatabase.rawQuery(type == 0 ? "select * from table_frequency where placementId = ? order by tameStamp DESC limit 1" : "select * from table_frequency where tbPlacementId = ? order by tameStamp DESC limit 1", new String[]{id2});
            try {
                freEntity = cursorRawQuery.moveToNext() ? new FreEntity(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("channelId")), cursorRawQuery.getString(cursorRawQuery.getColumnIndex(m.a.f87210b)), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("placementId")), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87212d)), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87213e)), cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.a.f87214f)), cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(m.a.f87215g))) : null;
                cursorRawQuery.close();
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            } catch (Throwable th) {
                cursor = cursorRawQuery;
                th = th;
                try {
                    th.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                    sQLiteDatabase = this.f87182c;
                    if (sQLiteDatabase != null) {
                    }
                    return freEntity;
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    SQLiteDatabase sQLiteDatabase2 = this.f87182c;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.close();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        return freEntity;
    }

    public void a(Context context) {
        this.f87181b = new m(context);
        this.f87180a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        a(a(new Date()), b(new Date()));
    }

    public String a(Date date) {
        return this.f87180a.format(date).substring(5, 7);
    }

    public void a(FreEntity entity) {
        SQLiteDatabase sQLiteDatabase;
        try {
            Date date = new Date();
            entity.setTameStamp(System.currentTimeMillis() / 1000);
            entity.setMonth(WMBidUtil.parseInt(a(date)).intValue());
            entity.setDay(WMBidUtil.parseInt(b(date)).intValue());
            entity.setHour(WMBidUtil.parseInt(c(date)).intValue());
            SQLiteDatabase writableDatabase = this.f87181b.getWritableDatabase();
            this.f87182c = writableDatabase;
            if (writableDatabase.insert(m.f87207b, null, b(entity)) != 0) {
                WMLogUtil.d(WMLogUtil.TAG, "-------------insert exposed success------------");
            }
            sQLiteDatabase = this.f87182c;
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase == null) {
                    return;
                }
            } catch (Throwable th2) {
                if (this.f87182c != null) {
                    this.f87182c.close();
                }
                throw th2;
            }
        }
        sQLiteDatabase.close();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00ab A[PHI: r13
      0x00ab: PHI (r13v4 android.database.sqlite.SQLiteDatabase) = (r13v3 android.database.sqlite.SQLiteDatabase), (r13v9 android.database.sqlite.SQLiteDatabase) binds: [B:20:0x00a9, B:13:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    @SuppressLint({"Range"})
    public List<FreEntity> b(String id2, int type) {
        SQLiteDatabase sQLiteDatabase;
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            SQLiteDatabase readableDatabase = this.f87181b.getReadableDatabase();
            this.f87182c = readableDatabase;
            cursorQuery = readableDatabase.query(m.f87207b, null, type == 0 ? "placementId = ? and month = ? and day = ? and hour = ?" : "tbPlacementId = ? and month = ? and day = ? and hour = ?", new String[]{id2, a(date), b(date), c(date)}, null, null, null);
            while (cursorQuery.moveToNext()) {
                arrayList.add(new FreEntity(cursorQuery.getInt(cursorQuery.getColumnIndex("channelId")), cursorQuery.getString(cursorQuery.getColumnIndex(m.a.f87210b)), cursorQuery.getString(cursorQuery.getColumnIndex("placementId")), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87212d)), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87213e)), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87214f)), cursorQuery.getLong(cursorQuery.getColumnIndex(m.a.f87215g))));
            }
            cursorQuery.close();
            sQLiteDatabase = this.f87182c;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                SQLiteDatabase sQLiteDatabase2 = this.f87182c;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                throw th2;
            }
        }
        return arrayList;
    }

    public void a(String month, String day) {
        SQLiteDatabase sQLiteDatabase;
        try {
            SQLiteDatabase writableDatabase = this.f87181b.getWritableDatabase();
            this.f87182c = writableDatabase;
            if (writableDatabase.delete(m.f87207b, "month != ? or day != ?", new String[]{month, day}) != 0) {
                WMLogUtil.d(WMLogUtil.TAG, "-------------delete data success------------:" + month + ":" + day);
            }
            sQLiteDatabase = this.f87182c;
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase == null) {
                    return;
                }
            } catch (Throwable th2) {
                if (this.f87182c != null) {
                    this.f87182c.close();
                }
                throw th2;
            }
        }
        sQLiteDatabase.close();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a7 A[PHI: r13
      0x00a7: PHI (r13v4 android.database.sqlite.SQLiteDatabase) = (r13v3 android.database.sqlite.SQLiteDatabase), (r13v8 android.database.sqlite.SQLiteDatabase) binds: [B:20:0x00a5, B:13:0x0097] A[DONT_GENERATE, DONT_INLINE]] */
    @SuppressLint({"Range"})
    public List<FreEntity> a(String id2, int type) {
        SQLiteDatabase sQLiteDatabase;
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            SQLiteDatabase readableDatabase = this.f87181b.getReadableDatabase();
            this.f87182c = readableDatabase;
            cursorQuery = readableDatabase.query(m.f87207b, null, type == 0 ? "placementId = ? and month = ? and day = ?" : "tbPlacementId = ? and month = ? and day = ?", new String[]{id2, a(date), b(date)}, null, null, null);
            while (cursorQuery.moveToNext()) {
                arrayList.add(new FreEntity(cursorQuery.getInt(cursorQuery.getColumnIndex("channelId")), cursorQuery.getString(cursorQuery.getColumnIndex(m.a.f87210b)), cursorQuery.getString(cursorQuery.getColumnIndex("placementId")), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87212d)), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87213e)), cursorQuery.getInt(cursorQuery.getColumnIndex(m.a.f87214f)), cursorQuery.getLong(cursorQuery.getColumnIndex(m.a.f87215g))));
            }
            cursorQuery.close();
            cursorQuery.close();
            sQLiteDatabase = this.f87182c;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                sQLiteDatabase = this.f87182c;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                SQLiteDatabase sQLiteDatabase2 = this.f87182c;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                throw th2;
            }
        }
        return arrayList;
    }

    public ContentValues b(FreEntity entity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("channelId", Integer.valueOf(entity.getChannelId()));
        contentValues.put(m.a.f87210b, entity.getTbPlacementId());
        contentValues.put("placementId", entity.getPlacementId());
        contentValues.put(m.a.f87212d, Integer.valueOf(entity.getMonth()));
        contentValues.put(m.a.f87213e, Integer.valueOf(entity.getDay()));
        contentValues.put(m.a.f87214f, Integer.valueOf(entity.getHour()));
        contentValues.put(m.a.f87215g, Long.valueOf(entity.getTameStamp()));
        return contentValues;
    }
}
