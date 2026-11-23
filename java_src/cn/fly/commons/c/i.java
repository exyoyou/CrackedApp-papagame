package cn.fly.commons.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class i extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f1177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f1178d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f1180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f1181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f1182c;

        public a(String str) {
            this.f1180a = str;
        }

        public void a(long j10) {
            this.f1181b = j10;
        }

        public void a(String str) {
            this.f1182c = str;
        }

        public boolean a() {
            return this.f1181b > System.currentTimeMillis();
        }
    }

    public i(Context context) {
        super(context);
        this.f1177c = new a(x.b("004AcjIcZchcb"));
    }

    private void e() {
        try {
            if (this.f1178d == null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(x.b("044b8cjceckce_eCchfccfckde=f1dbce6e:ckcjEied'chcbckecdcebddfgdfcgfgfkfhdfcgddekcgdcejecdfhcfh"));
                this.f1178d = new BroadcastReceiver() { // from class: cn.fly.commons.c.i.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        String stringExtra;
                        ArrayList<String> stringArrayListExtra;
                        if (context == null || intent == null) {
                            return;
                        }
                        try {
                            boolean zContains = false;
                            if (intent.getIntExtra(x.b("016Hcj$ied>ddcbdfcj7hAchdedbfb<fc!di"), 0) == 2 && (stringArrayListExtra = intent.getStringArrayListExtra(x.b("017DcjDied@ddcbfkLcbZdgBc]di]eTedcheh;h"))) != null) {
                                zContains = stringArrayListExtra.contains(context.getPackageName());
                            }
                            if (zContains && (stringExtra = intent.getStringExtra(x.b("010Pcj9ied=ddcbebdbVie"))) != null && stringExtra.equals(x.b("004McjVc[chcb"))) {
                                i.this.f1177c.a(0L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                };
                if (DH.SyncMtd.getOSVersionIntForFly() < 33) {
                    this.f1168a.registerReceiver(this.f1178d, intentFilter, x.b("048b!cjceckceJeXchfccfckde3f[dbce7eQckcj3ied(chcbck+ieFcicechehehchcjUdVckfgfkfhdfcgddekcgdcejecdfhcfh"), null);
                } else {
                    this.f1168a.registerReceiver(this.f1178d, intentFilter, x.b("048bCcjceckcePeMchfccfckdeKf_dbce7eOckcjAied_chcbck9ieKcicechehehchcj:dMckfgfkfhdfcgddekcgdcejecdfhcfh"), null, 4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // cn.fly.commons.c.h
    public synchronized String d() {
        Context context = this.f1168a;
        if (context == null) {
            return null;
        }
        return a(context.getApplicationContext(), this.f1177c, false);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x007e A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r9
      0x007e: PHI (r9v3 android.database.Cursor) = (r9v2 android.database.Cursor), (r9v6 android.database.Cursor) binds: [B:36:0x008b, B:30:0x007c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    private String a(Context context, a aVar, boolean z10) {
        Cursor cursorQuery;
        String string;
        if (aVar == null) {
            return null;
        }
        if (!z10 && aVar.a()) {
            return aVar.f1182c;
        }
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse(x.b("036bMcj-dhedhjkkbWcjceckce9e5chfccfckde?fJdbce4e'ckcj]iedMchcbehcbdg]k")), null, null, new String[]{aVar.f1180a}, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                }
                return null;
            }
            try {
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex(x.b("005Qcc]cfUcf0e"));
                if (columnIndex >= 0) {
                    string = cursorQuery.getString(columnIndex);
                    aVar.a(string);
                } else {
                    string = null;
                }
                if (!z10) {
                    int columnIndex2 = cursorQuery.getColumnIndex(x.b("007eSdhTi*chciRe6cb"));
                    if (columnIndex2 >= 0) {
                        aVar.a(cursorQuery.getLong(columnIndex2));
                    }
                    int columnIndex3 = cursorQuery.getColumnIndex(x.b("004bVcjcb[e"));
                    if (columnIndex3 >= 0 && cursorQuery.getInt(columnIndex3) != 1000) {
                        e();
                    }
                }
                try {
                    cursorQuery.close();
                } catch (Throwable unused) {
                }
                return string;
            } catch (Throwable th) {
                th = th;
                try {
                    FlyLog.getInstance().d(th);
                    return null;
                } finally {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }
}
