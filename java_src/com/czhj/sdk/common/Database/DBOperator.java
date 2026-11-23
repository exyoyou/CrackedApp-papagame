package com.czhj.sdk.common.Database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.czhj.sdk.common.ThreadPool.BackgroundThreadFactory;
import com.czhj.sdk.logger.SigmobLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class DBOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final DBOperator f25396a = new DBOperator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f25398c = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f25397b = new ThreadPoolExecutor(1, 1, 60, TimeUnit.SECONDS, new ArrayBlockingQueue(10), new BackgroundThreadFactory());

    public interface DataSQLiteLisenter {
        void onFailed(Error error);

        void onSuccess(List<Map> list);
    }

    private class SQLiteDeleteThread implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f25400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f25401c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String[] f25402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SQLiteLisenter f25403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final SQLiteDatabase f25404f;

        SQLiteDeleteThread(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, SQLiteLisenter sQLiteLisenter) {
            this.f25400b = str;
            this.f25404f = sQLiteDatabase;
            this.f25401c = str2;
            this.f25402d = strArr;
            this.f25403e = sQLiteLisenter;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f25404f.delete(this.f25400b, this.f25401c, this.f25402d);
                SQLiteLisenter sQLiteLisenter = this.f25403e;
                if (sQLiteLisenter != null) {
                    sQLiteLisenter.onSuccess(null);
                }
            } catch (Throwable th) {
                SQLiteLisenter sQLiteLisenter2 = this.f25403e;
                if (sQLiteLisenter2 != null) {
                    sQLiteLisenter2.onFailed(new Error(th.getMessage()));
                }
            }
        }
    }

    private class SQLiteThread implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f25406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String[] f25407c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f25408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String[] f25409e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f25410f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f25411g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f25412h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final String f25413i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final SQLiteDatabase f25414j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final DataSQLiteLisenter f25415k;

        SQLiteThread(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, DataSQLiteLisenter dataSQLiteLisenter) {
            this.f25406b = str;
            this.f25414j = sQLiteDatabase;
            this.f25407c = strArr;
            this.f25408d = str2;
            this.f25409e = strArr2;
            this.f25410f = str3;
            this.f25411g = str4;
            this.f25412h = str5;
            this.f25413i = str6;
            this.f25415k = dataSQLiteLisenter;
        }

        private List<Map> a(Cursor cursor) {
            Object objValueOf;
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                String[] columnNames = cursor.getColumnNames();
                HashMap map = new HashMap();
                for (String str : columnNames) {
                    int columnIndex = cursor.getColumnIndex(str);
                    if (columnIndex >= 0) {
                        int type = cursor.getType(columnIndex);
                        if (type == 1) {
                            objValueOf = Long.valueOf(cursor.getLong(columnIndex));
                        } else if (type == 2) {
                            objValueOf = Double.valueOf(cursor.getDouble(columnIndex));
                        } else if (type == 3) {
                            objValueOf = cursor.getString(columnIndex);
                        } else if (type == 4) {
                            map.put(str, cursor.getBlob(columnIndex));
                        }
                        map.put(str, objValueOf);
                    }
                }
                arrayList.add(map);
            }
            return arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Cursor cursorQuery = this.f25414j.query(this.f25406b, this.f25407c, this.f25408d, this.f25409e, this.f25410f, this.f25411g, this.f25412h, this.f25413i);
                try {
                    List<Map> listA = a(cursorQuery);
                    DataSQLiteLisenter dataSQLiteLisenter = this.f25415k;
                    if (dataSQLiteLisenter != null) {
                        dataSQLiteLisenter.onSuccess(listA);
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                DataSQLiteLisenter dataSQLiteLisenter2 = this.f25415k;
                if (dataSQLiteLisenter2 != null) {
                    dataSQLiteLisenter2.onFailed(new Error(th3.getMessage()));
                }
            }
        }
    }

    private DBOperator() {
    }

    public static synchronized DBOperator getInstance() {
        return f25396a;
    }

    public int count(SQLiteDatabase sQLiteDatabase, String str) {
        return count(sQLiteDatabase, str, null);
    }

    public void delete(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, SQLiteLisenter sQLiteLisenter) {
        try {
            this.f25397b.submit(new SQLiteDeleteThread(sQLiteDatabase, str, str2, strArr, sQLiteLisenter));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            sQLiteLisenter.onFailed(new Error(th.getMessage()));
        }
    }

    public void find(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, DataSQLiteLisenter dataSQLiteLisenter) {
        this.f25397b.submit(new SQLiteThread(sQLiteDatabase, str, strArr, str2, strArr2, str3, str4, str5, str6, dataSQLiteLisenter));
    }

    public int count(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query(str, null, str2, null, null, null, null, null);
            try {
                int count = cursorQuery.getCount();
                cursorQuery.close();
                return count;
            } catch (Throwable th) {
                th = th;
                try {
                    SigmobLog.e(th.getMessage());
                    return 0;
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }
}
