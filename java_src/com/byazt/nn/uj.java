package com.byazt.nn;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.gq.t;
import com.byazt.hu.u;
import com.byazt.nr.m;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1020, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile uj f17529c;
    public final LinkedList<c> tt = new LinkedList<>();
    public static final String[] ve = {"com", "android", "ss"};
    public static final int[] uj = {3101, 3102, 3103, 3201, 3202, 3203};

    @com.byazt.zqa.c(c = {0, 1, 1020, 123})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f17530c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f17531n;
        public final int tt;
        public final String uj;
        public final String ve;

        private c(String str, int i10, String str2, String str3, long j10) {
            this.f17530c = str;
            this.tt = i10;
            this.ve = str2 != null ? str2.toLowerCase() : null;
            this.uj = str3 != null ? str3.toLowerCase() : null;
            this.f17531n = j10;
        }
    }

    private uj() {
    }

    public static uj c() {
        if (f17529c == null) {
            synchronized (uj.class) {
                if (f17529c == null) {
                    f17529c = new uj();
                }
            }
        }
        return f17529c;
    }

    private c ve(String str) {
        try {
            PackageManager packageManager = t.getContext().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return new c(str, packageInfo.versionCode, packageInfo.versionName, (String) packageManager.getApplicationLabel(packageInfo.applicationInfo), System.currentTimeMillis());
            }
            return null;
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    public void tt(String str) {
        tt();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.tt) {
            Iterator<c> it2 = this.tt.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next().f17530c)) {
                    it2.remove();
                    return;
                }
            }
        }
    }

    public void c(String str) {
        c cVarVe;
        tt();
        if (TextUtils.isEmpty(str) || (cVarVe = ve(str)) == null) {
            return;
        }
        synchronized (this.tt) {
            this.tt.add(cVarVe);
        }
    }

    public Pair<c, Integer> tt(com.byazt.dd.tt ttVar) {
        int i10;
        if (ttVar == null) {
            return null;
        }
        try {
            tt();
            if (this.tt.isEmpty()) {
                return null;
            }
            String strAw = ttVar.aw();
            String strN = ttVar.n();
            String strNb = ttVar.nb();
            int iQp = ttVar.qp();
            int length = uj.length;
            c[] cVarArr = new c[length];
            synchronized (this.tt) {
                Iterator<c> it2 = this.tt.iterator();
                PackageInfo packageInfoC = null;
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    c next = it2.next();
                    if (next.f17531n >= ttVar.h()) {
                        if (TextUtils.isEmpty(strAw)) {
                            if (packageInfoC == null) {
                                packageInfoC = u.c(ttVar);
                            }
                            if (packageInfoC != null) {
                                try {
                                    strAw = (String) t.getContext().getPackageManager().getApplicationLabel(packageInfoC.applicationInfo);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(strAw) && !TextUtils.isEmpty(next.uj)) {
                            strAw = strAw.toLowerCase();
                            if (strAw.equals(next.uj)) {
                                cVarArr[0] = next;
                                break;
                            }
                            if (strAw.contains(next.uj) || next.uj.contains(strAw)) {
                                cVarArr[1] = next;
                                break;
                            }
                        }
                        if (TextUtils.isEmpty(strN)) {
                            if (packageInfoC == null) {
                                packageInfoC = u.c(ttVar);
                            }
                            if (packageInfoC != null) {
                                strN = packageInfoC.packageName;
                            }
                        }
                        if (!TextUtils.isEmpty(strN) && !TextUtils.isEmpty(next.f17530c)) {
                            strN = strN.toLowerCase();
                            if (!strN.contains(next.f17530c) && !next.f17530c.contains(strN)) {
                                if (cVarArr[3] == null) {
                                    if (c(strN, next.f17530c)) {
                                        cVarArr[3] = next;
                                    }
                                }
                            }
                            cVarArr[2] = next;
                            break;
                        }
                        if (cVarArr[4] == null) {
                            if (TextUtils.isEmpty(strNb)) {
                                if (packageInfoC == null) {
                                    packageInfoC = u.c(ttVar);
                                }
                                if (packageInfoC != null) {
                                    strNb = packageInfoC.versionName;
                                }
                            }
                            if (!TextUtils.isEmpty(strNb) && !TextUtils.isEmpty(next.ve)) {
                                strNb = strNb.toLowerCase();
                                if (strNb.equals(next.ve)) {
                                    cVarArr[4] = next;
                                }
                            }
                            if (cVarArr[5] == null) {
                                if (iQp <= 0) {
                                    if (packageInfoC == null) {
                                        packageInfoC = u.c(ttVar);
                                    }
                                    if (packageInfoC != null) {
                                        iQp = packageInfoC.versionCode;
                                    }
                                }
                                if (iQp == next.tt) {
                                    cVarArr[5] = next;
                                }
                            }
                        }
                    }
                }
            }
            for (i10 = 0; i10 < length; i10++) {
                if (cVarArr[i10] != null) {
                    return new Pair<>(cVarArr[i10], Integer.valueOf(uj[i10]));
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return null;
    }

    public c c(com.byazt.dd.tt ttVar) {
        if (ttVar == null) {
            return null;
        }
        tt();
        synchronized (this.tt) {
            for (c cVar : this.tt) {
                if (cVar.f17531n > ttVar.h()) {
                    return cVar;
                }
            }
            return null;
        }
    }

    private static boolean c(String str, String str2) {
        boolean z10;
        try {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (strArrSplit.length != 0 && strArrSplit2.length != 0) {
                int i10 = 0;
                int i11 = 0;
                for (String str3 : strArrSplit) {
                    String[] strArr = ve;
                    int length = strArr.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length) {
                            z10 = false;
                            break;
                        }
                        String str4 = strArr[i12];
                        if (str4.equals(str3)) {
                            if (i10 < strArrSplit2.length && str4.equals(strArrSplit2[i10])) {
                                i10++;
                            }
                            z10 = true;
                            break;
                        }
                        i12++;
                    }
                    if (!z10) {
                        int i13 = i11;
                        int i14 = i10;
                        while (i10 < strArrSplit2.length) {
                            if (str3.equals(strArrSplit2[i10])) {
                                if (i10 == i14) {
                                    i14++;
                                }
                                i13++;
                                if (i13 >= 2) {
                                    return true;
                                }
                            }
                            i10++;
                        }
                        i10 = i14;
                        i11 = i13;
                    }
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void tt() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.tt) {
            Iterator<c> it2 = this.tt.iterator();
            while (it2.hasNext() && jCurrentTimeMillis - it2.next().f17531n > 1800000) {
                it2.remove();
            }
        }
    }
}
