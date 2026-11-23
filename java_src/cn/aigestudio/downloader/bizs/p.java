package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class p implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f681a;

    p(Context context) {
        this.f681a = new b(context);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void a(String id2) {
        SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM thread_info WHERE id=?", new String[]{id2});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public j b(String id2) {
        SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
        Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT base_url, start, end FROM thread_info WHERE id=? order by end", new String[]{id2});
        j jVar = cursorRawQuery.moveToFirst() ? new j(id2, cursorRawQuery.getString(0), cursorRawQuery.getInt(1), cursorRawQuery.getInt(2)) : null;
        cursorRawQuery.close();
        writableDatabase.close();
        return jVar;
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void e(j info) {
        try {
            SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
            writableDatabase.execSQL("UPDATE thread_info SET start=? WHERE base_url=? AND id=?", new Object[]{Long.valueOf(info.f672c), info.f671b, info.f670a});
            writableDatabase.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public List<j> g(String url) {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
        Cursor cursorRawQuery = writableDatabase.rawQuery("SELECT base_url, start, end, id FROM thread_info WHERE base_url=? order by end", new String[]{url});
        while (cursorRawQuery.moveToNext()) {
            arrayList.add(new j(cursorRawQuery.getString(3), cursorRawQuery.getString(0), cursorRawQuery.getInt(1), cursorRawQuery.getInt(2)));
        }
        cursorRawQuery.close();
        writableDatabase.close();
        return arrayList;
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void i(j info) {
        SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
        writableDatabase.execSQL("INSERT INTO thread_info(base_url, start, end, id) VALUES (?,?,?,?)", new Object[]{info.f671b, Long.valueOf(info.f672c), Long.valueOf(info.f673d), info.f670a});
        writableDatabase.close();
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public void j(String url) {
        SQLiteDatabase writableDatabase = this.f681a.getWritableDatabase();
        writableDatabase.execSQL("DELETE FROM thread_info WHERE base_url=?", new String[]{url});
        writableDatabase.close();
    }
}
