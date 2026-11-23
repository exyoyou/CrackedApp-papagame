package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes7.dex */
class o implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f680a;

    o(Context context) {
        this.f680a = new b(context);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void c(f info) {
        SQLiteDatabase writableDatabase = this.f680a.getWritableDatabase();
        writableDatabase.execSQL("UPDATE task_info SET disposition=?,location=?,mime_type=?,totalBytes=?,file_name=?,currentBytes=? WHERE base_url=?", new Object[]{info.f634m, info.f635n, info.f632k, Long.valueOf(info.f622a.get()), info.f624c, Long.valueOf(info.f623b.get()), info.f626e});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void d(f info) {
        SQLiteDatabase writableDatabase = this.f680a.getWritableDatabase();
        writableDatabase.execSQL("INSERT INTO task_info(base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes) values (?,?,?,?,?,?,?,?,?,?)", new Object[]{info.f626e, info.f627f, info.f625d, info.f624c, info.f632k, info.f633l, info.f634m, info.f635n, Long.valueOf(info.f623b.get()), Long.valueOf(info.f622a.get())});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public void f(String url) {
        SQLiteDatabase writableDatabase = this.f680a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM task_info WHERE base_url=?", new String[]{url});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public f h(String url) {
        f fVar;
        SQLiteDatabase writableDatabase = this.f680a.getWritableDatabase();
        Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes FROM task_info WHERE base_url=?", new String[]{url});
        if (cursorRawQuery.moveToFirst()) {
            fVar = new f();
            fVar.f626e = cursorRawQuery.getString(0);
            fVar.f627f = cursorRawQuery.getString(1);
            fVar.f625d = cursorRawQuery.getString(2);
            fVar.f624c = cursorRawQuery.getString(3);
            fVar.f632k = cursorRawQuery.getString(4);
            fVar.f633l = cursorRawQuery.getString(5);
            fVar.f634m = cursorRawQuery.getString(6);
            fVar.f635n = cursorRawQuery.getString(7);
            fVar.f623b.set(cursorRawQuery.getInt(8));
            fVar.f622a.set(cursorRawQuery.getInt(9));
        } else {
            fVar = null;
        }
        cursorRawQuery.close();
        writableDatabase.close();
        return fVar;
    }
}
