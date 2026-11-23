package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.annotation.JSONField;
import java.util.Collection;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class i1 extends h0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6705f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f6706g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f6707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f6708i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f6709j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f6710k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a f6711l;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        j1 f6712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Class<?> f6713b;

        public a(j1 j1Var, Class<?> cls) {
            this.f6712a = j1Var;
            this.f6713b = cls;
        }
    }

    public i1(com.alibaba.fastjson.util.e eVar) {
        super(eVar);
        this.f6706g = false;
        this.f6707h = false;
        this.f6708i = false;
        this.f6709j = false;
        this.f6710k = false;
        JSONField jSONField = (JSONField) eVar.g(JSONField.class);
        if (jSONField != null) {
            String str = jSONField.format();
            this.f6705f = str;
            if (str.trim().length() == 0) {
                this.f6705f = null;
            }
            for (SerializerFeature serializerFeature : jSONField.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteNullNumberAsZero) {
                    this.f6706g = true;
                } else if (serializerFeature == SerializerFeature.WriteNullStringAsEmpty) {
                    this.f6707h = true;
                } else if (serializerFeature == SerializerFeature.WriteNullBooleanAsFalse) {
                    this.f6708i = true;
                } else if (serializerFeature == SerializerFeature.WriteNullListAsEmpty) {
                    this.f6709j = true;
                } else if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                    this.f6710k = true;
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.serializer.h0
    public void g(v0 v0Var, Object obj) throws Exception {
        f(v0Var);
        h(v0Var, obj);
    }

    @Override // com.alibaba.fastjson.serializer.h0
    public void h(v0 v0Var, Object obj) throws Exception {
        String str = this.f6705f;
        if (str != null) {
            v0Var.R(obj, str);
            return;
        }
        if (this.f6711l == null) {
            Class<?> clsJ = obj == null ? this.f6697a.j() : obj.getClass();
            this.f6711l = new a(v0Var.o(clsJ), clsJ);
        }
        a aVar = this.f6711l;
        int iQ = this.f6697a.q();
        if (obj != null) {
            if (this.f6710k && aVar.f6713b.isEnum()) {
                v0Var.w().q0(((Enum) obj).name());
                return;
            }
            Class<?> cls = obj.getClass();
            if (cls == aVar.f6713b) {
                aVar.f6712a.d(v0Var, obj, this.f6697a.getName(), this.f6697a.k(), iQ);
                return;
            } else {
                v0Var.o(cls).d(v0Var, obj, this.f6697a.getName(), this.f6697a.k(), iQ);
                return;
            }
        }
        if (this.f6706g && Number.class.isAssignableFrom(aVar.f6713b)) {
            v0Var.w().m('0');
            return;
        }
        if (this.f6707h && String.class == aVar.f6713b) {
            v0Var.w().write("\"\"");
            return;
        }
        if (this.f6708i && Boolean.class == aVar.f6713b) {
            v0Var.w().write("false");
        } else if (this.f6709j && Collection.class.isAssignableFrom(aVar.f6713b)) {
            v0Var.w().write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        } else {
            aVar.f6712a.d(v0Var, null, this.f6697a.getName(), null, iQ);
        }
    }
}
