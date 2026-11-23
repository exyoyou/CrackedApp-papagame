package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.alibaba.fastjson.util.e f6697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6701e;

    public h0(com.alibaba.fastjson.util.e eVar) {
        this.f6701e = false;
        this.f6697a = eVar;
        eVar.t(true);
        this.f6698b = '\"' + eVar.getName() + "\":";
        this.f6699c = '\'' + eVar.getName() + "':";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(eVar.getName());
        sb2.append(":");
        this.f6700d = sb2.toString();
        JSONField jSONField = (JSONField) eVar.g(JSONField.class);
        if (jSONField != null) {
            for (SerializerFeature serializerFeature : jSONField.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteMapNullValue) {
                    this.f6701e = true;
                }
            }
        }
    }

    public Field a() {
        return this.f6697a.i();
    }

    public Method b() {
        return this.f6697a.p();
    }

    public String c() {
        return this.f6697a.getName();
    }

    public Object d(Object obj) throws Exception {
        try {
            return this.f6697a.f(obj);
        } catch (Exception e10) {
            throw new JSONException("get property error。 " + this.f6697a.e(), e10);
        }
    }

    public boolean e() {
        return this.f6701e;
    }

    public void f(v0 v0Var) throws IOException {
        v1 v1VarW = v0Var.w();
        if (!v0Var.y(SerializerFeature.QuoteFieldNames)) {
            v1VarW.write(this.f6700d);
        } else if (v0Var.y(SerializerFeature.UseSingleQuotes)) {
            v1VarW.write(this.f6699c);
        } else {
            v1VarW.write(this.f6698b);
        }
    }

    public abstract void g(v0 v0Var, Object obj) throws Exception;

    public abstract void h(v0 v0Var, Object obj) throws Exception;
}
