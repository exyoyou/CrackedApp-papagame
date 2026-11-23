package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f78346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f78347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f78350e;

    public g(File file, File file2) {
        this.f78346a = file;
        this.f78347b = file2;
    }

    private int a(String str, int i10) {
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return i10;
        }
    }

    String b() {
        return this.f78348c;
    }

    public String c() {
        return this.f78350e;
    }

    boolean d(File file, File file2, Context context) {
        if (file == null || file2 == null) {
            return false;
        }
        if (file.equals(this.f78346a) || h.a(this.f78346a, file, context, true)) {
            return file2.equals(this.f78347b) || h.a(this.f78347b, file2, context, false);
        }
        return false;
    }

    int e() {
        return this.f78349d;
    }

    boolean c(Context context, boolean z10) {
        try {
            if (this.f78347b.exists() && this.f78346a.exists()) {
                String strB = h.b(this.f78347b);
                this.f78350e = strB;
                if (TextUtils.isEmpty(strB)) {
                    return false;
                }
                String[] strArrSplit = this.f78350e.split("#####");
                if (strArrSplit.length == 2) {
                    String str = strArrSplit[1];
                    int iA = a(strArrSplit[0], 0);
                    if (c.a().a(str, this.f78346a)) {
                        this.f78348c = str;
                        this.f78349d = iA;
                        if (Build.VERSION.SDK_INT < 34 || context == null || context.getApplicationInfo() == null || context.getApplicationInfo().targetSdkVersion < 34 || !z10) {
                            return true;
                        }
                        if (!this.f78346a.canWrite() && !this.f78346a.canExecute()) {
                            return this.f78346a.canRead();
                        }
                        return this.f78346a.setReadOnly();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
