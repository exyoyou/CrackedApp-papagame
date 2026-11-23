package com.papa.controller.core;

import android.content.Context;
import android.os.Handler;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.Util.o0;
import com.papa.controller.core.hardware.g;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f76600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.papa.controller.component.bluetooth.spp.a f76603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PadInfo f76604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.papa.controller.core.c f76605f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76606g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f76607h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f76608i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f76609j;

    class a implements com.papa.controller.component.bluetooth.spp.a.g {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.g
        public void a(byte[] bArr, String str) {
            try {
                e eVar = e.this;
                eVar.w(eVar.f76601b, bArr);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements com.papa.controller.component.bluetooth.spp.a.f {
        b() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.f
        public void a(int i10) {
            PadStateEvent padStateEvent;
            if (i10 == 2) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f76602c, 2, 2, e.this.f76601b);
            } else if (i10 == 3) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f76602c, 1, 1, e.this.f76601b);
                e.this.t();
            } else {
                padStateEvent = null;
            }
            if (e.this.f76605f == null || padStateEvent == null) {
                return;
            }
            e.this.f76605f.onStateEvent(padStateEvent);
        }
    }

    class c implements com.papa.controller.component.bluetooth.spp.a.e {
        c() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (e.this.f76603d.J() == 3 || e.this.f76603d.J() == 1) {
                return;
            }
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f76602c, 8, 2, e.this.f76601b);
            if (e.this.f76605f != null) {
                e.this.f76605f.onStateEvent(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, e.this.f76602c, 0, 0, e.this.f76601b);
            if (e.this.f76605f != null) {
                e.this.f76605f.onStateEvent(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f76613b;

        d(long j10) {
            this.f76613b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (System.currentTimeMillis() - this.f76613b < BaseCloudFileManager.ACK_TIMEOUT) {
                try {
                    if (e.this.f76607h) {
                        e.this.z(1);
                        e.this.f76608i = true;
                        if (e.this.f76609j != null) {
                            e.this.f76609j.obtainMessage(10000, 1, 0, e.this.r()).sendToTarget();
                        }
                        if (e.this.f76606g) {
                            e.this.n();
                            return;
                        }
                        return;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            e.this.f76608i = true;
            if (e.this.f76609j != null) {
                e.this.f76609j.obtainMessage(10000, 0, 0, e.this.r()).sendToTarget();
            }
            e.this.n();
        }
    }

    public e(Context context, String str, String str2) {
        this.f76600a = context;
        this.f76601b = str;
        this.f76602c = str2;
        if (context != null) {
            this.f76603d = new com.papa.controller.component.bluetooth.spp.a(context);
            PadInfo padInfo = new PadInfo();
            this.f76604e = padInfo;
            padInfo.i0(str2);
            this.f76604e.f0(str);
        }
        D();
    }

    private void A(String str, com.papa.controller.core.hardware.b bVar) {
        try {
            this.f76604e.a0(u7.a.a(bVar.k()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void B(String str, com.papa.controller.core.hardware.c cVar) {
        try {
            Integer num = new Integer(cVar.f());
            int iIntValue = num.intValue() & 15;
            String str2 = ((num.intValue() >> 4) & 255) + o0.f49827a + iIntValue;
            String strN = cVar.n();
            byte[] bArrO = cVar.o();
            byte[] bArrM = cVar.m();
            boolean z10 = cVar.k() == 1;
            boolean z11 = cVar.l() == 1;
            this.f76604e.i0(strN);
            this.f76604e.l0(strN);
            this.f76604e.p0(u7.a.a(bArrO));
            this.f76604e.k0(u7.a.a(bArrM));
            this.f76604e.r0(str2);
            this.f76604e.f0(str);
            this.f76604e.b0(z10);
            this.f76604e.c0(z11);
            this.f76607h = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void C(String str, com.papa.controller.core.hardware.f fVar) {
        try {
            int iK = fVar.k();
            boolean z10 = fVar.l() == 1;
            boolean z11 = fVar.m() == 1;
            this.f76604e.V(iK);
            this.f76604e.m0(z10);
            this.f76604e.s0(z11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void D() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar == null) {
            return;
        }
        aVar.V(new a());
        this.f76603d.T(new b());
        this.f76603d.S(new c());
    }

    private void J() {
        new Thread(new d(System.currentTimeMillis())).start();
    }

    private void m(String str) {
        com.papa.controller.component.bluetooth.spp.a aVar;
        if (str == null || str.trim() == "" || (aVar = this.f76603d) == null) {
            return;
        }
        this.f76601b = str;
        if (!aVar.L() || this.f76603d.J() == 2 || this.f76603d.J() == 3) {
            return;
        }
        try {
            I();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f76603d.B(str);
        J();
    }

    private void o(String str) {
        if (this.f76603d == null || str == null || str.trim() == "") {
            return;
        }
        if (this.f76603d.J() == 3 || this.f76603d.J() == 2) {
            this.f76603d.C();
        }
    }

    private void p(String str, com.papa.controller.core.hardware.d dVar) {
        try {
            com.papa.controller.core.c cVar = this.f76605f;
            if (cVar == null) {
                return;
            }
            this.f76604e.a(cVar, dVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.papa.controller.core.b r() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String strL;
        String strF;
        String str6 = this.f76602c;
        String str7 = this.f76601b;
        PadInfo padInfo = this.f76604e;
        if (padInfo != null) {
            String strB = padInfo.B();
            String strJ = this.f76604e.J();
            String strQ = this.f76604e.Q();
            String strE = this.f76604e.E();
            String strO = this.f76604e.O();
            str2 = strE;
            str5 = strO;
            strL = this.f76604e.L();
            strF = this.f76604e.f();
            str3 = strB;
            str = strJ;
            str4 = strQ;
        } else {
            str = str6;
            str2 = str7;
            str3 = "";
            str4 = str3;
            str5 = str4;
            strL = str5;
            strF = strL;
        }
        return new com.papa.controller.core.b(str3, str, str4, str2, str5, strL, strF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar == null) {
            return;
        }
        aVar.Q(new com.papa.controller.core.hardware.c().a(), false);
        this.f76603d.Q(new com.papa.controller.core.hardware.f().a(), false);
        this.f76603d.Q(new com.papa.controller.core.hardware.b().a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str, byte[] bArr) {
        int type = new com.papa.controller.core.hardware.a(bArr).getType();
        if (type == 1) {
            p(str, new com.papa.controller.core.hardware.d(bArr));
            return;
        }
        if (type == 5) {
            C(str, new com.papa.controller.core.hardware.f(bArr));
        } else if (type == 20) {
            A(str, new com.papa.controller.core.hardware.b(bArr));
        } else {
            if (type != 246) {
                return;
            }
            B(str, new com.papa.controller.core.hardware.c(bArr));
        }
    }

    public void E(com.papa.controller.core.c cVar) {
        this.f76605f = cVar;
    }

    public void F(Handler handler) {
        this.f76609j = handler;
    }

    public void G(boolean z10) {
        this.f76606g = z10;
    }

    public void H(int i10, int i11) {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar == null || !aVar.O()) {
            return;
        }
        this.f76603d.Q(new g().k(i10, i11), false);
    }

    public void I() throws Exception {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar == null) {
            return;
        }
        if (!aVar.M()) {
            throw new Exception("Bluetooth is not enable!");
        }
        if (this.f76603d.O()) {
            return;
        }
        this.f76603d.W();
        this.f76603d.startService(false);
    }

    public void K() {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar == null) {
            return;
        }
        try {
            aVar.stopService();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void l() {
        String str = this.f76601b;
        if (str == null || str.equals("")) {
            return;
        }
        m(this.f76601b);
    }

    public void n() {
        String str = this.f76601b;
        if (str == null || str.equals("")) {
            return;
        }
        o(this.f76601b);
    }

    public String q() {
        return this.f76601b;
    }

    public com.papa.controller.core.c s() {
        return this.f76605f;
    }

    public com.papa.controller.component.bluetooth.spp.a u() {
        return this.f76603d;
    }

    public PadInfo v() {
        return this.f76604e;
    }

    public boolean x() {
        return this.f76607h;
    }

    public boolean y() {
        return this.f76608i;
    }

    public void z(int i10) {
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76603d;
        if (aVar != null) {
            aVar.Q(new com.papa.controller.core.hardware.e().k(i10), false);
        }
    }
}
