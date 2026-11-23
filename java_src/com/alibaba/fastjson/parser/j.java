package com.alibaba.fastjson.parser;

import com.join.mgps.Util.o0;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f6643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f6644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f6645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Type f6646d;

    public j(j jVar, Object obj, Object obj2) {
        this.f6644b = jVar;
        this.f6643a = obj;
        this.f6645c = obj2;
    }

    public Object a() {
        return this.f6643a;
    }

    public j b() {
        return this.f6644b;
    }

    public String c() {
        if (this.f6644b == null) {
            return "$";
        }
        if (!(this.f6645c instanceof Integer)) {
            return this.f6644b.c() + o0.f49827a + this.f6645c;
        }
        return this.f6644b.c() + "[" + this.f6645c + "]";
    }

    public void d(Object obj) {
        this.f6643a = obj;
    }

    public void e(Type type) {
        this.f6646d = type;
    }

    public Type getType() {
        return this.f6646d;
    }

    public String toString() {
        return c();
    }
}
