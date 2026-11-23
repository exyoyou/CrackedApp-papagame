package com.alibaba.fastjson.serializer;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class y1 implements o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f6782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<String> f6783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f6784c;

    public y1(String... strArr) {
        this(null, strArr);
    }

    @Override // com.alibaba.fastjson.serializer.o1
    public boolean c(v0 v0Var, Object obj, String str) {
        if (obj == null) {
            return true;
        }
        Class<?> cls = this.f6782a;
        if (cls != null && !cls.isInstance(obj)) {
            return true;
        }
        if (this.f6784c.contains(str)) {
            return false;
        }
        return this.f6783b.size() == 0 || this.f6783b.contains(str);
    }

    public Class<?> d() {
        return this.f6782a;
    }

    public Set<String> e() {
        return this.f6784c;
    }

    public Set<String> f() {
        return this.f6783b;
    }

    public y1(Class<?> cls, String... strArr) {
        this.f6783b = new HashSet();
        this.f6784c = new HashSet();
        this.f6782a = cls;
        for (String str : strArr) {
            if (str != null) {
                this.f6783b.add(str);
            }
        }
    }
}
