package com.byazt.vm;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 130})
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f21235c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static String f21236da;
    public static long sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static boolean f21237t;
    public static final String tt;
    public static final List<com.byazt.gj.n> uj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f21238a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final nu f21240n;
    public final gt sp;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Map<String, String> f21241u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Context f21242x;
    public Long yp;
    public final ReentrantLock ve = new ReentrantLock();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f21239i = new AtomicBoolean(false);

    static {
        String str = m.class.getSimpleName() + "#";
        tt = str;
        f21235c = str;
        uj = new ArrayList();
    }

    public m(Context context) {
        this.f21242x = context.getApplicationContext();
        nu nuVarC = rh.c(context);
        this.f21240n = nuVarC;
        if (nuVarC != null) {
            this.f21238a = nuVarC.tt(context);
        } else {
            this.f21238a = false;
        }
        this.sp = new gt(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        int iIntValue;
        try {
            this.ve.lock();
            my myVarC = this.sp.c();
            long jLongValue = -1;
            boolean z10 = false;
            if (myVarC != null) {
                f21236da = myVarC.f21245c;
                Boolean bool = myVarC.ve;
                f21237t = bool != null && bool.booleanValue();
                Long l10 = myVarC.sp;
                sl = l10 == null ? -1L : l10.longValue();
                this.f21241u = myVarC.c();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Pair<String, Boolean> pairC = c(this.f21242x);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            my myVar = null;
            String string = null;
            if (pairC.first != null) {
                if (myVarC != null) {
                    string = myVarC.tt;
                    iIntValue = myVarC.f21244a.intValue() + 1;
                } else {
                    iIntValue = -1;
                }
                if (TextUtils.isEmpty(string)) {
                    string = UUID.randomUUID().toString();
                }
                String str = string;
                if (iIntValue <= 0) {
                    iIntValue = 1;
                }
                my myVar2 = new my((String) pairC.first, str, (Boolean) pairC.second, Long.valueOf(jElapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(iIntValue), this.yp);
                this.sp.c(myVar2);
                myVar = myVar2;
            }
            if (myVar != null) {
                f21236da = myVar.f21245c;
                Boolean bool2 = myVar.ve;
                if (bool2 != null && bool2.booleanValue()) {
                    z10 = true;
                }
                f21237t = z10;
                Long l11 = myVar.sp;
                if (l11 != null) {
                    jLongValue = l11.longValue();
                }
                sl = jLongValue;
                this.f21241u = myVar.c();
            }
        } finally {
            this.ve.unlock();
            c(new com.byazt.gj.n.c(f21236da, f21237t, sl), ve());
        }
    }

    private static Object[] ve() {
        Object[] array;
        List<com.byazt.gj.n> list = uj;
        synchronized (list) {
            array = list.size() > 0 ? list.toArray() : null;
        }
        return array;
    }

    public void tt() {
        if (this.f21239i.compareAndSet(false, true)) {
            c(new Runnable() { // from class: com.byazt.vm.m.1
                @Override // java.lang.Runnable
                public void run() {
                    m.this.uj();
                }
            });
        }
    }

    @Nullable
    @WorkerThread
    public Map<String, String> c(long j10) {
        if (!this.f21238a) {
            return null;
        }
        if (!com.byazt.gj.c.tt) {
            my myVarC = this.sp.c();
            if (myVarC != null) {
                return myVarC.c();
            }
            return null;
        }
        tt();
        if (this.f21241u == null) {
            SystemClock.elapsedRealtime();
            try {
                if (this.ve.tryLock(j10, TimeUnit.MILLISECONDS)) {
                    this.ve.unlock();
                }
            } catch (InterruptedException e10) {
                com.byazt.yv.da.c(e10);
            }
        }
        return this.f21241u;
    }

    @AnyThread
    public static void c(@Nullable com.byazt.gj.n nVar) {
        List<com.byazt.gj.n> list = uj;
        synchronized (list) {
            list.add(nVar);
        }
        String str = f21236da;
        if (str != null) {
            c(new com.byazt.gj.n.c(str, f21237t, sl), new Object[]{nVar});
        }
    }

    public nu c() {
        return this.f21240n;
    }

    private static void c(@Nullable com.byazt.gj.n.c cVar, Object[] objArr) {
        if (cVar == null || objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            ((com.byazt.gj.n) obj).c(cVar);
        }
    }

    public static void c(JSONObject jSONObject, String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e10) {
            com.byazt.yv.da.c(e10);
        }
    }

    public static <K, V> void c(Map<K, V> map, K k10, V v10) {
        if (k10 == null || v10 == null) {
            return;
        }
        map.put(k10, v10);
    }

    @NonNull
    @WorkerThread
    private Pair<String, Boolean> c(Context context) {
        String str;
        Boolean boolValueOf;
        nu.c cVarVe;
        nu nuVar = this.f21240n;
        if (nuVar == null || (cVarVe = nuVar.ve(context)) == null) {
            str = null;
            boolValueOf = null;
        } else {
            str = cVarVe.tt;
            boolValueOf = Boolean.valueOf(cVarVe.ve);
            if (cVarVe instanceof i.c) {
                this.yp = Long.valueOf(((i.c) cVarVe).f21234c);
            }
        }
        return new Pair<>(str, boolValueOf);
    }

    private static void c(Runnable runnable) {
        x.c(f21235c + "-query", runnable);
    }
}
