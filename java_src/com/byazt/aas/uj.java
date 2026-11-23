package com.byazt.aas;

import android.text.TextUtils;
import com.byazt.ete.ic;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 15})
public class uj {

    @com.byazt.zqa.c(c = {0, 1, 131, 123})
    static class c implements Comparable<c> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f11493c;
        public String tt;

        public c(String str, long j10) {
            this.tt = str;
            this.f11493c = j10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            if (cVar == null) {
                return 1;
            }
            long j10 = this.f11493c;
            long j11 = cVar.f11493c;
            if (j10 > j11) {
                return 1;
            }
            return j10 == j11 ? 0 : -1;
        }
    }

    private static boolean c(int i10) {
        return i10 == 3 || i10 == 7 || i10 == 8;
    }

    private static void delete(int i10, int i11, com.byazt.it.sp spVar, int i12) {
        if (spVar == null) {
            return;
        }
        try {
            Map all = spVar.getAll();
            if (all != null && all.size() != 0) {
                int size = all.size();
                if (c(i10)) {
                    if (size > 1) {
                        spVar.clear();
                        return;
                    }
                    return;
                }
                if (i12 >= i11) {
                    spVar.clear();
                    return;
                }
                int i13 = size + i12;
                if (i13 > i11) {
                    PriorityQueue priorityQueue = new PriorityQueue();
                    for (Map.Entry entry : all.entrySet()) {
                        String str = (String) entry.getValue();
                        JSONObject jSONObject = (str == null || !str.contains("pre_fetch_time")) ? null : new JSONObject(str);
                        if (jSONObject != null) {
                            priorityQueue.add(new c((String) entry.getKey(), jSONObject.optLong("pre_fetch_time")));
                        }
                    }
                    int size2 = priorityQueue.size();
                    int i14 = i13 - i11;
                    if (size2 == 0 || size2 < i14) {
                        spVar.clear();
                        return;
                    }
                    for (int i15 = 0; i15 < i14; i15++) {
                        c cVar = (c) priorityQueue.poll();
                        if (cVar != null) {
                            spVar.remove(cVar.tt);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(com.byazt.ete.c cVar, int i10, int i11, String str) {
        if (cVar == null || cVar.tt() == null || i11 <= 0) {
            return;
        }
        List<ic> listTt = cVar.tt();
        int size = listTt.size();
        try {
            com.byazt.it.sp spVarVe = com.byazt.vif.uj.ve(str, i10 + "_prefetch_new");
            delete(i10, i11, spVarVe, size);
            for (ic icVar : listTt) {
                String strY = icVar.y();
                String strTt = com.byazt.nr.c.tt(icVar.yg().toString());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pre_fetch_time", System.currentTimeMillis());
                jSONObject.put("message", strTt);
                spVarVe.put(strY, jSONObject.toString());
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public static ic c(String str, int i10, String str2) {
        if (com.byazt.omf.gt.tt().lr() <= 0) {
            return null;
        }
        com.byazt.it.sp spVarVe = com.byazt.vif.uj.ve(str2, i10 + "_prefetch_new");
        String strOptString = spVarVe.get(str, "");
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                if (strOptString.contains("pre_fetch_time")) {
                    strOptString = new JSONObject(strOptString).optString("message");
                }
                ic icVarC = com.byazt.omf.c.c(new JSONObject(com.byazt.nr.c.ve(strOptString)));
                spVarVe.remove(str);
                return icVarC;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
