package com.coremedia.iso.boxes;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class h0 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f24899o = "moov";

    public h0() {
        super(f24899o);
    }

    public i0 v() {
        for (d dVar : l()) {
            if (dVar instanceof i0) {
                return (i0) dVar;
            }
        }
        return null;
    }

    public int y() {
        return c(f1.class).size();
    }

    public long[] z() {
        List listC = c(f1.class);
        long[] jArr = new long[listC.size()];
        for (int i10 = 0; i10 < listC.size(); i10++) {
            jArr[i10] = ((f1) listC.get(i10)).z().C();
        }
        return jArr;
    }
}
