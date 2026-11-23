package com.beizi.fusion.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.u;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f10057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f10058b;

    private b(Context context) {
        this.f10058b = a.a(context);
    }

    public static b a(Context context) {
        if (f10057a == null) {
            synchronized (b.class) {
                if (f10057a == null) {
                    f10057a = new b(context);
                }
            }
        }
        return f10057a;
    }

    private synchronized boolean b(String str) {
        boolean z10 = false;
        if (str == null) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f10058b.getWritableDatabase().query("Sqlite_master", new String[]{"count('*') as c"}, "type=? and name =?", new String[]{"table", str.trim()}, null, null, null);
            if (cursorQuery.moveToNext()) {
                int i10 = cursorQuery.getInt(0);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("DaoManager count:");
                sb2.append(i10);
                if (i10 > 0) {
                    z10 = true;
                }
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
            return z10;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
        return z10;
    }

    private synchronized void c(String str) {
        SQLiteDatabase writableDatabase = this.f10058b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String str2 = "create table " + str + "(id integer primary key autoincrement,event_code nvarchar,channel nvarchar,space_id nvarchar," + UMCrash.SP_KEY_TIMESTAMP + " nvarchar)";
            ac.a("DaoManager", "sql createTable tableName = " + str2);
            writableDatabase.execSQL(str2);
            writableDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private synchronized void d(String str) {
        boolean zB = b(str);
        ac.a("DaoManager", "sql table is exist == " + zB);
        if (!zB) {
            c(str);
        }
    }

    private synchronized int e(String str) {
        int count;
        Cursor cursorQuery = this.f10058b.getWritableDatabase().query(str, null, null, null, null, null, null);
        if (cursorQuery != null) {
            count = cursorQuery.getCount();
            cursorQuery.close();
        } else {
            count = 0;
        }
        return count;
    }

    private EventItem a(Cursor cursor) {
        EventItem eventItem = new EventItem();
        eventItem.setCode(cursor.getString(cursor.getColumnIndex("event_code")));
        eventItem.setChannel(cursor.getString(cursor.getColumnIndex("channel")));
        eventItem.setSpaceId(cursor.getString(cursor.getColumnIndex("space_id")));
        eventItem.setTimeStamp(cursor.getString(cursor.getColumnIndex(UMCrash.SP_KEY_TIMESTAMP)));
        return eventItem;
    }

    private ContentValues a(EventItem eventItem) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_code", eventItem.getCode());
        contentValues.put("channel", eventItem.getChannel());
        contentValues.put("space_id", eventItem.getSpaceId());
        contentValues.put(UMCrash.SP_KEY_TIMESTAMP, eventItem.getTimeStamp());
        return contentValues;
    }

    public synchronized void a(String str, EventItem eventItem) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = "T_" + str;
        d(str2);
        int iE = e(str2);
        long jInsert = this.f10058b.getWritableDatabase().insert(str2, null, a(eventItem));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("insert before size == ");
        sb2.append(iE);
        sb2.append(", insert data success = ");
        sb2.append(jInsert != -1);
        ac.a("DaoManager", sb2.toString());
        a(str2, Math.max(86400000L, u.b(str) * 2));
    }

    public synchronized List<EventItem> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = "T_" + str;
        d(str2);
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.f10058b.getWritableDatabase().query(str2, null, null, null, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.moveToFirst();
            do {
                try {
                    arrayList.add(a(cursorQuery));
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public synchronized void a(String str, long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        int iE = e(str);
        if (iE > 0 && j10 > 0 && jCurrentTimeMillis > 0) {
            boolean z10 = true;
            int iDelete = this.f10058b.getWritableDatabase().delete(str, "timestamp<=?", new String[]{String.valueOf(jCurrentTimeMillis)});
            StringBuilder sb2 = new StringBuilder();
            sb2.append("start first delete data success = ");
            if (iDelete <= 0) {
                z10 = false;
            }
            sb2.append(z10);
            sb2.append(", intervalTime = ");
            sb2.append(j10);
            ac.a("DaoManager", sb2.toString());
        }
        if (iE >= 1000) {
            this.f10058b.getWritableDatabase().execSQL("delete from " + str + " where rowid in(select rowid from " + str + " order by id limit 200)");
            ac.a("DaoManager", "start second delete data");
        }
    }
}
