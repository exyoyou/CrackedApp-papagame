package com.byazt.lw;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 133})
public class z implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Number f16807c;

    public z(String str) {
        if (str.indexOf(46) < 0) {
            try {
                this.f16807c = Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                this.f16807c = Long.valueOf(str);
            }
        } else {
            Float fValueOf = Float.valueOf(str);
            this.f16807c = fValueOf;
            if (Float.isInfinite(fValueOf.floatValue())) {
                this.f16807c = Double.valueOf(str);
            }
        }
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        return this.f16807c;
    }

    public String toString() {
        return tt();
    }

    @Override // com.byazt.dr.c
    public String tt() {
        return this.f16807c.toString();
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.a.NUMBER;
    }
}
