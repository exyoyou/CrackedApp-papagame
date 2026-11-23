package com.alibaba.fastjson.parser;

import java.math.BigDecimal;
import java.util.Collection;

/* JADX INFO: loaded from: classes7.dex */
public interface d {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final byte f6534a0 = 26;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final int f6535b0 = -1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final int f6536c0 = -2;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final int f6537d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final int f6538e0 = 1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final int f6539f0 = 2;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final int f6540g0 = 3;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final int f6541h0 = 4;

    int I();

    void J();

    String K(l lVar);

    void L(int i10);

    void M();

    boolean O();

    boolean P();

    BigDecimal Q();

    String R();

    Number a0();

    int b();

    boolean c(Feature feature);

    String c0(l lVar);

    void close();

    String d(l lVar, char c10);

    void d0();

    String e(l lVar, char c10);

    Number e0(boolean z10);

    void f(Feature feature, boolean z10);

    int f0();

    Collection<String> g(Class<?> cls, char c10);

    String g0();

    char getCurrent();

    String h();

    void j();

    void k();

    void l(int i10);

    int m(char c10);

    char next();

    byte[] o();

    float p();

    String q(char c10);

    void s();

    long t(char c10);

    int v();

    long y();

    Enum<?> z(Class<?> cls, l lVar, char c10);
}
