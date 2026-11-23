package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.boxes.k1;
import com.googlecode.mp4parser.j;

/* JADX INFO: loaded from: classes5.dex */
public class b extends com.googlecode.mp4parser.boxes.c {
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;

    static {
        s();
    }

    public b() {
        super(k1.f24950p);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PiffTrackEncryptionBox.java", b.class);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFlags", "com.googlecode.mp4parser.boxes.piff.PiffTrackEncryptionBox", "", "", "", "int"), 29);
    }

    @Override // com.googlecode.mp4parser.c, com.coremedia.iso.boxes.v
    public int getFlags() {
        j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return 0;
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] l() {
        return new byte[]{-119, 116, -37, -50, 123, -25, com.sigmob.sdk.archives.tar.e.P, 81, -124, -7, 113, 72, -7, -120, 37, 84};
    }
}
