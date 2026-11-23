package org.repackage.com.meizu.flyme.openidsdk;

/* JADX INFO: loaded from: classes10.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f95971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f95972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f95973c = System.currentTimeMillis() + 86400000;

    public e(String str, int i10) {
        this.f95971a = str;
        this.f95972b = i10;
    }

    public String toString() {
        return "ValueData{value='" + this.f95971a + "', code=" + this.f95972b + ", expired=" + this.f95973c + '}';
    }
}
