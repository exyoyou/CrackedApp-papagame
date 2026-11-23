package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes9.dex */
public final class cs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f84593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f84594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f84595c;

    public cs() {
        this("", (byte) 0, 0);
    }

    public boolean a(cs csVar) {
        return this.f84593a.equals(csVar.f84593a) && this.f84594b == csVar.f84594b && this.f84595c == csVar.f84595c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof cs) {
            return a((cs) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.f84593a + "' type: " + ((int) this.f84594b) + " seqid:" + this.f84595c + SimpleComparison.GREATER_THAN_OPERATION;
    }

    public cs(String str, byte b10, int i10) {
        this.f84593a = str;
        this.f84594b = b10;
        this.f84595c = i10;
    }
}
