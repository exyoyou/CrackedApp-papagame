package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: classes7.dex */
public class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r1 f6736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f6737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f6738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6740e;

    public r1(r1 r1Var, Object obj, Object obj2, int i10, int i11) {
        this.f6736a = r1Var;
        this.f6737b = obj;
        this.f6738c = obj2;
        this.f6739d = i10;
        this.f6740e = i11;
    }

    public int a() {
        return this.f6739d;
    }

    public Object b() {
        return this.f6738c;
    }

    public Object c() {
        return this.f6737b;
    }

    public r1 d() {
        return this.f6736a;
    }

    public String e() {
        if (this.f6736a == null) {
            return "$";
        }
        if (!(this.f6738c instanceof Integer)) {
            return this.f6736a.e() + com.join.mgps.Util.o0.f49827a + this.f6738c;
        }
        return this.f6736a.e() + "[" + this.f6738c + "]";
    }

    public boolean f(SerializerFeature serializerFeature) {
        return SerializerFeature.isEnabled(this.f6739d, this.f6740e, serializerFeature);
    }

    public String toString() {
        return e();
    }
}
