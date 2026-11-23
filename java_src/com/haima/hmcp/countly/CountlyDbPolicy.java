package com.haima.hmcp.countly;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CountlyDbPolicy extends SQLiteOpenHelper implements CountlyDiskPolicy<CountlyDBInfo> {
    public static final String DB_NAME = "countly.db";
    public static final int DB_VERSION = 1;
    public static final String FIELD_COUNTLY_EVENT_ID = "eventId";
    public static final String FIELD_COUNTLY_JSON = "json";
    public static final String FIELD_COUNTLY_KEY_ID = "id";
    public static final String FIELD_COUNTLY_STATUS = "status";
    public static final String FIELD_COUNTLY_TIME_STAMP = "timeStamp";
    public static final int NUM_ROW_LIMIT = 100;
    public static final String TABLE_COUNTLY_NAME = "countly_table";
    private static final String TAG = "CountlyDbPolicy";
    private static CountlyDbPolicy mInstance;

    private CountlyDbPolicy(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    private void createTable(SQLiteDatabase sQLiteDatabase) {
        LogUtils.i(TAG, "==createTable===");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS countly_table( id INTEGER PRIMARY KEY AUTOINCREMENT,eventId TEXT,timeStamp TEXT UNIQUE,json TEXT,status INTEGER)");
    }

    private synchronized void deleteCountly(CountlyDBInfo countlyDBInfo) {
        if (countlyDBInfo == null) {
            return;
        }
        LogUtils.i(TAG, "==deleteCountly===" + countlyDBInfo.toString());
        getWritableDatabase().delete(TABLE_COUNTLY_NAME, "eventId=? AND timeStamp=? ", new String[]{countlyDBInfo.eventId, countlyDBInfo.timeStamp});
    }

    private void dropTable(SQLiteDatabase sQLiteDatabase) {
        LogUtils.i(TAG, "==dropTable===");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS countly_table");
    }

    private synchronized ArrayList<CountlyDBInfo> getCountlyInfoLists() {
        ArrayList<CountlyDBInfo> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = getWritableDatabase().rawQuery("select * from countly_table order by id desc limit 100", new String[0]);
        if (cursorRawQuery == null) {
            return arrayList;
        }
        cursorRawQuery.moveToFirst();
        while (!cursorRawQuery.isAfterLast()) {
            CountlyDBInfo countlyDBInfo = new CountlyDBInfo();
            countlyDBInfo.eventId = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(FIELD_COUNTLY_EVENT_ID));
            countlyDBInfo.timeStamp = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(FIELD_COUNTLY_TIME_STAMP));
            countlyDBInfo.json = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(FIELD_COUNTLY_JSON));
            countlyDBInfo.status = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("status"));
            arrayList.add(countlyDBInfo);
            cursorRawQuery.moveToNext();
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static CountlyDbPolicy getInstance(Context context) {
        LogUtils.i(TAG, "==getInstance===");
        if (mInstance == null) {
            synchronized (CountlyDbPolicy.class) {
                if (mInstance == null) {
                    mInstance = new CountlyDbPolicy(context);
                }
            }
        }
        return mInstance;
    }

    private synchronized void insertCountly(CountlyDBInfo countlyDBInfo) {
        LogUtils.i(TAG, "==insertCountly===" + countlyDBInfo.toString());
        ContentValues contentValues = new ContentValues();
        contentValues.put(FIELD_COUNTLY_EVENT_ID, countlyDBInfo.eventId);
        contentValues.put(FIELD_COUNTLY_TIME_STAMP, countlyDBInfo.timeStamp);
        contentValues.put(FIELD_COUNTLY_JSON, countlyDBInfo.json);
        contentValues.put("status", Integer.valueOf(countlyDBInfo.status));
        getWritableDatabase().replace(TABLE_COUNTLY_NAME, null, contentValues);
    }

    private synchronized void updateCountlyStatus(CountlyDBInfo countlyDBInfo) {
        LogUtils.i(TAG, "==updateCountlyStatus===" + countlyDBInfo.toString());
        ContentValues contentValues = new ContentValues();
        contentValues.put(FIELD_COUNTLY_EVENT_ID, countlyDBInfo.eventId);
        contentValues.put(FIELD_COUNTLY_TIME_STAMP, countlyDBInfo.timeStamp);
        contentValues.put(FIELD_COUNTLY_JSON, countlyDBInfo.json);
        contentValues.put("status", Integer.valueOf(countlyDBInfo.status));
        getWritableDatabase().update(TABLE_COUNTLY_NAME, contentValues, "eventId=?  AND timeStamp=? ", new String[]{countlyDBInfo.eventId, countlyDBInfo.timeStamp});
    }

    @Override // com.haima.hmcp.countly.CountlyDiskPolicy
    public List<CountlyDBInfo> getDiskCacheEvent() {
        try {
            return getCountlyInfoLists();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        LogUtils.i(TAG, "==onCreate===");
        createTable(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        LogUtils.i(TAG, "==onUpgrade===");
        dropTable(sQLiteDatabase);
        createTable(sQLiteDatabase);
    }

    @Override // com.haima.hmcp.countly.CountlyDiskPolicy
    public void deleteDiskCacheEvent(CountlyDBInfo countlyDBInfo) {
        try {
            deleteCountly(countlyDBInfo);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.haima.hmcp.countly.CountlyDiskPolicy
    public void recordToDisk(CountlyDBInfo countlyDBInfo) {
        try {
            insertCountly(countlyDBInfo);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
