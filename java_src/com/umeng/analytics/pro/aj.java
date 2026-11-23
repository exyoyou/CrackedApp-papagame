package com.umeng.analytics.pro;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<ak> f84256b = new ArrayList<>();

    public aj(String str) {
        this.f84255a = "";
        this.f84255a = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
    }

    private void a() {
        try {
            if (!this.f84255a.contains(",")) {
                String str = this.f84255a;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String strTrim = str.trim();
                if (this.f84256b != null) {
                    this.f84256b.add(new ak(strTrim));
                    return;
                }
                return;
            }
            for (String str2 : this.f84255a.split(",")) {
                if (!TextUtils.isEmpty(str2)) {
                    String strTrim2 = str2.trim();
                    if (this.f84256b != null) {
                        this.f84256b.add(new ak(strTrim2));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a(int i10) {
        try {
            ArrayList<ak> arrayList = this.f84256b;
            if (arrayList == null) {
                return false;
            }
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                ak akVar = this.f84256b.get(i11);
                if (akVar != null && akVar.a(i10)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
