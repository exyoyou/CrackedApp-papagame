package com.coremedia.iso.boxes;

/* JADX INFO: loaded from: classes9.dex */
public class u0 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f25148p = "stbl";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private v0 f25149o;

    public u0() {
        super(f25148p);
    }

    public s0 F() {
        for (d dVar : l()) {
            if (dVar instanceof s0) {
                return (s0) dVar;
            }
        }
        return null;
    }

    public t0 I() {
        for (d dVar : l()) {
            if (dVar instanceof t0) {
                return (t0) dVar;
            }
        }
        return null;
    }

    public v0 J() {
        v0 v0Var = this.f25149o;
        if (v0Var != null) {
            return v0Var;
        }
        for (d dVar : l()) {
            if (dVar instanceof v0) {
                v0 v0Var2 = (v0) dVar;
                this.f25149o = v0Var2;
                return v0Var2;
            }
        }
        return null;
    }

    public c1 K() {
        for (d dVar : l()) {
            if (dVar instanceof c1) {
                return (c1) dVar;
            }
        }
        return null;
    }

    public d1 L() {
        for (d dVar : l()) {
            if (dVar instanceof d1) {
                return (d1) dVar;
            }
        }
        return null;
    }

    public f v() {
        for (d dVar : l()) {
            if (dVar instanceof f) {
                return (f) dVar;
            }
        }
        return null;
    }

    public i y() {
        for (d dVar : l()) {
            if (dVar instanceof i) {
                return (i) dVar;
            }
        }
        return null;
    }

    public r0 z() {
        for (d dVar : l()) {
            if (dVar instanceof r0) {
                return (r0) dVar;
            }
        }
        return null;
    }
}
