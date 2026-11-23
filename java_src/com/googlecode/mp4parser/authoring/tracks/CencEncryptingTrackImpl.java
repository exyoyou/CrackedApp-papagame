package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.l0;
import com.coremedia.iso.boxes.o0;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.w0;
import com.coremedia.iso.boxes.x0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes5.dex */
public class CencEncryptingTrackImpl implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f32924c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Map<UUID, SecretKey> f32925d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    UUID f32926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f32927f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f32928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f32929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f32930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    s0 f32931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, SecretKey> f32932k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> f32933l;

    public CencEncryptingTrackImpl(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, SecretKey secretKey, boolean z10) {
        this(hVar, uuid, Collections.singletonMap(uuid, secretKey), null, "cenc", z10);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f32924c.E();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized s0 F() {
        if (this.f32931j == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                this.f32924c.F().a(Channels.newChannel(byteArrayOutputStream));
                int i10 = 0;
                this.f32931j = (s0) new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())).l().get(0);
                l0 l0Var = new l0();
                l0Var.u(this.f32931j.v().getType());
                if (this.f32931j.v() instanceof com.coremedia.iso.boxes.sampleentry.c) {
                    ((com.coremedia.iso.boxes.sampleentry.c) this.f32931j.v()).q0(com.coremedia.iso.boxes.sampleentry.c.O);
                } else {
                    if (!(this.f32931j.v() instanceof com.coremedia.iso.boxes.sampleentry.h)) {
                        throw new RuntimeException("I don't know how to cenc " + this.f32931j.v().getType());
                    }
                    ((com.coremedia.iso.boxes.sampleentry.h) this.f32931j.v()).a0(com.coremedia.iso.boxes.sampleentry.h.E);
                }
                o0 o0Var = new o0();
                o0Var.m(l0Var);
                x0 x0Var = new x0();
                x0Var.y(this.f32923b);
                x0Var.A(65536);
                o0Var.m(x0Var);
                w0 w0Var = new w0();
                com.mp4parser.iso23001.part7.c cVar = new com.mp4parser.iso23001.part7.c();
                cVar.z(this.f32926e == null ? 0 : 8);
                if (this.f32926e != null) {
                    i10 = 1;
                }
                cVar.y(i10);
                UUID uuid = this.f32926e;
                if (uuid == null) {
                    uuid = new UUID(0L, 0L);
                }
                cVar.A(uuid);
                w0Var.m(cVar);
                o0Var.m(w0Var);
                this.f32931j.v().m(o0Var);
            } catch (IOException unused) {
                throw new RuntimeException("Dumping stsd to memory failed");
            }
        }
        return this.f32931j;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f32933l;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f32924c.H();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f32924c.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f32924c.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return new com.googlecode.mp4parser.boxes.cenc.b(this.f32932k, this.f32924c.U(), this.f32928g, this.f32923b);
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public boolean V() {
        return this.f32930i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> X() {
        return this.f32924c.X();
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public UUID Y() {
        return this.f32926e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f32924c.Z();
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public List<com.mp4parser.iso23001.part7.a> b0() {
        return this.f32928g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f32924c.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f32924c.getDuration();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f32924c.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "enc(" + this.f32924c.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f32924c.h0();
    }

    public CencEncryptingTrackImpl(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, Map<UUID, SecretKey> map, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> map2, String str, boolean z10) {
        this(hVar, uuid, map, map2, str, z10, false);
    }

    public CencEncryptingTrackImpl(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, Map<UUID, SecretKey> map, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> map2, String str, boolean z10, boolean z11) {
        new HashMap();
        char c10 = 0;
        this.f32930i = false;
        SecretKey secretKey = null;
        this.f32931j = null;
        this.f32924c = hVar;
        this.f32925d = map;
        this.f32926e = uuid;
        this.f32929h = z10;
        this.f32923b = str;
        this.f32933l = new HashMap();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.G().entrySet()) {
            if (!(entry.getKey() instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a)) {
                this.f32933l.put(entry.getKey(), entry.getValue());
            }
            c10 = 0;
            secretKey = null;
        }
        if (map2 != null) {
            for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> entry2 : map2.entrySet()) {
                this.f32933l.put(entry2.getKey(), entry2.getValue());
            }
        }
        this.f32933l = new HashMap<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]>(this.f32933l) { // from class: com.googlecode.mp4parser.authoring.tracks.CencEncryptingTrackImpl.1
            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public long[] put(com.googlecode.mp4parser.boxes.mp4.samplegrouping.b bVar, long[] jArr) {
                if (bVar instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) {
                    throw new RuntimeException("Please supply CencSampleEncryptionInformationGroupEntries in the constructor");
                }
                return (long[]) super.put(bVar, jArr);
            }
        };
        this.f32927f = hVar.U();
        this.f32928g = new ArrayList();
        BigInteger bigInteger = new BigInteger("1");
        int i10 = 8;
        byte[] bArr = new byte[8];
        if (!z10) {
            new SecureRandom().nextBytes(bArr);
        }
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        ArrayList arrayList = new ArrayList();
        if (map2 != null) {
            arrayList.addAll(map2.keySet());
        }
        this.f32932k = new com.googlecode.mp4parser.util.n<>();
        int iG = -1;
        int i11 = 0;
        int i12 = -1;
        while (i11 < hVar.U().size()) {
            int i13 = 0;
            int i14 = 0;
            while (i13 < arrayList.size()) {
                BigInteger bigInteger3 = bigInteger2;
                if (Arrays.binarySearch(G().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) arrayList.get(i13)), i11) >= 0) {
                    i14 = i13 + 1;
                }
                i13++;
                bigInteger2 = bigInteger3;
                secretKey = null;
                i10 = 8;
            }
            if (i12 != i14) {
                if (i14 == 0) {
                    this.f32932k.put(Integer.valueOf(i11), map.get(uuid));
                } else {
                    int i15 = i14 - 1;
                    if (((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i15)).e() != null) {
                        SecretKey secretKey2 = map.get(((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i15)).e());
                        if (secretKey2 != null) {
                            this.f32932k.put(Integer.valueOf(i11), secretKey2);
                        } else {
                            throw new RuntimeException("Key " + ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i15)).e() + " was not supplied for decryption");
                        }
                    } else {
                        this.f32932k.put(Integer.valueOf(i11), secretKey);
                    }
                }
                i12 = i14;
            }
            i11++;
            c10 = 0;
        }
        for (com.coremedia.iso.boxes.d dVar : hVar.F().v().l()) {
            if (dVar instanceof com.mp4parser.iso14496.part15.a) {
                this.f32930i = true;
                iG = ((com.mp4parser.iso14496.part15.a) dVar).z() + 1;
            }
            if (dVar instanceof com.mp4parser.iso14496.part15.c) {
                this.f32930i = true;
                iG = ((com.mp4parser.iso14496.part15.c) dVar).G() + 1;
            }
        }
        for (int i16 = 0; i16 < this.f32927f.size(); i16++) {
            com.googlecode.mp4parser.authoring.f fVar = this.f32927f.get(i16);
            com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
            this.f32928g.add(aVar);
            if (this.f32932k.get(Integer.valueOf(i16)) != null) {
                byte[] byteArray = bigInteger2.toByteArray();
                byte[] bArr2 = new byte[i10];
                System.arraycopy(byteArray, byteArray.length - i10 > 0 ? byteArray.length - i10 : 0, bArr2, 8 - byteArray.length < 0 ? 0 : 8 - byteArray.length, byteArray.length > i10 ? 8 : byteArray.length);
                aVar.f75728a = bArr2;
                ByteBuffer byteBuffer = (ByteBuffer) fVar.a().rewind();
                if (this.f32930i) {
                    if (z11) {
                        com.mp4parser.iso23001.part7.a.k[] kVarArr = new com.mp4parser.iso23001.part7.a.k[1];
                        kVarArr[c10] = aVar.a(byteBuffer.remaining(), 0L);
                        aVar.f75729b = kVarArr;
                    } else {
                        ArrayList arrayList2 = new ArrayList(5);
                        while (byteBuffer.remaining() > 0) {
                            int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.h.a(byteBuffer, iG));
                            int i17 = iA + iG;
                            int i18 = i17 >= 112 ? (i17 % 16) + 96 : i17;
                            arrayList2.add(aVar.a(i18, i17 - i18));
                            byteBuffer.position(byteBuffer.position() + iA);
                        }
                        aVar.f75729b = (com.mp4parser.iso23001.part7.a.k[]) arrayList2.toArray(new com.mp4parser.iso23001.part7.a.k[arrayList2.size()]);
                    }
                }
                bigInteger2 = bigInteger2.add(bigInteger);
            }
        }
        System.err.println("");
    }
}
