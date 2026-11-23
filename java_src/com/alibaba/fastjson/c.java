package com.alibaba.fastjson;

import com.alibaba.fastjson.serializer.t0;
import com.alibaba.fastjson.serializer.v0;
import com.alibaba.fastjson.serializer.v1;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Object> f6500b = new ArrayList();

    public c() {
    }

    @Override // com.alibaba.fastjson.serializer.t0
    public void a(v0 v0Var, Object obj, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        v1VarW.write(this.f6499a);
        v1VarW.m('(');
        for (int i11 = 0; i11 < this.f6500b.size(); i11++) {
            if (i11 != 0) {
                v1VarW.m(StringUtil.COMMA);
            }
            v0Var.K(this.f6500b.get(i11));
        }
        v1VarW.m(')');
    }

    public void b(Object obj) {
        this.f6500b.add(obj);
    }

    public String c() {
        return this.f6499a;
    }

    public List<Object> d() {
        return this.f6500b;
    }

    public void e(String str) {
        this.f6499a = str;
    }

    public String f() {
        return null;
    }

    public String toString() {
        return a.toJSONString(this);
    }

    public c(String str) {
        this.f6499a = str;
    }
}
