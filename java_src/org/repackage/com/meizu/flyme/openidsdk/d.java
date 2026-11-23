package org.repackage.com.meizu.flyme.openidsdk;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes10.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f95969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Boolean f95970b;

    d() {
    }

    void a(boolean z10) {
        this.f95970b = Boolean.valueOf(z10);
    }

    boolean b() {
        return this.f95970b != null;
    }

    boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(this.f95969a, str);
    }

    void d(String str) {
        this.f95969a = str;
    }

    boolean e() {
        Boolean bool = this.f95970b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
