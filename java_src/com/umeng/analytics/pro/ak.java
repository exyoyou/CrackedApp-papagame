package com.umeng.analytics.pro;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84257a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f84261e = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f84260d = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f84259c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f84258b = -1;

    public ak(String str) {
        this.f84257a = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
    }

    private void a() {
        try {
            if (!this.f84257a.contains("-")) {
                this.f84260d = Integer.valueOf(this.f84257a).intValue();
                this.f84261e = false;
                return;
            }
            String[] strArrSplit = this.f84257a.split("-");
            if (strArrSplit.length == 2) {
                this.f84258b = Integer.valueOf(strArrSplit[0]).intValue();
                int iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                this.f84259c = iIntValue;
                if (this.f84258b < 1) {
                    this.f84258b = 1;
                }
                if (iIntValue > 24) {
                    this.f84259c = 24;
                }
            }
            this.f84261e = true;
        } catch (Throwable unused) {
        }
    }

    public boolean a(int i10) {
        int i11;
        if (this.f84261e) {
            int i12 = this.f84258b;
            if (i12 != -1 && (i11 = this.f84259c) != -1 && i10 >= i12 && i10 <= i11) {
                return true;
            }
        } else {
            int i13 = this.f84260d;
            if (i13 != -1 && i10 == i13) {
                return true;
            }
        }
        return false;
    }
}
