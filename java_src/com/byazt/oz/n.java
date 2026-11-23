package com.byazt.oz;

import com.byazt.yj.d;
import com.byazt.yj.eo;
import com.byazt.yj.my;
import com.byazt.yj.qp;
import com.byazt.yj.rh;
import com.byazt.yj.zb;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 213, 46})
public final class n implements my {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.yj.uj f18556a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public rh f18557c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public qp f18558i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public zb f18559n;
    public d sp;
    public ExecutorService tt;
    public eo uj;
    public com.byazt.yj.n ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.yj.tt f18560x;

    @com.byazt.zqa.c(c = {0, 1, 213, 151})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.byazt.yj.uj f18561a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public rh f18562c;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public qp f18563i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public zb f18564n;
        public d sp;
        public ExecutorService tt;
        public eo uj;
        public com.byazt.yj.n ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public com.byazt.yj.tt f18565x;

        public c c(com.byazt.yj.tt ttVar) {
            this.f18565x = ttVar;
            return this;
        }

        public c c(ExecutorService executorService) {
            this.tt = executorService;
            return this;
        }

        public c c(com.byazt.yj.n nVar) {
            this.ve = nVar;
            return this;
        }

        public n c() {
            return new n(this);
        }
    }

    public static n da() {
        return new c().c();
    }

    @Override // com.byazt.yj.my
    public zb a() {
        return this.f18559n;
    }

    @Override // com.byazt.yj.my
    public rh c() {
        return this.f18557c;
    }

    @Override // com.byazt.yj.my
    public com.byazt.yj.tt i() {
        return this.f18560x;
    }

    @Override // com.byazt.yj.my
    public eo n() {
        return this.uj;
    }

    @Override // com.byazt.yj.my
    public com.byazt.yj.uj sp() {
        return this.f18556a;
    }

    @Override // com.byazt.yj.my
    public ExecutorService tt() {
        return this.tt;
    }

    @Override // com.byazt.yj.my
    public com.byazt.yj.n uj() {
        return this.ve;
    }

    @Override // com.byazt.yj.my
    public qp ve() {
        return this.f18558i;
    }

    @Override // com.byazt.yj.my
    public d x() {
        return this.sp;
    }

    private n(c cVar) {
        this.f18557c = cVar.f18562c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f18559n = cVar.f18564n;
        this.f18556a = cVar.f18561a;
        this.f18560x = cVar.f18565x;
        this.sp = cVar.sp;
        this.f18558i = cVar.f18563i;
    }
}
