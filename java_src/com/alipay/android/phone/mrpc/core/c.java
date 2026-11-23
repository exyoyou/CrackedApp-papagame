package com.alipay.android.phone.mrpc.core;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f6892a = -2875437994101380406L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6895d;

    public c(Integer num, String str) {
        super(a(num, str));
        this.f6894c = num.intValue();
        this.f6895d = str;
    }

    private String a() {
        return this.f6893b;
    }

    private int b() {
        return this.f6894c;
    }

    private String c() {
        return this.f6895d;
    }

    public c(Integer num, String str, Throwable th) {
        super(a(num, str), th);
        this.f6894c = num.intValue();
        this.f6895d = str;
    }

    private static String a(Integer num, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("RPCException: ");
        if (num != null) {
            sb2.append("[");
            sb2.append(num);
            sb2.append("]");
        }
        sb2.append(" : ");
        if (str != null) {
            sb2.append(str);
        }
        return sb2.toString();
    }

    private c(Integer num, Throwable th) {
        super(th);
        this.f6894c = num.intValue();
    }

    public final void a(String str) {
        this.f6893b = str;
    }

    private c(String str) {
        super(str);
        this.f6894c = 0;
        this.f6895d = str;
    }
}
