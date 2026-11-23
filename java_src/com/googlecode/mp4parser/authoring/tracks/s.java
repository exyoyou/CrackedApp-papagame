package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class s extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s0 f33260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<a> f33261g;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f33262a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f33263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f33264c;

        public a(long j10, long j11, String str) {
            this.f33262a = j10;
            this.f33263b = j11;
            this.f33264c = str;
        }

        public long a() {
            return this.f33262a;
        }

        public String b() {
            return this.f33264c;
        }

        public long c() {
            return this.f33263b;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public s() {
        super("subtiles");
        this.f33259e = new com.googlecode.mp4parser.authoring.i();
        this.f33261g = new LinkedList();
        this.f33260f = new s0();
        com.coremedia.iso.boxes.sampleentry.g gVar = new com.coremedia.iso.boxes.sampleentry.g(com.coremedia.iso.boxes.sampleentry.g.f25089v);
        gVar.j(1);
        gVar.j0(new com.coremedia.iso.boxes.sampleentry.g.b());
        gVar.a0(new com.coremedia.iso.boxes.sampleentry.g.a());
        this.f33260f.m(gVar);
        com.googlecode.mp4parser.boxes.threegpp26245.a aVar = new com.googlecode.mp4parser.boxes.threegpp26245.a();
        aVar.u(Collections.singletonList(new com.googlecode.mp4parser.boxes.threegpp26245.a.C0623a(1, "Serif")));
        gVar.m(aVar);
        this.f33259e.m(new Date());
        this.f33259e.s(new Date());
        this.f33259e.t(1000L);
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33260f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33259e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        LinkedList linkedList = new LinkedList();
        long j10 = 0;
        for (a aVar : this.f33261g) {
            long j11 = aVar.f33262a - j10;
            if (j11 > 0) {
                linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(new byte[2])));
            } else if (j11 < 0) {
                throw new Error("Subtitle display times may not intersect");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(aVar.f33264c.getBytes("UTF-8").length);
                dataOutputStream.write(aVar.f33264c.getBytes("UTF-8"));
                dataOutputStream.close();
                linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(byteArrayOutputStream.toByteArray())));
                j10 = aVar.f33263b;
            } catch (IOException unused) {
                throw new Error("VM is broken. Does not support UTF-8");
            }
        }
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        ArrayList arrayList = new ArrayList();
        long j10 = 0;
        for (a aVar : this.f33261g) {
            long j11 = aVar.f33262a - j10;
            if (j11 > 0) {
                arrayList.add(Long.valueOf(j11));
            } else if (j11 < 0) {
                throw new Error("Subtitle display times may not intersect");
            }
            arrayList.add(Long.valueOf(aVar.f33263b - aVar.f33262a));
            j10 = aVar.f33263b;
        }
        long[] jArr = new long[arrayList.size()];
        Iterator it2 = arrayList.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            jArr[i10] = ((Long) it2.next()).longValue();
            i10++;
        }
        return jArr;
    }

    public List<a> b() {
        return this.f33261g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "sbtl";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }
}
