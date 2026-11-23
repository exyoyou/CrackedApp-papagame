package com.tencent.bugly.proguard;

import com.join.mgps.Util.o0;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static HashMap<String, byte[]> f83585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static HashMap<String, HashMap<String, byte[]>> f83586i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected g f83587g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f83588j;

    public e() {
        g gVar = new g();
        this.f83587g = gVar;
        this.f83588j = 0;
        gVar.f83594a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.d, com.tencent.bugly.proguard.c
    public final <T> void a(String str, T t10) {
        if (str.startsWith(o0.f49827a)) {
            throw new IllegalArgumentException("put name can not startwith . , now is ".concat(str));
        }
        super.a(str, t10);
    }

    @Override // com.tencent.bugly.proguard.d
    public final void b() {
        super.b();
        this.f83587g.f83594a = (short) 3;
    }

    public final void c(String str) {
        this.f83587g.f83599f = str;
    }

    public final void c() {
        this.f83587g.f83597d = 1;
    }

    public final void b(String str) {
        this.f83587g.f83598e = str;
    }

    @Override // com.tencent.bugly.proguard.d, com.tencent.bugly.proguard.c
    public final byte[] a() {
        g gVar = this.f83587g;
        if (gVar.f83594a == 2) {
            if (!gVar.f83598e.equals("")) {
                if (this.f83587g.f83599f.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (gVar.f83598e == null) {
                gVar.f83598e = "";
            }
            if (gVar.f83599f == null) {
                gVar.f83599f = "";
            }
        }
        l lVar = new l(0);
        lVar.a(this.f83579c);
        if (this.f83587g.f83594a == 2) {
            lVar.a((Map) this.f83577a, 0);
        } else {
            lVar.a((Map) ((d) this).f83582e, 0);
        }
        this.f83587g.f83600g = n.a(lVar.f83610a);
        l lVar2 = new l(0);
        lVar2.a(this.f83579c);
        this.f83587g.a(lVar2);
        byte[] bArrA = n.a(lVar2.f83610a);
        int length = bArrA.length + 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length).put(bArrA).flip();
        return byteBufferAllocate.array();
    }

    @Override // com.tencent.bugly.proguard.d, com.tencent.bugly.proguard.c
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                k kVar = new k(bArr, (byte) 0);
                kVar.a(this.f83579c);
                this.f83587g.a(kVar);
                g gVar = this.f83587g;
                if (gVar.f83594a == 3) {
                    k kVar2 = new k(gVar.f83600g);
                    kVar2.a(this.f83579c);
                    if (f83585h == null) {
                        HashMap<String, byte[]> map = new HashMap<>();
                        f83585h = map;
                        map.put("", new byte[0]);
                    }
                    ((d) this).f83582e = kVar2.a((Map) f83585h, 0, false);
                    return;
                }
                k kVar3 = new k(gVar.f83600g);
                kVar3.a(this.f83579c);
                if (f83586i == null) {
                    f83586i = new HashMap<>();
                    HashMap<String, byte[]> map2 = new HashMap<>();
                    map2.put("", new byte[0]);
                    f83586i.put("", map2);
                }
                this.f83577a = kVar3.a((Map) f83586i, 0, false);
                this.f83578b = new HashMap<>();
                return;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }
}
