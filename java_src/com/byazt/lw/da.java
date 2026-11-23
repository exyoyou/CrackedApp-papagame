package com.byazt.lw;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 72})
public class da implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.dr.c[] f16799c;
    public String tt;
    public boolean uj;
    public com.byazt.il.c ve;

    public da(String str) {
        this.tt = str;
    }

    public void c(com.byazt.dr.c[] cVarArr) {
        this.f16799c = cVarArr;
    }

    @Override // com.byazt.dr.c
    public String tt() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.tt);
        sb2.append("(");
        com.byazt.dr.c[] cVarArr = this.f16799c;
        if (cVarArr != null && cVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                com.byazt.dr.c[] cVarArr2 = this.f16799c;
                if (i10 >= cVarArr2.length) {
                    break;
                }
                sb2.append(cVarArr2[i10].tt());
                sb2.append(",");
                i10++;
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public boolean ve() {
        return this.uj;
    }

    public void c(boolean z10) {
        this.uj = z10;
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        com.byazt.il.c cVar = new com.byazt.il.c();
        this.ve = cVar;
        cVar.c(this.tt);
        Object[] objArr = new Object[this.f16799c.length];
        int i10 = 0;
        while (true) {
            com.byazt.dr.c[] cVarArr = this.f16799c;
            if (i10 < cVarArr.length) {
                com.byazt.dr.c cVar2 = cVarArr[i10];
                if (cVar2 != null) {
                    objArr[i10] = cVar2.c(map);
                }
                i10++;
            } else {
                this.ve.c(objArr);
                return com.byazt.fz.rh.c(this.tt).c(map.get("default_key"), objArr);
            }
        }
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.tt.METHOD;
    }
}
