package com.byazt.lw;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 91})
public class sp implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f16806c;

    public sp(String str) {
        if (str.equalsIgnoreCase("true")) {
            this.f16806c = Boolean.TRUE;
        } else if (str.equalsIgnoreCase("false")) {
            this.f16806c = Boolean.FALSE;
        } else {
            if (!str.equalsIgnoreCase("null")) {
                throw new IllegalArgumentException();
            }
            this.f16806c = null;
        }
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        return this.f16806c;
    }

    public String toString() {
        return "KeywordNode [keywordValue=" + this.f16806c + "]";
    }

    @Override // com.byazt.dr.c
    public String tt() {
        Object obj = this.f16806c;
        return obj != null ? obj.toString() : "NULL";
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.a.CONSTANT;
    }
}
