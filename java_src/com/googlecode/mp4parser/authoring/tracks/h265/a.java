package com.googlecode.mp4parser.authoring.tracks.h265;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.sampleentry.h;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.authoring.tracks.c implements c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ArrayList<ByteBuffer> f33106l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ArrayList<ByteBuffer> f33107m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ArrayList<ByteBuffer> f33108n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList<com.googlecode.mp4parser.authoring.f> f33109o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    s0 f33110p;

    public a(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar);
        this.f33106l = new ArrayList<>();
        this.f33107m = new ArrayList<>();
        this.f33108n = new ArrayList<>();
        this.f33109o = new ArrayList<>();
        ArrayList arrayList = new ArrayList();
        com.googlecode.mp4parser.authoring.tracks.c.a aVar = new com.googlecode.mp4parser.authoring.tracks.c.a(eVar);
        boolean[] zArr = new boolean[1];
        boolean[] zArr2 = {true};
        while (true) {
            ByteBuffer byteBufferC = c(aVar);
            if (byteBufferC == null) {
                this.f33110p = e();
                this.f33076f = new long[this.f33109o.size()];
                H().t(25L);
                Arrays.fill(this.f33076f, 1L);
                return;
            }
            b bVarF = f(byteBufferC);
            if (zArr[0]) {
                if (!g(bVarF)) {
                    switch (bVarF.f33112b) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 39:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                            i(arrayList, zArr, zArr2);
                            break;
                    }
                } else if ((byteBufferC.get(2) & (-128)) != 0) {
                    i(arrayList, zArr, zArr2);
                }
            }
            int i10 = bVarF.f33112b;
            if (i10 != 39) {
                switch (i10) {
                    case 32:
                        byteBufferC.position(2);
                        this.f33108n.add(byteBufferC.slice());
                        System.err.println("Stored VPS");
                        break;
                    case 33:
                        byteBufferC.position(2);
                        this.f33106l.add(byteBufferC.slice());
                        byteBufferC.position(1);
                        new f(Channels.newInputStream(new com.googlecode.mp4parser.util.b(byteBufferC.slice())));
                        System.err.println("Stored SPS");
                        break;
                    case 34:
                        byteBufferC.position(2);
                        this.f33107m.add(byteBufferC.slice());
                        System.err.println("Stored PPS");
                        break;
                }
            } else {
                new e(new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBufferC.slice()));
            }
            switch (bVarF.f33112b) {
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                    break;
                default:
                    System.err.println("Adding " + bVarF.f33112b);
                    arrayList.add(byteBufferC);
                    break;
            }
            if (g(bVarF)) {
                int i11 = bVarF.f33112b;
                if (i11 == 19 || i11 == 20) {
                    zArr2[0] = zArr2[0] & true;
                } else {
                    zArr2[0] = false;
                }
            }
            zArr[0] = zArr[0] | g(bVarF);
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
    private s0 e() {
        this.f33110p = new s0();
        h hVar = new h(h.C);
        hVar.j(1);
        hVar.O(24);
        hVar.P(1);
        hVar.R(72.0d);
        hVar.c0(72.0d);
        hVar.d0(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
        hVar.Q(480);
        hVar.M("HEVC Coding");
        com.mp4parser.iso14496.part15.c cVar = new com.mp4parser.iso14496.part15.c();
        com.mp4parser.iso14496.part15.d.a aVar = new com.mp4parser.iso14496.part15.d.a();
        aVar.f75654a = true;
        aVar.f75656c = 33;
        aVar.f75657d = new ArrayList();
        Iterator<ByteBuffer> it2 = this.f33106l.iterator();
        while (it2.hasNext()) {
            aVar.f75657d.add(com.googlecode.mp4parser.authoring.tracks.c.d(it2.next()));
        }
        com.mp4parser.iso14496.part15.d.a aVar2 = new com.mp4parser.iso14496.part15.d.a();
        aVar2.f75654a = true;
        aVar2.f75656c = 34;
        aVar2.f75657d = new ArrayList();
        Iterator<ByteBuffer> it3 = this.f33107m.iterator();
        while (it3.hasNext()) {
            aVar2.f75657d.add(com.googlecode.mp4parser.authoring.tracks.c.d(it3.next()));
        }
        com.mp4parser.iso14496.part15.d.a aVar3 = new com.mp4parser.iso14496.part15.d.a();
        aVar3.f75654a = true;
        aVar3.f75656c = 34;
        aVar3.f75657d = new ArrayList();
        Iterator<ByteBuffer> it4 = this.f33108n.iterator();
        while (it4.hasNext()) {
            aVar3.f75657d.add(com.googlecode.mp4parser.authoring.tracks.c.d(it4.next()));
        }
        cVar.t().addAll(Arrays.asList(aVar, aVar3, aVar2));
        hVar.m(cVar);
        this.f33110p.m(hVar);
        return this.f33110p;
    }

    public static void h(String[] strArr) throws IOException {
        a aVar = new a(new com.googlecode.mp4parser.g("c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"));
        com.googlecode.mp4parser.authoring.d dVar = new com.googlecode.mp4parser.authoring.d();
        dVar.a(aVar);
        new com.googlecode.mp4parser.authoring.builder.b().a(dVar).h(new FileOutputStream("output.mp4").getChannel());
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33109o;
    }

    public b f(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        b bVar = new b();
        bVar.f33111a = (32768 & i10) >> 15;
        bVar.f33112b = (i10 & 32256) >> 9;
        bVar.f33113c = (i10 & 504) >> 3;
        bVar.f33114d = i10 & 7;
        return bVar;
    }

    boolean g(b bVar) {
        int i10 = bVar.f33112b;
        return i10 >= 0 && i10 <= 31;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }

    public void i(List<ByteBuffer> list, boolean[] zArr, boolean[] zArr2) {
        this.f33109o.add(b(list));
        System.err.print("Create AU from " + list.size() + " NALs");
        if (zArr2[0]) {
            System.err.println("  IDR");
        } else {
            System.err.println();
        }
        zArr[0] = false;
        zArr2[0] = true;
        list.clear();
    }
}
