package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static byte[] f83591k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static Map<String, String> f83592l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final /* synthetic */ boolean f83593m = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f83600g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, String> f83602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map<String, String> f83603j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public short f83594a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f83595b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f83596c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f83597d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83598e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83599f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f83601h = 0;

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83594a, 1);
        lVar.a(this.f83595b, 2);
        lVar.a(this.f83596c, 3);
        lVar.a(this.f83597d, 4);
        lVar.a(this.f83598e, 5);
        lVar.a(this.f83599f, 6);
        lVar.a(this.f83600g, 7);
        lVar.a(this.f83601h, 8);
        lVar.a((Map) this.f83602i, 9);
        lVar.a((Map) this.f83603j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f83593m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        g gVar = (g) obj;
        return n.a(1, (int) gVar.f83594a) && n.a(1, (int) gVar.f83595b) && n.a(1, gVar.f83596c) && n.a(1, gVar.f83597d) && n.a((Object) 1, (Object) gVar.f83598e) && n.a((Object) 1, (Object) gVar.f83599f) && n.a((Object) 1, (Object) gVar.f83600g) && n.a(1, gVar.f83601h) && n.a((Object) 1, (Object) gVar.f83602i) && n.a((Object) 1, (Object) gVar.f83603j);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        try {
            this.f83594a = kVar.a(this.f83594a, 1, true);
            this.f83595b = kVar.a(this.f83595b, 2, true);
            this.f83596c = kVar.a(this.f83596c, 3, true);
            this.f83597d = kVar.a(this.f83597d, 4, true);
            this.f83598e = kVar.b(5, true);
            this.f83599f = kVar.b(6, true);
            if (f83591k == null) {
                f83591k = new byte[]{0};
            }
            this.f83600g = kVar.c(7, true);
            this.f83601h = kVar.a(this.f83601h, 8, true);
            if (f83592l == null) {
                HashMap map = new HashMap();
                f83592l = map;
                map.put("", "");
            }
            this.f83602i = (Map) kVar.a(f83592l, 9, true);
            if (f83592l == null) {
                HashMap map2 = new HashMap();
                f83592l = map2;
                map2.put("", "");
            }
            this.f83603j = (Map) kVar.a(f83592l, 10, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            System.out.println("RequestPacket decode error " + f.a(this.f83600g));
            throw new RuntimeException(e10);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
        i iVar = new i(sb2, i10);
        iVar.a(this.f83594a, "iVersion");
        iVar.a(this.f83595b, "cPacketType");
        iVar.a(this.f83596c, "iMessageType");
        iVar.a(this.f83597d, "iRequestId");
        iVar.a(this.f83598e, "sServantName");
        iVar.a(this.f83599f, "sFuncName");
        iVar.a(this.f83600g, "sBuffer");
        iVar.a(this.f83601h, "iTimeout");
        iVar.a((Map) this.f83602i, "context");
        iVar.a((Map) this.f83603j, "status");
    }
}
