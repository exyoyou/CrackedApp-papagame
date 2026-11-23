package cn.fly.commons.c;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;

/* JADX INFO: loaded from: classes7.dex */
public class p extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f1187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1188d;

    private static class a extends ContentObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private p f1190b;

        public a(p pVar, int i10) {
            super(null);
            this.f1189a = i10;
            this.f1190b = pVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            p pVar = this.f1190b;
            if (pVar != null) {
                pVar.a(z10, this.f1189a);
            }
        }
    }

    public p(Context context) {
        super(context);
        this.f1187c = null;
        this.f1188d = "100215079";
        if (!TextUtils.isEmpty(x.f1484l)) {
            this.f1188d = x.f1484l;
        }
        FlyLog.getInstance().d("oamt vivo appid: " + this.f1188d, new Object[0]);
    }

    private void c(int i10) {
        if (i10 == 0 && this.f1187c == null) {
            this.f1187c = new a(this, 0);
            this.f1168a.getContentResolver().registerContentObserver(Uri.parse(b(0)), true, this.f1187c);
        }
    }

    @Override // cn.fly.commons.c.h
    protected h.b b() {
        h.b bVar = new h.b();
        bVar.f1176a = a(0);
        return bVar;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x003b A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r0
      0x003b: PHI (r0v3 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v5 android.database.Cursor) binds: [B:22:0x004b, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public String a(int i10) {
        Cursor cursorQuery;
        String strB = b(i10);
        if (strB == null) {
            return null;
        }
        try {
            cursorQuery = this.f1168a.getContentResolver().query(Uri.parse(strB), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex(cn.fly.commons.m.a("005Sff!fi;fiPh")));
                        try {
                            cursorQuery.close();
                        } catch (Throwable unused) {
                        }
                        try {
                            c(i10);
                        } catch (Throwable unused2) {
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        FlyLog.getInstance().d(th);
                    } finally {
                        if (cursorQuery != null) {
                            try {
                                cursorQuery.close();
                            } catch (Throwable unused3) {
                            }
                        }
                        try {
                            c(i10);
                        } catch (Throwable unused4) {
                        }
                    }
                }
            }
            if (cursorQuery != null) {
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        return null;
    }

    private String b(int i10) {
        if (i10 == 0) {
            return cn.fly.commons.m.a("051e6fmNgkhgkmnne7fmfhfnfffkfffmfnfffhhkfnggfeinflfmfffkfePh$fl;nOggfe5hgk?fkghfk)h1flggfeEnHijhfgghn");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, int i10) {
        try {
            String strA = a(i10);
            if (i10 == 0) {
                a(strA);
            }
        } catch (Throwable unused) {
        }
    }
}
