package com.byazt.wi;

import android.content.SharedPreferences;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.LruCache;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.bwm.sp;
import com.byazt.ete.x;
import com.byazt.omf.gt;
import com.umeng.analytics.pro.bq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 983, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final tt f21580c = new tt();
    public final LruCache<String, c> tt = new LruCache<>(64);
    public final ConcurrentHashMap<String, Boolean> ve = new ConcurrentHashMap<>();

    @com.byazt.zqa.c(c = {0, 1, 983, 194})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f21584c;
        public final long tt;

        public c(long j10, long j11) {
            this.f21584c = j10;
            this.tt = j11;
        }

        public boolean c(x.n nVar) {
            return this.tt <= 0 || System.currentTimeMillis() - this.tt > ((long) nVar.x()) * 1000;
        }
    }

    private SharedPreferences tt() {
        return com.byazt.nys.tt.tt(gt.getContext(), "sp_dynamic_tmax_timeout", 0);
    }

    public static tt c() {
        return f21580c;
    }

    public long c(int i10, String str) {
        long j10;
        x.ve veVarC = x.c(i10);
        if (veVarC != null && veVarC.nu() != null) {
            x.n nVarNu = veVarC.nu();
            if (nVarNu.tt() && nVarNu.ve() > 0) {
                String strC = c(nVarNu, i10, str);
                if (TextUtils.isEmpty(strC)) {
                    return -1L;
                }
                c cVar = this.tt.get(strC);
                if (cVar == null) {
                    j10 = -1;
                } else {
                    if (!cVar.c(nVarNu)) {
                        return cVar.f21584c;
                    }
                    j10 = cVar.f21584c;
                }
                c cVarC = c(strC);
                if (cVarC != null) {
                    if (!cVarC.c(nVarNu)) {
                        this.tt.put(strC, cVarC);
                        return cVarC.f21584c;
                    }
                    j10 = cVarC.f21584c;
                }
                long j11 = j10;
                c(strC, nVarNu, i10, str, j11);
                if (j11 > 0) {
                    return j11;
                }
            }
        }
        return -1L;
    }

    private void c(final String str, final x.n nVar, final int i10, final String str2, final long j10) {
        if (this.ve.putIfAbsent(str, Boolean.TRUE) != null) {
            return;
        }
        com.byazt.bzd.x.c(new sp("dynamic_tmax_calc") { // from class: com.byazt.wi.tt.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c cVarC = tt.this.c(nVar, i10, str2, j10);
                    if (cVarC != null) {
                        tt.this.tt.put(str, cVarC);
                        tt.this.c(str, cVarC);
                    }
                } finally {
                    tt.this.ve.remove(str);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:137:0x0291 A[Catch: all -> 0x02a3, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x02a3, blocks: (B:17:0x0034, B:23:0x0054, B:31:0x006b, B:32:0x0076, B:34:0x007c, B:36:0x0082, B:38:0x0090, B:40:0x0098, B:42:0x00a0, B:44:0x00aa, B:48:0x00b7, B:50:0x00c3, B:53:0x00ce, B:58:0x00db, B:60:0x00e6, B:65:0x00f1, B:67:0x00fa, B:68:0x00fd, B:70:0x0122, B:73:0x012b, B:76:0x0136, B:80:0x0143, B:82:0x014f, B:86:0x0197, B:88:0x019d, B:89:0x01a0, B:93:0x01ad, B:95:0x01b3, B:100:0x01cd, B:102:0x01db, B:116:0x020f, B:118:0x0222, B:119:0x0244, B:121:0x0256, B:131:0x027a, B:137:0x0291, B:123:0x0260, B:125:0x0268, B:92:0x01a9, B:85:0x0191), top: B:161:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x028c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public c c(x.n nVar, int i10, String str, long j10) {
        Cursor cursorC;
        long j11;
        long jC;
        long jCurrentTimeMillis = System.currentTimeMillis() - bn.f7592d;
        long j12 = 0;
        if (jCurrentTimeMillis <= 0) {
            return null;
        }
        try {
            if (nVar.n() == 0) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                cursorC = n.c(i10, str, jCurrentTimeMillis, "record_time DESC");
            } else {
                cursorC = n.c(i10, jCurrentTimeMillis, "record_time DESC");
            }
            if (cursorC == null) {
                if (cursorC != null) {
                    try {
                        cursorC.close();
                    } catch (Throwable unused) {
                    }
                }
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int columnIndex = cursorC.getColumnIndex("loaded_duration");
                int columnIndex2 = cursorC.getColumnIndex("is_shown");
                if (columnIndex >= 0 && columnIndex2 >= 0) {
                    long jVe = j10 <= 0 ? nVar.ve() : j10;
                    if (jVe <= 0) {
                        try {
                            cursorC.close();
                        } catch (Throwable unused2) {
                        }
                        return null;
                    }
                    long jFloor = (long) Math.floor(jVe * 0.8d);
                    long j13 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    int i14 = 0;
                    while (cursorC.moveToNext() && i11 < nVar.sp()) {
                        i11++;
                        long j14 = cursorC.getLong(columnIndex);
                        int i15 = cursorC.getInt(columnIndex2);
                        if (j14 > j12 && j14 >= nVar.uj() && j14 <= nVar.ve()) {
                            arrayList.add(Long.valueOf(j14));
                            if (i15 == 1) {
                                arrayList2.add(Long.valueOf(j14));
                            }
                        }
                        if (j14 <= j12 || j14 > jVe) {
                            j13 = j13;
                        } else {
                            i12++;
                            j13 += j14;
                            i13++;
                            if (j14 >= jFloor) {
                                i14++;
                            }
                        }
                        j12 = 0;
                    }
                    long j15 = j13;
                    if (arrayList.isEmpty()) {
                        try {
                            cursorC.close();
                            return null;
                        } catch (Throwable unused3) {
                            return null;
                        }
                    }
                    int iMax = Math.max(0, nVar.a());
                    if (iMax > 0 && arrayList.size() < iMax) {
                        try {
                            cursorC.close();
                            return null;
                        } catch (Throwable unused4) {
                            return null;
                        }
                    }
                    Collections.sort(arrayList);
                    if (!arrayList2.isEmpty()) {
                        Collections.sort(arrayList2);
                    }
                    com.byazt.wi.c.c(arrayList, (int) (nVar.i() * 100.0f));
                    long jC2 = com.byazt.wi.c.c(arrayList, (int) (nVar.da() * 100.0f));
                    com.byazt.wi.c.c(arrayList, (int) (nVar.sl() * 100.0f));
                    float f10 = i11 > 0 ? (i12 * 1.0f) / i11 : 0.0f;
                    float f11 = i13 > 0 ? ((j15 * 1.0f) / i13) / jVe : 0.0f;
                    float f12 = i12 > 0 ? (i14 * 1.0f) / i12 : 0.0f;
                    float f13 = jC2 > 0 ? ((jVe - jC2) * 1.0f) / jC2 : 0.0f;
                    int iMin = Math.min(99, Math.max(1, Math.round(nVar.u() * 100.0f)));
                    int iMin2 = Math.min(99, Math.max(1, Math.round(nVar.yp() * 100.0f)));
                    int iMin3 = Math.min(99, Math.max(1, Math.round(nVar.z() * 100.0f)));
                    long jC3 = arrayList2.isEmpty() ? 0L : com.byazt.wi.c.c(arrayList2, iMin);
                    if (!arrayList2.isEmpty()) {
                        com.byazt.wi.c.c(arrayList2, iMin2);
                    }
                    long jC4 = arrayList2.isEmpty() ? 0L : com.byazt.wi.c.c(arrayList2, iMin3);
                    float size = !arrayList.isEmpty() ? (arrayList2.size() * 1.0f) / arrayList.size() : 0.0f;
                    float f14 = (jC4 <= 0 || jC2 <= 0) ? 0.0f : (jC4 * 1.0f) / jC2;
                    long jC5 = c(jVe, jC2, f10, f11, f12, f13, nVar);
                    if ((arrayList2.size() >= 5) && size > 0.02f && f14 > 0.0f && f14 < 0.95f) {
                        float f15 = jC4;
                        long jFloor2 = (long) Math.floor(nVar.t() * f15);
                        if (jFloor2 > 0) {
                            float f16 = jVe;
                            float fMin = (Math.min(1.0f, (Math.abs(jVe - jFloor2) * 1.0f) / f16) * 0.35f) + 0.15f;
                            jC5 = (long) ((f16 * (1.0f - fMin)) + (jFloor2 * fMin));
                        }
                        long jFloor3 = (long) Math.floor(f15 * nVar.m());
                        jC3 = jFloor3 > 0 ? Math.min(jC5, jFloor3) : jC5;
                    } else {
                        if (f13 <= nVar.nu() || f12 >= nVar.rh() || jC3 <= 0) {
                            j11 = jC5;
                        }
                        jC = com.byazt.wi.c.c(j11, nVar.uj(), nVar.ve());
                        if (jC <= 0) {
                            try {
                                cursorC.close();
                                return null;
                            } catch (Throwable unused5) {
                                return null;
                            }
                        }
                        c cVar = new c(jC, System.currentTimeMillis());
                        try {
                            cursorC.close();
                        } catch (Throwable unused6) {
                        }
                        return cVar;
                    }
                    j11 = jC3;
                    jC = com.byazt.wi.c.c(j11, nVar.uj(), nVar.ve());
                    if (jC <= 0) {
                        cursorC.close();
                        return null;
                    }
                    c cVar2 = new c(jC, System.currentTimeMillis());
                    cursorC.close();
                    return cVar2;
                }
                try {
                    cursorC.close();
                    return null;
                } catch (Throwable unused7) {
                    return null;
                }
            } catch (Throwable unused8) {
                if (cursorC == null) {
                    return null;
                }
                try {
                    cursorC.close();
                    return null;
                } catch (Throwable unused9) {
                    return null;
                }
            }
        } catch (Throwable unused10) {
            cursorC = null;
        }
    }

    public static long c(long j10, long j11, float f10, float f11, float f12, float f13, x.n nVar) {
        float f14;
        if (j10 <= 0 || j11 <= 0) {
            return -1L;
        }
        boolean z10 = false;
        boolean z11 = f11 < nVar.my() || (f13 > nVar.nu() && f12 < nVar.rh());
        if (f10 < nVar.gt() || f12 > nVar.qy() || (f13 < nVar.gu() && f10 < nVar.rl())) {
            z10 = true;
        }
        if (!z11 || z10) {
            if (!z10) {
                return j10;
            }
            long jCeil = (long) Math.ceil(j11 * 1.15d);
            if (jCeil <= j10) {
                return j10;
            }
            if (f10 < 0.85f) {
                f14 = 0.4f;
            } else {
                f14 = f10 < 0.9f ? 0.25f : 0.15f;
            }
            return Math.min(((long) Math.ceil((jCeil - j10) * f14)) + j10, (long) Math.floor(j10 * 1.25d));
        }
        float f15 = 0.1f;
        if (f12 > 0.1f) {
            return j10;
        }
        if (f11 < 0.2f) {
            f15 = 0.3f;
        } else if (f11 < 0.3f) {
            f15 = 0.2f;
        } else if (f13 < 0.2f || f13 > 0.3f) {
            f15 = 0.0f;
        }
        return Math.max(Math.max((long) ((j10 * (1.0f - f15)) + (j11 * f15)), (long) Math.ceil(j10 * 0.85d)), j11);
    }

    private static String c(x.n nVar, int i10, String str) {
        if (nVar == null) {
            return null;
        }
        if (nVar.n() == 0) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return "slot_" + i10 + "_" + str;
        }
        return "type_".concat(String.valueOf(i10));
    }

    private c c(String str) {
        long jC;
        long jC2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (com.byazt.by.ve.c().tt()) {
                jC = com.byazt.ti.tt.c("sp_dynamic_tmax_timeout", str + "_v", -1L);
                jC2 = com.byazt.ti.tt.c("sp_dynamic_tmax_timeout", str + bq.f84483h, 0L);
            } else {
                SharedPreferences sharedPreferencesTt = tt();
                jC = sharedPreferencesTt.getLong(str + "_v", -1L);
                jC2 = sharedPreferencesTt.getLong(str + bq.f84483h, 0L);
            }
            if (jC <= 0) {
                return null;
            }
            return new c(jC, jC2);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, c cVar) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            return;
        }
        try {
            if (com.byazt.by.ve.c().tt()) {
                com.byazt.ti.tt.c("sp_dynamic_tmax_timeout", str + "_v", Long.valueOf(cVar.f21584c));
                com.byazt.ti.tt.c("sp_dynamic_tmax_timeout", str + bq.f84483h, Long.valueOf(cVar.tt));
                return;
            }
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.putLong(str + "_v", cVar.f21584c);
            editorEdit.putLong(str + bq.f84483h, cVar.tt);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }
}
