package com.byazt.jb;

import okhttp3.internal.http2.Header;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 54})
public final class ve {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15800i;
    public final com.byazt.mk.a sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.mk.a f15801x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.byazt.mk.a f15798c = com.byazt.mk.a.c(":");
    public static final com.byazt.mk.a tt = com.byazt.mk.a.c(Header.RESPONSE_STATUS_UTF8);
    public static final com.byazt.mk.a ve = com.byazt.mk.a.c(Header.TARGET_METHOD_UTF8);
    public static final com.byazt.mk.a uj = com.byazt.mk.a.c(Header.TARGET_PATH_UTF8);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final com.byazt.mk.a f15799n = com.byazt.mk.a.c(Header.TARGET_SCHEME_UTF8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.byazt.mk.a f15797a = com.byazt.mk.a.c(Header.TARGET_AUTHORITY_UTF8);

    public ve(String str, String str2) {
        this(com.byazt.mk.a.c(str), com.byazt.mk.a.c(str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof ve) {
            ve veVar = (ve) obj;
            if (this.sp.equals(veVar.sp) && this.f15801x.equals(veVar.f15801x)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.sp.hashCode() + 527) * 31) + this.f15801x.hashCode();
    }

    public String toString() {
        return com.byazt.kh.ve.c("%s: %s", this.sp.c(), this.f15801x.c());
    }

    public ve(com.byazt.mk.a aVar, String str) {
        this(aVar, com.byazt.mk.a.c(str));
    }

    public ve(com.byazt.mk.a aVar, com.byazt.mk.a aVar2) {
        this.sp = aVar;
        this.f15801x = aVar2;
        this.f15800i = aVar.sp() + 32 + aVar2.sp();
    }
}
