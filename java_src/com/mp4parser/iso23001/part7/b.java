package com.mp4parser.iso23001.part7;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.googlecode.mp4parser.util.o;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f75767v = "pssh";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static byte[] f75768w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static byte[] f75769x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final /* synthetic */ boolean f75770y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75771z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    byte[] f75772s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    byte[] f75773t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    List<UUID> f75774u;

    static {
        s();
        f75768w = o.b(UUID.fromString("A2B55680-6F43-11E0-9A3F-0002A5D5C51B"));
        f75769x = o.b(UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95"));
    }

    public b() {
        super(f75767v);
        this.f75774u = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ProtectionSystemSpecificHeaderBox.java", b.class);
        f75771z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "java.util.List"), 43);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setKeyIds", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "java.util.List", "keyIds", "", "void"), 47);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 54);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSystemId", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "systemId", "", "void"), 58);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "", "", "", "[B"), 63);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setContent", "com.mp4parser.iso23001.part7.ProtectionSystemSpecificHeaderBox", "[B", "content", "", "void"), 67);
    }

    public void A(byte[] bArr) {
        j.b().c(e.w(C, this, this, bArr));
        this.f75773t = bArr;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[16];
        this.f75773t = bArr;
        byteBuffer.get(bArr);
        if (getVersion() > 0) {
            int iA = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
            while (true) {
                int i10 = iA - 1;
                if (iA <= 0) {
                    break;
                }
                byte[] bArr2 = new byte[16];
                byteBuffer.get(bArr2);
                this.f75774u.add(o.a(bArr2));
                iA = i10;
            }
        }
        g.l(byteBuffer);
        byte[] bArr3 = new byte[byteBuffer.remaining()];
        this.f75772s = bArr3;
        byteBuffer.get(bArr3);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(this.f75773t, 0, 16);
        if (getVersion() > 0) {
            i.i(byteBuffer, this.f75774u.size());
            Iterator<UUID> it2 = this.f75774u.iterator();
            while (it2.hasNext()) {
                byteBuffer.put(o.b(it2.next()));
            }
        }
        i.i(byteBuffer, this.f75772s.length);
        byteBuffer.put(this.f75772s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long length = this.f75772s.length + 24;
        return getVersion() > 0 ? length + 4 + ((long) (this.f75774u.size() * 16)) : length;
    }

    public byte[] v() {
        j.b().c(e.v(D, this, this));
        return this.f75772s;
    }

    public List<UUID> w() {
        j.b().c(e.v(f75771z, this, this));
        return this.f75774u;
    }

    public byte[] x() {
        j.b().c(e.v(B, this, this));
        return this.f75773t;
    }

    public void y(byte[] bArr) {
        j.b().c(e.w(E, this, this, bArr));
        this.f75772s = bArr;
    }

    public void z(List<UUID> list) {
        j.b().c(e.w(A, this, this, list));
        this.f75774u = list;
    }
}
