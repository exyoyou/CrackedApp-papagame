package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes7.dex */
public class d0 implements j1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f6685b = new d0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DecimalFormat f6686a;

    public d0() {
        this.f6686a = null;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        String string;
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            if (v0Var.y(SerializerFeature.WriteNullNumberAsZero)) {
                v1VarW.m('0');
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        if (Double.isNaN(dDoubleValue)) {
            v1VarW.p0();
            return;
        }
        if (Double.isInfinite(dDoubleValue)) {
            v1VarW.p0();
            return;
        }
        DecimalFormat decimalFormat = this.f6686a;
        if (decimalFormat == null) {
            string = Double.toString(dDoubleValue);
            if (string.endsWith(".0")) {
                string = string.substring(0, string.length() - 2);
            }
        } else {
            string = decimalFormat.format(dDoubleValue);
        }
        v1VarW.append(string);
        if (v0Var.y(SerializerFeature.WriteClassName)) {
            v1VarW.m('D');
        }
    }

    public d0(DecimalFormat decimalFormat) {
        this.f6686a = decimalFormat;
    }

    public d0(String str) {
        this(new DecimalFormat(str));
    }
}
