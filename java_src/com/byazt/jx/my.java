package com.byazt.jx;

import com.byazt.zy.rl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 145})
public class my implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f15968a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15969c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kd.tt f15970n;
    public final c tt;
    public final com.byazt.kd.tt uj;
    public final com.byazt.kd.tt ve;

    public enum c {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static c c(int i10) {
            if (i10 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i10 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(i10)));
        }
    }

    public my(String str, c cVar, com.byazt.kd.tt ttVar, com.byazt.kd.tt ttVar2, com.byazt.kd.tt ttVar3, boolean z10) {
        this.f15969c = str;
        this.tt = cVar;
        this.ve = ttVar;
        this.uj = ttVar2;
        this.f15970n = ttVar3;
        this.f15968a = z10;
    }

    public String c() {
        return this.f15969c;
    }

    public c getType() {
        return this.tt;
    }

    public boolean n() {
        return this.f15968a;
    }

    public String toString() {
        return "Trim Path: {start: " + this.ve + ", end: " + this.uj + ", offset: " + this.f15970n + "}";
    }

    public com.byazt.kd.tt tt() {
        return this.uj;
    }

    public com.byazt.kd.tt uj() {
        return this.f15970n;
    }

    public com.byazt.kd.tt ve() {
        return this.ve;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new rl(veVar, this);
    }
}
