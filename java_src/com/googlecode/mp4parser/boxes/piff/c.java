package com.googlecode.mp4parser.boxes.piff;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Map<UUID, Class<? extends c>> f33693a = new HashMap();

    public static c a(UUID uuid, ByteBuffer byteBuffer) {
        c cVarNewInstance;
        Class<? extends c> cls = f33693a.get(uuid);
        if (cls != null) {
            try {
                cVarNewInstance = cls.newInstance();
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException(e11);
            }
        } else {
            cVarNewInstance = null;
        }
        if (cVarNewInstance == null) {
            cVarNewInstance = new com.googlecode.mp4parser.contentprotection.a();
        }
        cVarNewInstance.d(byteBuffer);
        return cVarNewInstance;
    }

    public abstract ByteBuffer b();

    public abstract UUID c();

    public abstract void d(ByteBuffer byteBuffer);

    public boolean equals(Object obj) {
        throw new RuntimeException("somebody called equals on me but that's not supposed to happen.");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ProtectionSpecificHeader");
        sb2.append("{data=");
        ByteBuffer byteBufferDuplicate = b().duplicate();
        byteBufferDuplicate.rewind();
        byte[] bArr = new byte[byteBufferDuplicate.limit()];
        byteBufferDuplicate.get(bArr);
        sb2.append(com.coremedia.iso.e.b(bArr));
        sb2.append('}');
        return sb2.toString();
    }
}
