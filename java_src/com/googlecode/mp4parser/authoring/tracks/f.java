package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.l0;
import com.coremedia.iso.boxes.o0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.x0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes5.dex */
public class f extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.boxes.cenc.a f33098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, SecretKey> f33100g;

    public f(g gVar, SecretKey secretKey) {
        this(gVar, (Map<UUID, SecretKey>) Collections.singletonMap(gVar.Y(), secretKey));
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        l0 l0Var = (l0) com.googlecode.mp4parser.util.m.e(this.f33099f.F(), "enc./sinf/frma");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f33099f.F().a(Channels.newChannel(byteArrayOutputStream));
            s0 s0Var = (s0) new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())).l().get(0);
            if (s0Var.v() instanceof com.coremedia.iso.boxes.sampleentry.c) {
                ((com.coremedia.iso.boxes.sampleentry.c) s0Var.v()).q0(l0Var.t());
            } else {
                if (!(s0Var.v() instanceof com.coremedia.iso.boxes.sampleentry.h)) {
                    throw new RuntimeException("I don't know " + s0Var.v().getType());
                }
                ((com.coremedia.iso.boxes.sampleentry.h) s0Var.v()).a0(l0Var.t());
            }
            LinkedList linkedList = new LinkedList();
            for (com.coremedia.iso.boxes.d dVar : s0Var.v().l()) {
                if (!dVar.getType().equals(o0.f25010o)) {
                    linkedList.add(dVar);
                }
            }
            s0Var.v().b(linkedList);
            return s0Var;
        } catch (IOException unused) {
            throw new RuntimeException("Dumping stsd to memory failed");
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33099f.H();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f33099f.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33098e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33099f.Z();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33099f.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33099f.getHandler();
    }

    public f(g gVar, Map<UUID, SecretKey> map) {
        super("dec(" + gVar.getName() + ")");
        this.f33100g = new com.googlecode.mp4parser.util.n<>();
        this.f33099f = gVar;
        x0 x0Var = (x0) com.googlecode.mp4parser.util.m.e(gVar.F(), "enc./sinf/schm");
        if (!"cenc".equals(x0Var.v()) && !"cbc1".equals(x0Var.v())) {
            throw new RuntimeException("You can only use the CencDecryptingTrackImpl with CENC (cenc or cbc1) encrypted tracks");
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : gVar.G().entrySet()) {
            if (entry.getKey() instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) {
                arrayList.add((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) entry.getKey());
            } else {
                G().put(entry.getKey(), entry.getValue());
            }
        }
        int i10 = -1;
        for (int i11 = 0; i11 < gVar.U().size(); i11++) {
            int i12 = 0;
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                if (Arrays.binarySearch(gVar.G().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) arrayList.get(i13)), i11) >= 0) {
                    i12 = i13 + 1;
                }
            }
            if (i10 != i12) {
                if (i12 == 0) {
                    this.f33100g.put(Integer.valueOf(i11), map.get(gVar.Y()));
                } else {
                    int i14 = i12 - 1;
                    if (((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i14)).f()) {
                        SecretKey secretKey = map.get(((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i14)).e());
                        if (secretKey == null) {
                            throw new RuntimeException("Key " + ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i14)).e() + " was not supplied for decryption");
                        }
                        this.f33100g.put(Integer.valueOf(i11), secretKey);
                    } else {
                        this.f33100g.put(Integer.valueOf(i11), null);
                    }
                }
                i10 = i12;
            }
        }
        this.f33098e = new com.googlecode.mp4parser.boxes.cenc.a(this.f33100g, gVar.U(), gVar.b0(), x0Var.v());
    }
}
