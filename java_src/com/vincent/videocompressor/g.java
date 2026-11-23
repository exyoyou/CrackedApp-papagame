package com.vincent.videocompressor;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.y0;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.n;
import com.uc.crashsdk.export.LogType;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(16)
public class g {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static Map<Integer, Integer> f85783q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f85784a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f85786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f85787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.coremedia.iso.boxes.a f85788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s0 f85789f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinkedList<Integer> f85790g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f85791h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f85793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f85794k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f85795l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ArrayList<Long> f85796m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f85797n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f85798o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f85799p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<e> f85785b = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Date f85792i = new Date();

    static {
        HashMap map = new HashMap();
        f85783q = map;
        map.put(96000, 0);
        f85783q.put(88200, 1);
        f85783q.put(64000, 2);
        f85783q.put(48000, 3);
        f85783q.put(44100, 4);
        f85783q.put(Integer.valueOf(LogType.UNEXP_KNOWN_REASON), 5);
        f85783q.put(24000, 6);
        f85783q.put(22050, 7);
        f85783q.put(16000, 8);
        f85783q.put(12000, 9);
        f85783q.put(11025, 10);
        f85783q.put(Integer.valueOf(AVMDLDataLoader.KeyIsLiveSetLoaderType), 11);
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
    public g(int id2, MediaFormat format, boolean isAudio) throws Exception {
        this.f85784a = 0L;
        this.f85786c = 0L;
        this.f85788e = null;
        this.f85789f = null;
        this.f85790g = null;
        this.f85795l = 0.0f;
        ArrayList<Long> arrayList = new ArrayList<>();
        this.f85796m = arrayList;
        this.f85797n = false;
        this.f85798o = 0L;
        this.f85799p = true;
        this.f85784a = id2;
        if (isAudio) {
            arrayList.add(1024L);
            this.f85786c = 1024L;
            this.f85795l = 1.0f;
            this.f85791h = format.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE);
            this.f85787d = "soun";
            this.f85788e = new y0();
            this.f85789f = new s0();
            com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.E);
            cVar.f0(format.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_CHANNEL_COUNT));
            cVar.l0(format.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE));
            cVar.j(1);
            cVar.m0(16);
            com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g gVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g();
            gVar.x(0);
            n nVar = new n();
            nVar.j(2);
            gVar.z(nVar);
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
            eVar.v(64);
            eVar.w(5);
            eVar.t(1536);
            eVar.u(96000L);
            eVar.s(96000L);
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a aVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a();
            aVar.v(2);
            aVar.y(f85783q.get(Integer.valueOf((int) cVar.O())).intValue());
            aVar.w(cVar.I());
            eVar.r(aVar);
            gVar.v(eVar);
            ByteBuffer byteBufferT = gVar.t();
            bVar.B(gVar);
            bVar.y(byteBufferT);
            cVar.m(bVar);
            this.f85789f.m(cVar);
            return;
        }
        arrayList.add(3015L);
        this.f85786c = 3015L;
        this.f85794k = format.getInteger("width");
        this.f85793j = format.getInteger("height");
        this.f85791h = 90000;
        this.f85790g = new LinkedList<>();
        this.f85787d = "vide";
        this.f85788e = new m1();
        this.f85789f = new s0();
        String string = format.getString("mime");
        if (!string.equals(VideoController.f85710g)) {
            if (string.equals("video/mp4v")) {
                com.coremedia.iso.boxes.sampleentry.h hVar = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f25107x);
                hVar.j(1);
                hVar.O(24);
                hVar.P(1);
                hVar.R(72.0d);
                hVar.c0(72.0d);
                hVar.d0(this.f85794k);
                hVar.Q(this.f85793j);
                this.f85789f.m(hVar);
                return;
            }
            return;
        }
        com.coremedia.iso.boxes.sampleentry.h hVar2 = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f25109z);
        hVar2.j(1);
        hVar2.O(24);
        hVar2.P(1);
        hVar2.R(72.0d);
        hVar2.c0(72.0d);
        hVar2.d0(this.f85794k);
        hVar2.Q(this.f85793j);
        com.mp4parser.iso14496.part15.a aVar2 = new com.mp4parser.iso14496.part15.a();
        if (format.getByteBuffer("csd-0") != null) {
            ArrayList arrayList2 = new ArrayList();
            ByteBuffer byteBuffer = format.getByteBuffer("csd-0");
            byteBuffer.position(4);
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            arrayList2.add(bArr);
            ArrayList arrayList3 = new ArrayList();
            ByteBuffer byteBuffer2 = format.getByteBuffer("csd-1");
            byteBuffer2.position(4);
            byte[] bArr2 = new byte[byteBuffer2.remaining()];
            byteBuffer2.get(bArr2);
            arrayList3.add(bArr2);
            aVar2.T(arrayList2);
            aVar2.Q(arrayList3);
        }
        aVar2.I(13);
        aVar2.J(100);
        aVar2.L(-1);
        aVar2.K(-1);
        aVar2.M(-1);
        aVar2.N(1);
        aVar2.P(3);
        aVar2.R(0);
        hVar2.m(aVar2);
        this.f85789f.m(hVar2);
    }

    public void a(long offset, MediaCodec.BufferInfo bufferInfo) {
        boolean z10 = (this.f85797n || (bufferInfo.flags & 1) == 0) ? false : true;
        this.f85785b.add(new e(offset, bufferInfo.size));
        LinkedList<Integer> linkedList = this.f85790g;
        if (linkedList != null && z10) {
            linkedList.add(Integer.valueOf(this.f85785b.size()));
        }
        long j10 = bufferInfo.presentationTimeUs;
        long j11 = j10 - this.f85798o;
        this.f85798o = j10;
        long j12 = ((j11 * ((long) this.f85791h)) + 500000) / C.MICROS_PER_SECOND;
        if (!this.f85799p) {
            ArrayList<Long> arrayList = this.f85796m;
            arrayList.add(arrayList.size() - 1, Long.valueOf(j12));
            this.f85786c += j12;
        }
        this.f85799p = false;
    }

    public Date b() {
        return this.f85792i;
    }

    public long c() {
        return this.f85786c;
    }

    public String d() {
        return this.f85787d;
    }

    public int e() {
        return this.f85793j;
    }

    public com.coremedia.iso.boxes.a f() {
        return this.f85788e;
    }

    public s0 g() {
        return this.f85789f;
    }

    public ArrayList<Long> h() {
        return this.f85796m;
    }

    public ArrayList<e> i() {
        return this.f85785b;
    }

    public long[] j() {
        LinkedList<Integer> linkedList = this.f85790g;
        if (linkedList == null || linkedList.isEmpty()) {
            return null;
        }
        long[] jArr = new long[this.f85790g.size()];
        for (int i10 = 0; i10 < this.f85790g.size(); i10++) {
            jArr[i10] = this.f85790g.get(i10).intValue();
        }
        return jArr;
    }

    public int k() {
        return this.f85791h;
    }

    public long l() {
        return this.f85784a;
    }

    public float m() {
        return this.f85795l;
    }

    public int n() {
        return this.f85794k;
    }

    public boolean o() {
        return this.f85797n;
    }
}
