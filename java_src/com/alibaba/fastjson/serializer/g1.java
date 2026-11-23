package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: classes7.dex */
final class g1 extends h0 {
    public g1(com.alibaba.fastjson.util.e eVar) {
        super(eVar);
    }

    @Override // com.alibaba.fastjson.serializer.h0
    public void g(v0 v0Var, Object obj) throws Exception {
        f(v0Var);
        h(v0Var, obj);
    }

    @Override // com.alibaba.fastjson.serializer.h0
    public void h(v0 v0Var, Object obj) throws Exception {
        v1 v1VarW = v0Var.w();
        if (obj != null) {
            v1VarW.append(obj.toString());
        } else if (v1VarW.g(SerializerFeature.WriteNullNumberAsZero)) {
            v1VarW.m('0');
        } else {
            v1VarW.p0();
        }
    }
}
