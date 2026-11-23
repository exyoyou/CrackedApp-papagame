package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes9.dex */
public class cp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f84585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f84586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short f84587c;

    public cp() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(cp cpVar) {
        return this.f84586b == cpVar.f84586b && this.f84587c == cpVar.f84587c;
    }

    public String toString() {
        return "<TField name:'" + this.f84585a + "' type:" + ((int) this.f84586b) + " field-id:" + ((int) this.f84587c) + SimpleComparison.GREATER_THAN_OPERATION;
    }

    public cp(String str, byte b10, short s10) {
        this.f84585a = str;
        this.f84586b = b10;
        this.f84587c = s10;
    }
}
