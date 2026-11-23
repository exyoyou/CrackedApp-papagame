package com.coremedia.iso.boxes;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class f1 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f24782p = "trak";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private u0 f24783o;

    public f1() {
        super(f24782p);
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public void b(List<d> list) {
        super.b(list);
        this.f24783o = null;
    }

    public d0 v() {
        for (d dVar : l()) {
            if (dVar instanceof d0) {
                return (d0) dVar;
            }
        }
        return null;
    }

    public u0 y() {
        f0 f0VarZ;
        u0 u0Var = this.f24783o;
        if (u0Var != null) {
            return u0Var;
        }
        d0 d0VarV = v();
        if (d0VarV == null || (f0VarZ = d0VarV.z()) == null) {
            return null;
        }
        u0 u0VarY = f0VarZ.y();
        this.f24783o = u0VarY;
        return u0VarY;
    }

    public g1 z() {
        for (d dVar : l()) {
            if (dVar instanceof g1) {
                return (g1) dVar;
            }
        }
        return null;
    }
}
