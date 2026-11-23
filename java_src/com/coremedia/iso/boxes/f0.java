package com.coremedia.iso.boxes;

/* JADX INFO: loaded from: classes9.dex */
public class f0 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f24781o = "minf";

    public f0() {
        super(f24781o);
    }

    public a v() {
        for (d dVar : l()) {
            if (dVar instanceof a) {
                return (a) dVar;
            }
        }
        return null;
    }

    public u0 y() {
        for (d dVar : l()) {
            if (dVar instanceof u0) {
                return (u0) dVar;
            }
        }
        return null;
    }
}
