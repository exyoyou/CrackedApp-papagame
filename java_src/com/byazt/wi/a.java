package com.byazt.wi;

import android.content.ContentValues;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 983, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f21572c = new a();
    public static final c tt;
    public static volatile c uj;
    public static volatile long ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, tt> f21573n = new ConcurrentHashMap();

    interface c {
        void c(long j10);

        void c(ContentValues contentValues);
    }

    @com.byazt.zqa.c(c = {0, 1, 983, 480})
    private static class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f21576a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f21577c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f21578n;
        public boolean sp;
        public int tt;
        public long uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f21579x;

        private tt() {
        }
    }

    static {
        c cVar = new c() { // from class: com.byazt.wi.a.1
            @Override // com.byazt.wi.a.c
            public void c(ContentValues contentValues) {
                n.c(contentValues);
            }

            @Override // com.byazt.wi.a.c
            public void c(long j10) {
                n.c(j10);
            }
        };
        tt = cVar;
        ve = -1L;
        uj = cVar;
    }

    public void uj(String str, long j10) {
        tt ttVar;
        if (TextUtils.isEmpty(str) || (ttVar = this.f21573n.get(str)) == null) {
            return;
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        synchronized (ttVar) {
            if (ttVar.f21579x) {
                if (ttVar.f21577c <= 0) {
                    ttVar.f21577c = j10;
                }
                ContentValues contentValuesC = c(str, ttVar, j10);
                this.f21573n.remove(str);
                c(contentValuesC);
            }
        }
    }

    public void ve(String str, long j10) {
        tt ttVar;
        if (TextUtils.isEmpty(str) || (ttVar = this.f21573n.get(str)) == null) {
            return;
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        synchronized (ttVar) {
            if (ttVar.sp) {
                return;
            }
            ttVar.sp = true;
            if (ttVar.f21577c <= 0) {
                ttVar.f21577c = j10;
            }
            ttVar.f21576a = Math.max(0L, j10 - ttVar.f21577c);
        }
    }

    public static a c() {
        return f21572c;
    }

    public void tt(final String str, final long j10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        x.c(new sp("tmax_record_on_cached") { // from class: com.byazt.wi.a.2
            @Override // java.lang.Runnable
            public void run() {
                tt ttVar = (tt) a.this.f21573n.get(str);
                if (ttVar == null) {
                    return;
                }
                long jCurrentTimeMillis = j10;
                if (jCurrentTimeMillis <= 0) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                synchronized (ttVar) {
                    long j11 = ttVar.f21577c;
                    if (j11 <= 0) {
                        return;
                    }
                    if (ttVar.f21578n <= 0) {
                        ttVar.f21578n = Math.max(0L, jCurrentTimeMillis - j11);
                    }
                }
            }
        });
    }

    public boolean c(int i10) {
        com.byazt.ete.x.ve veVarC = com.byazt.ete.x.c(i10);
        if (veVarC == null || veVarC.nu() == null) {
            return false;
        }
        return veVarC.nu().tt();
    }

    public void c(String str, int i10, String str2, long j10) {
        if (!c(i10) || TextUtils.isEmpty(str)) {
            return;
        }
        tt ttVar = this.f21573n.get(str);
        if (ttVar == null) {
            ttVar = new tt();
            tt ttVar2 = (tt) this.f21573n.putIfAbsent(str, ttVar);
            if (ttVar2 != null) {
                ttVar = ttVar2;
            }
        }
        synchronized (ttVar) {
            if (j10 <= 0) {
                j10 = System.currentTimeMillis();
                ttVar.f21577c = j10;
                ttVar.tt = i10;
                ttVar.ve = str2;
                ttVar.uj = 0L;
                ttVar.f21578n = 0L;
                ttVar.f21576a = 0L;
                ttVar.sp = false;
                ttVar.f21579x = false;
            } else {
                ttVar.f21577c = j10;
                ttVar.tt = i10;
                ttVar.ve = str2;
                ttVar.uj = 0L;
                ttVar.f21578n = 0L;
                ttVar.f21576a = 0L;
                ttVar.sp = false;
                ttVar.f21579x = false;
            }
            throw th;
        }
    }

    public void c(String str, long j10) {
        tt ttVar;
        if (TextUtils.isEmpty(str) || (ttVar = this.f21573n.get(str)) == null) {
            return;
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        synchronized (ttVar) {
            if (ttVar.f21577c <= 0) {
                ttVar.f21577c = j10;
            }
            if (ttVar.uj <= 0) {
                ttVar.uj = Math.max(0L, j10 - ttVar.f21577c);
            }
            ttVar.f21579x = true;
        }
    }

    private ContentValues c(String str, tt ttVar, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("load_id", str);
        contentValues.put("ad_slot_type", Integer.valueOf(ttVar.tt));
        contentValues.put("ad_slot_id", ttVar.ve);
        contentValues.put("loaded_duration", Long.valueOf(ttVar.uj));
        contentValues.put("cached_duration", Long.valueOf(ttVar.f21578n));
        contentValues.put("shown_duration", Long.valueOf(ttVar.f21576a));
        contentValues.put("is_shown", Integer.valueOf(ttVar.sp ? 1 : 0));
        contentValues.put("record_time", Long.valueOf(j10));
        return contentValues;
    }

    private void c(ContentValues contentValues) {
        uj.c(contentValues);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - ve > 86400000) {
            ve = jCurrentTimeMillis;
            final long j10 = jCurrentTimeMillis - bn.f7592d;
            if (j10 > 0) {
                x.c(new sp("tmax_record_cleanup") { // from class: com.byazt.wi.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.uj.c(j10);
                    }
                });
            }
        }
    }
}
