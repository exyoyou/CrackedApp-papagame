package com.byazt.il;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2411, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15387c;
    public Object[] tt;

    public String c() {
        return this.f15387c;
    }

    public String toString() {
        return "MethodResult{methodName='" + this.f15387c + "', args=" + Arrays.toString(this.tt) + '}';
    }

    public Object[] tt() {
        return this.tt;
    }

    public void c(String str) {
        this.f15387c = str;
    }

    public void c(Object[] objArr) {
        this.tt = objArr;
    }
}
