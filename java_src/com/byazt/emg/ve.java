package com.byazt.emg;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.bv.BaseConstants;
import com.byazt.bwm.x;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1199, 54})
public final class ve {
    public static volatile ve tt;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<Map<String, c>> f13525c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile SQLiteStatement f13526n;
    public final Executor uj;
    public final uj ve;

    private ve(Context context) {
        SparseArray<Map<String, c>> sparseArray = new SparseArray<>(2);
        this.f13525c = sparseArray;
        this.uj = new com.byazt.jtc.uj(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new x("/VideoProxyDB"));
        this.ve = new uj(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    public void delete(final String str, final int i10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, c> map = this.f13525c.get(i10);
        if (map != null) {
            map.remove(str);
        }
        this.uj.execute(new Runnable() { // from class: com.byazt.emg.ve.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ve.this.ve.getWritableDatabase().delete("video_http_header_t", "key=? AND flag=?", new String[]{str, String.valueOf(i10)});
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void insert(final c cVar) {
        if (cVar != null) {
            Map<String, c> map = this.f13525c.get(cVar.uj);
            if (map != null) {
                map.put(cVar.f13523c, cVar);
            }
            this.uj.execute(new Runnable() { // from class: com.byazt.emg.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ve.this.f13526n == null) {
                            ve veVar = ve.this;
                            veVar.f13526n = veVar.ve.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            ve.this.f13526n.clearBindings();
                        }
                        ve.this.f13526n.bindString(1, cVar.f13523c);
                        ve.this.f13526n.bindString(2, cVar.tt);
                        ve.this.f13526n.bindLong(3, cVar.ve);
                        ve.this.f13526n.bindLong(4, cVar.uj);
                        ve.this.f13526n.bindString(5, cVar.f13524n);
                        ve.this.f13526n.executeInsert();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public c query(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, c> map = this.f13525c.get(i10);
        c cVar = map == null ? null : map.get(str);
        if (cVar != null) {
            return cVar;
        }
        try {
            Cursor cursorQuery = this.ve.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i10)}, null, null, null, "1");
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0 && cursorQuery.moveToNext()) {
                    int columnIndex = cursorQuery.getColumnIndex("key");
                    String string = columnIndex != -1 ? cursorQuery.getString(columnIndex) : null;
                    int columnIndex2 = cursorQuery.getColumnIndex("mime");
                    String string2 = columnIndex2 != -1 ? cursorQuery.getString(columnIndex2) : null;
                    int columnIndex3 = cursorQuery.getColumnIndex("contentLength");
                    int i11 = columnIndex3 != -1 ? cursorQuery.getInt(columnIndex3) : -1;
                    int columnIndex4 = cursorQuery.getColumnIndex(BaseConstants.EVENT_LABEL_EXTRA);
                    cVar = new c(string, string2, i11, i10, columnIndex4 != -1 ? cursorQuery.getString(columnIndex4) : null);
                }
                cursorQuery.close();
            }
            if (cVar != null && map != null) {
                map.put(str, cVar);
            }
            return cVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String tt(int i10) {
        if (i10 <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(i10 << 1);
        sb2.append("?");
        for (int i11 = 1; i11 < i10; i11++) {
            sb2.append(",?");
        }
        return sb2.toString();
    }

    public static ve c(Context context) {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve(context);
                }
            }
        }
        return tt;
    }

    public void c(Collection<String> collection, int i10) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        int size = collection.size() + 1;
        String[] strArr = new String[size];
        Map<String, c> map = this.f13525c.get(i10);
        int i11 = -1;
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i11++;
            strArr[i11] = str;
        }
        strArr[i11 + 1] = String.valueOf(i10);
        try {
            this.ve.getWritableDatabase().delete("video_http_header_t", "key IN(" + tt(size) + ") AND flag=?", strArr);
        } catch (Throwable unused) {
        }
    }

    public void c(final int i10) {
        Map<String, c> map = this.f13525c.get(i10);
        if (map != null) {
            map.clear();
        }
        this.uj.execute(new Runnable() { // from class: com.byazt.emg.ve.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ve.this.ve.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i10)});
                } catch (Throwable unused) {
                }
            }
        });
    }
}
