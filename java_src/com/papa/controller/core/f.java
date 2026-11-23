package com.papa.controller.core;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import com.join.mgps.Util.o0;
import com.papa.controller.component.bluetooth.BluetoothManager;
import com.papa.controller.core.hardware.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static f f76615j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f76617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.papa.controller.core.c f76618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f76619d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    BluetoothManager f76622g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    BluetoothManager.c f76623h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Map<String, e> f76624i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76616a = getClass().getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76620e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76621f = -1;

    class a implements BluetoothManager.c {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.BluetoothManager.c
        public void a(BluetoothDevice bluetoothDevice) {
            if (bluetoothDevice != null && f.this.f76620e) {
                f.this.g(bluetoothDevice.getAddress(), bluetoothDevice.getName());
            }
        }

        @Override // com.papa.controller.component.bluetooth.BluetoothManager.c
        public void b(BluetoothDevice bluetoothDevice) {
            if (bluetoothDevice == null) {
                return;
            }
            f.this.h(bluetoothDevice.getAddress());
        }
    }

    class b implements com.papa.controller.component.bluetooth.spp.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f76626a;

        b(String str) {
            this.f76626a = str;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.g
        public void a(byte[] bArr, String str) {
            try {
                f.this.m(this.f76626a, bArr);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class c implements com.papa.controller.component.bluetooth.spp.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f76628a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.papa.controller.component.bluetooth.spp.a f76630c;

        c(String str, String str2, com.papa.controller.component.bluetooth.spp.a aVar) {
            this.f76628a = str;
            this.f76629b = str2;
            this.f76630c = aVar;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.f
        public void a(int i10) {
            PadStateEvent padStateEvent;
            if (i10 == 2) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f76628a, 2, 2, this.f76629b);
            } else if (i10 == 3) {
                padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f76628a, 1, 1, this.f76629b);
                f.this.z(this.f76630c);
            } else {
                padStateEvent = null;
            }
            if (f.this.f76618c == null || padStateEvent == null) {
                return;
            }
            f.this.f76618c.onStateEvent(padStateEvent);
        }
    }

    class d implements com.papa.controller.component.bluetooth.spp.a.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f76632a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76633b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.papa.controller.component.bluetooth.spp.a f76634c;

        d(String str, String str2, com.papa.controller.component.bluetooth.spp.a aVar) {
            this.f76632a = str;
            this.f76633b = str2;
            this.f76634c = aVar;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (this.f76634c.J() == 3 || this.f76634c.J() == 1) {
                return;
            }
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f76632a, 8, 2, this.f76633b);
            if (f.this.f76618c != null) {
                f.this.f76618c.onStateEvent(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
            PadStateEvent padStateEvent = new PadStateEvent(System.currentTimeMillis(), -1, this.f76632a, 0, 0, this.f76633b);
            if (f.this.f76618c != null) {
                f.this.f76618c.onStateEvent(padStateEvent);
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.papa.controller.component.bluetooth.spp.a f76636a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PadInfo f76637b;

        public e() {
        }
    }

    public f(Context context) {
        this.f76617b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str, String str2) {
        if (str == null || str.trim() == "") {
            return;
        }
        if (this.f76624i == null) {
            this.f76624i = new HashMap();
        }
        e eVar = new e();
        com.papa.controller.component.bluetooth.spp.a aVar = new com.papa.controller.component.bluetooth.spp.a(this.f76617b);
        aVar.W();
        aVar.startService(false);
        eVar.f76636a = aVar;
        PadInfo padInfo = new PadInfo();
        eVar.f76637b = padInfo;
        int i10 = this.f76621f;
        this.f76621f = i10 + 1;
        padInfo.W(i10);
        this.f76624i.put(str, eVar);
        if (aVar.L()) {
            aVar.V(new b(str));
            aVar.T(new c(str2, str, aVar));
            aVar.S(new d(str2, str, aVar));
            aVar.B(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(String str) {
        Map<String, e> map;
        if (str == null || str.trim() == "" || (map = this.f76624i) == null || map.size() == 0 || !this.f76624i.containsKey(str)) {
            return;
        }
        com.papa.controller.component.bluetooth.spp.a aVar = this.f76624i.get(str).f76636a;
        if (aVar.J() == 3) {
            aVar.C();
        }
    }

    private void i() {
        Map<String, e> map = this.f76624i;
        if (map == null || map.size() == 0) {
            return;
        }
        Iterator<e> it2 = this.f76624i.values().iterator();
        while (it2.hasNext()) {
            com.papa.controller.component.bluetooth.spp.a aVar = it2.next().f76636a;
            if (aVar.J() == 3) {
                aVar.C();
            }
        }
    }

    private void j(String str, com.papa.controller.core.hardware.d dVar) {
        try {
            if (this.f76618c == null) {
                return;
            }
            this.f76624i.get(str).f76637b.a(this.f76618c, dVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static f l(Context context) {
        f fVar = f76615j;
        if (fVar != null) {
            return fVar;
        }
        f76615j = new f(context);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(String str, byte[] bArr) {
        int type = new com.papa.controller.core.hardware.a(bArr).getType();
        if (type == 1) {
            j(str, new com.papa.controller.core.hardware.d(bArr));
            return;
        }
        if (type == 5) {
            r(str, new com.papa.controller.core.hardware.f(bArr));
        } else if (type == 20) {
            p(str, new com.papa.controller.core.hardware.b(bArr));
        } else {
            if (type != 246) {
                return;
            }
            q(str, new com.papa.controller.core.hardware.c(bArr));
        }
    }

    private void n() {
        Context context = this.f76617b;
        if (context == null) {
            return;
        }
        BluetoothManager bluetoothManager = new BluetoothManager(context);
        this.f76622g = bluetoothManager;
        try {
            if (bluetoothManager.p()) {
                a aVar = new a();
                this.f76623h = aVar;
                this.f76622g.u(aVar);
                this.f76622g.x();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void o() {
        this.f76624i = new HashMap();
    }

    private void p(String str, com.papa.controller.core.hardware.b bVar) {
        try {
            this.f76624i.get(str).f76637b.a0(u7.a.a(bVar.k()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q(String str, com.papa.controller.core.hardware.c cVar) {
        try {
            PadInfo padInfo = this.f76624i.get(str).f76637b;
            Integer num = new Integer(cVar.f());
            int iIntValue = num.intValue() & 15;
            String str2 = ((num.intValue() >> 4) & 255) + o0.f49827a + iIntValue;
            String strN = cVar.n();
            byte[] bArrO = cVar.o();
            byte[] bArrM = cVar.m();
            boolean z10 = cVar.k() == 1;
            boolean z11 = cVar.l() == 1;
            padInfo.i0(strN);
            padInfo.l0(strN);
            padInfo.p0(u7.a.a(bArrO));
            padInfo.k0(u7.a.a(bArrM));
            padInfo.r0(str2);
            padInfo.f0(str);
            padInfo.b0(z10);
            padInfo.c0(z11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void r(String str, com.papa.controller.core.hardware.f fVar) {
        try {
            PadInfo padInfo = this.f76624i.get(str).f76637b;
            int iK = fVar.k();
            boolean z10 = fVar.l() == 1;
            boolean z11 = fVar.m() == 1;
            padInfo.V(iK);
            padInfo.m0(z10);
            padInfo.s0(z11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void w() throws Exception {
        Map<String, e> map = this.f76624i;
        if (map == null || map.size() == 0) {
            return;
        }
        Iterator<e> it2 = this.f76624i.values().iterator();
        while (it2.hasNext()) {
            com.papa.controller.component.bluetooth.spp.a aVar = it2.next().f76636a;
            if (!aVar.M()) {
                throw new Exception("Bluetooth is not enable!");
            }
            if (!aVar.O()) {
                aVar.W();
                aVar.startService(false);
            }
        }
    }

    private void y() {
        Map<String, e> map = this.f76624i;
        if (map == null || map.size() == 0) {
            return;
        }
        Iterator<e> it2 = this.f76624i.values().iterator();
        while (it2.hasNext()) {
            it2.next().f76636a.stopService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(com.papa.controller.component.bluetooth.spp.a aVar) {
        aVar.Q(new com.papa.controller.core.hardware.e().k(1), false);
        aVar.Q(new com.papa.controller.core.hardware.c().a(), false);
        aVar.Q(new com.papa.controller.core.hardware.f().a(), false);
        aVar.Q(new com.papa.controller.core.hardware.b().a(), false);
    }

    public List<com.papa.controller.core.b> k() {
        ArrayList arrayList = new ArrayList();
        Map<String, e> map = this.f76624i;
        if (map != null && map.size() != 0) {
            Iterator<e> it2 = this.f76624i.values().iterator();
            while (it2.hasNext()) {
                PadInfo padInfo = it2.next().f76637b;
                if (padInfo != null) {
                    String strValueOf = String.valueOf(padInfo.d());
                    String strJ = padInfo.J();
                    String strQ = padInfo.Q();
                    String strE = padInfo.E();
                    padInfo.b();
                    arrayList.add(new com.papa.controller.core.b(strValueOf, strJ, strQ, strE, "", "", padInfo.f()));
                }
            }
        }
        return arrayList;
    }

    public void s() {
        this.f76618c = null;
        this.f76619d = null;
        this.f76621f = -1;
        x();
    }

    public void t(com.papa.controller.core.c cVar, Handler handler) {
        this.f76618c = cVar;
        this.f76619d = handler;
        v();
    }

    public void u(int i10, int i11) {
        Iterator<e> it2 = this.f76624i.values().iterator();
        while (it2.hasNext()) {
            it2.next().f76636a.Q(new g().k(i10, i11), false);
        }
    }

    public void v() {
        try {
            o();
            n();
            if (this.f76620e) {
                w();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void x() {
        y();
        BluetoothManager bluetoothManager = this.f76622g;
        if (bluetoothManager != null) {
            bluetoothManager.y();
        }
    }
}
