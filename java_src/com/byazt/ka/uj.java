package com.byazt.ka;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.nr.m;
import com.byazt.vx.zm;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 874, 15})
public class uj {
    public static uj uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<String> f16100c = new HashSet(1);
    public final List<n> tt = new ArrayList(1);
    public final List<WeakReference<n>> ve = new ArrayList(1);

    private uj() {
        tt();
    }

    public static uj c() {
        if (uj == null) {
            uj = new uj();
        }
        return uj;
    }

    private void tt() {
        PackageInfo packageInfo;
        String[] strArr;
        Context context = com.byazt.bp.tt.getContext();
        if (context == null) {
            return;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null && strArr.length != 0) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    if (!TextUtils.isEmpty(strArr[i10])) {
                        this.f16100c.add(strArr[i10]);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    @NonNull
    private List<String> ve(@NonNull Activity activity, @NonNull String[] strArr, @Nullable n nVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (this.f16100c.contains(str)) {
                if (!c(activity, str)) {
                    arrayList.add(str);
                } else if (nVar != null) {
                    nVar.c(str, ve.GRANTED);
                }
            } else if (nVar != null) {
                nVar.c(str, ve.NOT_FOUND);
            }
        }
        return arrayList;
    }

    private synchronized void c(@NonNull String[] strArr, @Nullable n nVar) {
        if (nVar != null) {
            nVar.c(strArr);
            this.tt.add(nVar);
            this.ve.add(new WeakReference<>(nVar));
        }
    }

    private synchronized void c(@Nullable n nVar) {
        Iterator<WeakReference<n>> it2 = this.ve.iterator();
        while (it2.hasNext()) {
            WeakReference<n> next = it2.next();
            if (next.get() == nVar || next.get() == null) {
                it2.remove();
            }
        }
        Iterator<n> it3 = this.tt.iterator();
        while (it3.hasNext()) {
            if (it3.next() == nVar) {
                it3.remove();
            }
        }
    }

    private void tt(@NonNull Activity activity, @NonNull String[] strArr, @Nullable n nVar) {
        boolean zC;
        for (String str : strArr) {
            if (nVar != null) {
                try {
                    if (!this.f16100c.contains(str)) {
                        zC = nVar.c(str, ve.NOT_FOUND);
                    } else if (tt.c(activity, str) != 0) {
                        zC = nVar.c(str, ve.DENIED);
                    } else {
                        zC = nVar.c(str, ve.GRANTED);
                    }
                    if (zC) {
                        break;
                    }
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        }
        c(nVar);
    }

    public synchronized boolean c(@Nullable Context context, @NonNull String str) {
        if (context == null) {
            return false;
        }
        if (zm.n()) {
            return com.byazt.xgx.ve.c(context, str) && (tt.c(context, str) == 0 || !this.f16100c.contains(str));
        }
        return tt.c(context, str) == 0 || !this.f16100c.contains(str);
    }

    public synchronized void c(@Nullable Activity activity, @NonNull String[] strArr, @Nullable n nVar) {
        if (activity != null) {
            try {
                c(strArr, nVar);
                if (Build.VERSION.SDK_INT < 23) {
                    tt(activity, strArr, nVar);
                    return;
                }
                List<String> listVe = ve(activity, strArr, nVar);
                if (listVe.isEmpty()) {
                    c(nVar);
                } else {
                    tt.requestPermissions(activity, (String[]) listVe.toArray(new String[listVe.size()]), 1);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    public synchronized void c(@NonNull Activity activity, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            new ArrayList(3);
            int length = strArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                String str = strArr[i10];
                if ((iArr[i10] == -1 || (zm.n() && !com.byazt.xgx.ve.c(activity, str))) && iArr[i10] != -1) {
                    iArr[i10] = -1;
                }
            }
            c(strArr, iArr);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void c(@NonNull String[] strArr, @NonNull int[] iArr) {
        int i10;
        try {
            int length = strArr.length;
            if (iArr.length < length) {
                length = iArr.length;
            }
            Iterator<WeakReference<n>> it2 = this.ve.iterator();
            while (it2.hasNext()) {
                n nVar = it2.next().get();
                while (i10 < length) {
                    i10 = (nVar == null || nVar.c(strArr[i10], iArr[i10])) ? 0 : i10 + 1;
                    it2.remove();
                    break;
                }
            }
            Iterator<n> it3 = this.tt.iterator();
            while (it3.hasNext()) {
                it3.next();
                it3.remove();
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }
}
