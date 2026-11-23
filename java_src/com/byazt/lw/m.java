package com.byazt.lw;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 130})
public class m implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.zg.ve f16801c;

    public m(com.byazt.zg.ve veVar) {
        this.f16801c = veVar;
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return tt();
    }

    @Override // com.byazt.dr.c
    public String tt() {
        return this.f16801c.c();
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return this.f16801c;
    }
}
