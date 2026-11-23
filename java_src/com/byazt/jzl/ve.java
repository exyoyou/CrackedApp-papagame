package com.byazt.jzl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1574, 54})
public class ve implements com.byazt.fk.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16086c;
    public int tt;
    public String ve;

    public ve(int i10, int i11) {
        this.f16086c = i10;
        this.tt = i11;
    }

    @Override // com.byazt.fk.ve
    public int getCode() {
        return this.f16086c;
    }

    @Override // com.byazt.fk.ve
    public int getExtraCode() {
        return this.tt;
    }

    @Override // com.byazt.fk.ve
    public String getMsg() {
        return this.ve;
    }

    @Override // com.byazt.fk.ve
    public void setCode(int i10) {
        this.f16086c = i10;
    }

    @Override // com.byazt.fk.ve
    public void setExtraCode(int i10) {
        this.tt = i10;
    }

    @Override // com.byazt.fk.ve
    public void setMsg(String str) {
        this.ve = str;
    }

    public ve(int i10, int i11, String str) {
        this.f16086c = i10;
        this.tt = i11;
        this.ve = str;
    }
}
