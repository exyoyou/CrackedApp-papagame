package com.byazt.lw;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 195})
public class gt implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16800c;

    public gt(String str) {
        this.f16800c = str;
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        return this.f16800c;
    }

    public String toString() {
        return tt();
    }

    @Override // com.byazt.dr.c
    public String tt() {
        return "'" + this.f16800c + "'";
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.a.STRING;
    }
}
