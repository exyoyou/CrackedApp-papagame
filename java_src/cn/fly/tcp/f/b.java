package cn.fly.tcp.f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.fly.commons.n;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f1657a;

    public b(Context context) {
        this.f1657a = new a(context.getApplicationContext());
    }

    public void a(String str, long j10) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = this.f1657a.getWritableDatabase();
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("workId", str);
                    contentValues.put("expireTime", Long.valueOf(j10));
                    writableDatabase.replace(a.f1655a, null, contentValues);
                    writableDatabase.close();
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    try {
                        c.a().a(th);
                        if (sQLiteDatabase == null) {
                        } else {
                            sQLiteDatabase.close();
                        }
                    } catch (Throwable th2) {
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void b(String str) {
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = this.f1657a.getWritableDatabase();
            SQLiteDatabase.class.getDeclaredMethod(n.a("007d_cgQda3cjhhdc"), String.class, Object[].class).invoke(writableDatabase, "delete from " + a.f1655a + " where workId = ?", new String[]{str});
            if (writableDatabase == null) {
            }
        } catch (Throwable th) {
            try {
                c.a().a(th);
            } finally {
                if (writableDatabase != null) {
                    try {
                        writableDatabase.close();
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    public long a(String str) {
        SQLiteDatabase readableDatabase;
        Throwable th;
        Cursor cursor;
        try {
            readableDatabase = this.f1657a.getReadableDatabase();
            try {
                cursor = (Cursor) SQLiteDatabase.class.getMethod(n.a("008MbhYb=dehhbe*d,bhca"), String.class, String[].class).invoke(readableDatabase, "select expireTime from " + a.f1655a + " where workId = ?", new String[]{str});
                try {
                    if (cursor.moveToFirst()) {
                        long j10 = cursor.getLong(cursor.getColumnIndex("expireTime"));
                        try {
                            cursor.close();
                        } catch (Throwable unused) {
                        }
                        if (readableDatabase != null) {
                            try {
                                readableDatabase.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        return j10;
                    }
                    try {
                        cursor.close();
                    } catch (Throwable unused3) {
                    }
                    if (readableDatabase == null) {
                        return 0L;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        c.a().a(th);
                        if (readableDatabase == null) {
                            return 0L;
                        }
                    } finally {
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (readableDatabase != null) {
                            try {
                                readableDatabase.close();
                            } catch (Throwable unused5) {
                            }
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } catch (Throwable th4) {
            readableDatabase = null;
            th = th4;
            cursor = null;
        }
        try {
            return 0L;
        } catch (Throwable unused6) {
            return 0L;
        }
    }

    public void a() {
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = this.f1657a.getWritableDatabase();
            String str = "delete from " + a.f1655a + " where expireTime < ?";
            SQLiteDatabase.class.getDeclaredMethod(n.a("007dFcg'da[cjhhdc"), String.class, Object[].class).invoke(writableDatabase, str, new String[]{System.currentTimeMillis() + ""});
            if (writableDatabase == null) {
            }
        } catch (Throwable th) {
            try {
                c.a().a(th);
            } finally {
                if (writableDatabase != null) {
                    try {
                        writableDatabase.close();
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
