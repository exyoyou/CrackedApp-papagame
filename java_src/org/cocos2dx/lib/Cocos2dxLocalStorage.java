package org.cocos2dx.lib;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.haima.hmcp.beans.HmInputMappingContent;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxLocalStorage {
    private static String DATABASE_NAME = "jsb.sqlite";
    private static final int DATABASE_VERSION = 1;
    private static String TABLE_NAME = "data";
    private static final String TAG = "Cocos2dxLocalStorage";
    private static SQLiteDatabase mDatabase;
    private static DBOpenHelper mDatabaseOpenHelper;

    private static class DBOpenHelper extends SQLiteOpenHelper {
        DBOpenHelper(Context context) {
            super(context, Cocos2dxLocalStorage.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + Cocos2dxLocalStorage.TABLE_NAME + "(key TEXT PRIMARY KEY,value TEXT);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Upgrading database from version ");
            sb2.append(i10);
            sb2.append(" to ");
            sb2.append(i11);
            sb2.append(", which will destroy all old data");
        }
    }

    public static void destory() {
        SQLiteDatabase sQLiteDatabase = mDatabase;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    public static String getItem(String str) {
        String string = null;
        try {
            Cursor cursorRawQuery = mDatabase.rawQuery("select value from " + TABLE_NAME + " where key=?", new String[]{str});
            while (cursorRawQuery.moveToNext() && string == null) {
                string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
            }
            cursorRawQuery.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return string == null ? "" : string;
    }

    public static boolean init(String str, String str2) {
        if (Cocos2dxActivity.getContext() == null) {
            return false;
        }
        DATABASE_NAME = str;
        TABLE_NAME = str2;
        DBOpenHelper dBOpenHelper = new DBOpenHelper(Cocos2dxActivity.getContext());
        mDatabaseOpenHelper = dBOpenHelper;
        mDatabase = dBOpenHelper.getWritableDatabase();
        return true;
    }

    public static void removeItem(String str) {
        try {
            mDatabase.execSQL("delete from " + TABLE_NAME + " where key=?", new Object[]{str});
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void setItem(String str, String str2) {
        try {
            mDatabase.execSQL("replace into " + TABLE_NAME + "(key,value)values(?,?)", new Object[]{str, str2});
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
