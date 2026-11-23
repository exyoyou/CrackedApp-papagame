package com.byazt.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 130, 91})
public class sp extends BaseException {
    public sp(int i10, String str) {
        super(i10, str);
    }

    public sp c(String str) {
        setExtraInfo(str);
        return this;
    }

    public String c() {
        return getExtraInfo();
    }
}
