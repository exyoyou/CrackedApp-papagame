package com.coremedia.iso.boxes;

/* JADX INFO: loaded from: classes9.dex */
public class d0 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f24744o = "mdia";

    public d0() {
        super(f24744o);
    }

    public x v() {
        for (d dVar : l()) {
            if (dVar instanceof x) {
                return (x) dVar;
            }
        }
        return null;
    }

    public e0 y() {
        for (d dVar : l()) {
            if (dVar instanceof e0) {
                return (e0) dVar;
            }
        }
        return null;
    }

    public f0 z() {
        for (d dVar : l()) {
            if (dVar instanceof f0) {
                return (f0) dVar;
            }
        }
        return null;
    }
}
