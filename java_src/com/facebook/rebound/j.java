package com.facebook.rebound;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class j implements m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f28855i = 40;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f28856j = 6;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f28857k = 70;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f28858l = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f28860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f28861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArrayList<i> f28862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k f28864f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f28865g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final l f28854h = l.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static int f28859m = 0;

    private j() {
        this(40, 6, 70, 10);
    }

    public static j f() {
        return new j();
    }

    public static j g(int i10, int i11, int i12, int i13) {
        return new j(i10, i11, i12, i13);
    }

    @Override // com.facebook.rebound.m
    public void a(i iVar) {
        int i10;
        int i11;
        int iIndexOf = this.f28862d.indexOf(iVar);
        m mVar = this.f28861c.get(iIndexOf);
        int i12 = this.f28863e;
        if (iIndexOf == i12) {
            i11 = iIndexOf - 1;
            i10 = iIndexOf + 1;
        } else if (iIndexOf < i12) {
            i11 = iIndexOf - 1;
            i10 = -1;
        } else {
            i10 = iIndexOf > i12 ? iIndexOf + 1 : -1;
            i11 = -1;
        }
        if (i10 > -1 && i10 < this.f28862d.size()) {
            this.f28862d.get(i10).x(iVar.f());
        }
        if (i11 > -1 && i11 < this.f28862d.size()) {
            this.f28862d.get(i11).x(iVar.f());
        }
        mVar.a(iVar);
    }

    @Override // com.facebook.rebound.m
    public void b(i iVar) {
        this.f28861c.get(this.f28862d.indexOf(iVar)).b(iVar);
    }

    @Override // com.facebook.rebound.m
    public void c(i iVar) {
        this.f28861c.get(this.f28862d.indexOf(iVar)).c(iVar);
    }

    @Override // com.facebook.rebound.m
    public void d(i iVar) {
        this.f28861c.get(this.f28862d.indexOf(iVar)).d(iVar);
    }

    public j e(m mVar) {
        this.f28862d.add(this.f28860b.d().a(this).B(this.f28865g));
        this.f28861c.add(mVar);
        return this;
    }

    public List<i> h() {
        return this.f28862d;
    }

    public k i() {
        return this.f28865g;
    }

    public i j() {
        return this.f28862d.get(this.f28863e);
    }

    public k k() {
        return this.f28864f;
    }

    public j l(int i10) {
        this.f28863e = i10;
        if (this.f28862d.get(i10) == null) {
            return null;
        }
        Iterator<i> it2 = this.f28860b.f().iterator();
        while (it2.hasNext()) {
            it2.next().B(this.f28865g);
        }
        j().B(this.f28864f);
        return this;
    }

    private j(int i10, int i11, int i12, int i13) {
        this.f28860b = o.m();
        this.f28861c = new CopyOnWriteArrayList<>();
        this.f28862d = new CopyOnWriteArrayList<>();
        this.f28863e = -1;
        k kVarB = k.b(i10, i11);
        this.f28864f = kVarB;
        k kVarB2 = k.b(i12, i13);
        this.f28865g = kVarB2;
        l lVar = f28854h;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("main spring ");
        int i14 = f28859m;
        f28859m = i14 + 1;
        sb2.append(i14);
        lVar.a(kVarB, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("attachment spring ");
        int i15 = f28859m;
        f28859m = i15 + 1;
        sb3.append(i15);
        lVar.a(kVarB2, sb3.toString());
    }
}
