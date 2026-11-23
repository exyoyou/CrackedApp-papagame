package com.papa.controller.component.bluetooth.spp;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f76426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BluetoothAdapter f76427f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private e f76438q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f76422a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f76423b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f76424c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f76425d = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.papa.controller.component.bluetooth.spp.b f76428g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f76429h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f76430i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f76431j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f76432k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f76433l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f76434m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f76435n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f76436o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f76437p = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f76439r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    private final Handler f76440s = new b();

    /* JADX INFO: renamed from: com.papa.controller.component.bluetooth.spp.a$a, reason: collision with other inner class name */
    class RunnableC0990a implements Runnable {
        RunnableC0990a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f76428g != null) {
                a.this.f76435n = false;
                a.this.f76428g.q();
            }
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 == 2) {
                    byte[] bArr = (byte[]) message.obj;
                    String str = new String(bArr);
                    if (bArr == null || bArr.length <= 0 || a.this.f76423b == null) {
                        return;
                    }
                    a.this.f76423b.a(bArr, str);
                    return;
                }
                if (i10 != 4) {
                    if (i10 != 5) {
                        return;
                    }
                    Toast.makeText(a.this.f76426e, message.getData().getString(com.papa.controller.component.bluetooth.spp.c.f76484o), 0).show();
                    return;
                }
                a.this.f76429h = message.getData().getString("device_name");
                a.this.f76430i = message.getData().getString(com.papa.controller.component.bluetooth.spp.c.f76483n);
                if (a.this.f76424c != null) {
                    a.this.f76424c.c(a.this.f76429h, a.this.f76430i);
                }
                a.this.f76433l = true;
                return;
            }
            if (a.this.f76422a != null) {
                a.this.f76422a.a(message.arg1);
            }
            if (a.this.f76433l && message.arg1 != 3) {
                if (a.this.f76424c != null) {
                    a.this.f76424c.b();
                }
                if (a.this.f76432k) {
                    a.this.f76432k = false;
                    a aVar = a.this;
                    aVar.y(aVar.f76436o);
                }
                a.this.f76433l = false;
                a.this.f76429h = null;
                a.this.f76430i = null;
            }
            if (!a.this.f76434m && message.arg1 == 2) {
                a.this.f76434m = true;
            } else if (a.this.f76434m) {
                if (message.arg1 != 3 && a.this.f76424c != null) {
                    a.this.f76424c.a();
                }
                a.this.f76434m = false;
            }
        }
    }

    class c implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f76443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f76444b;

        c(ArrayList arrayList, ArrayList arrayList2) {
            this.f76443a = arrayList;
            this.f76444b = arrayList2;
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void a() {
            if (a.this.f76435n) {
                if (!a.this.f76432k) {
                    a.this.f76438q = null;
                    a.this.f76431j = false;
                    return;
                }
                a.k(a.this);
                if (a.this.f76439r >= this.f76443a.size()) {
                    a.this.f76439r = 0;
                }
                a aVar = a.this;
                aVar.B((String) this.f76443a.get(aVar.f76439r));
                if (a.this.f76425d != null) {
                    a.this.f76425d.a((String) this.f76444b.get(a.this.f76439r), (String) this.f76443a.get(a.this.f76439r));
                }
            }
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void b() {
        }

        @Override // com.papa.controller.component.bluetooth.spp.a.e
        public void c(String str, String str2) {
            a.this.f76438q = null;
            a.this.f76431j = false;
        }
    }

    public interface d {
        void a(String str, String str2);

        void b();
    }

    public interface e {
        void a();

        void b();

        void c(String str, String str2);
    }

    public interface f {
        void a(int i10);
    }

    public interface g {
        void a(byte[] bArr, String str);
    }

    public a(Context context) {
        this.f76427f = null;
        this.f76426e = context;
        this.f76427f = BluetoothAdapter.getDefaultAdapter();
    }

    static /* synthetic */ int k(a aVar) {
        int i10 = aVar.f76439r;
        aVar.f76439r = i10 + 1;
        return i10;
    }

    public void A(Intent intent) {
        this.f76428g.j(this.f76427f.getRemoteDevice(intent.getExtras().getString(com.papa.controller.component.bluetooth.spp.c.f76487r)));
    }

    public void B(String str) {
        this.f76428g.j(this.f76427f.getRemoteDevice(str));
    }

    public void C() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f76428g;
        if (bVar != null) {
            this.f76435n = false;
            bVar.q();
            if (this.f76428g.n() == 0) {
                this.f76435n = true;
                this.f76428g.p(this.f76437p);
            }
        }
    }

    public void D() {
        this.f76427f.enable();
    }

    public BluetoothAdapter E() {
        return this.f76427f;
    }

    public String F() {
        return this.f76430i;
    }

    public String G() {
        return this.f76429h;
    }

    public String[] H() {
        Set<BluetoothDevice> bondedDevices = this.f76427f.getBondedDevices();
        String[] strArr = new String[bondedDevices.size()];
        Iterator<BluetoothDevice> it2 = bondedDevices.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            strArr[i10] = it2.next().getAddress();
            i10++;
        }
        return strArr;
    }

    public String[] I() {
        Set<BluetoothDevice> bondedDevices = this.f76427f.getBondedDevices();
        String[] strArr = new String[bondedDevices.size()];
        Iterator<BluetoothDevice> it2 = bondedDevices.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            strArr[i10] = it2.next().getName();
            i10++;
        }
        return strArr;
    }

    public int J() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f76428g;
        if (bVar != null) {
            return bVar.n();
        }
        return -1;
    }

    public boolean K() {
        return this.f76431j;
    }

    public boolean L() {
        try {
            BluetoothAdapter bluetoothAdapter = this.f76427f;
            return (bluetoothAdapter == null || bluetoothAdapter.getAddress().equals(null)) ? false : true;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public boolean M() {
        return this.f76427f.isEnabled();
    }

    public boolean N() {
        return this.f76427f.isDiscovering();
    }

    public boolean O() {
        return this.f76428g != null;
    }

    public void P(String str, boolean z10) {
        if (this.f76428g.n() == 3) {
            if (z10) {
                str = str + "\r\n";
            }
            this.f76428g.r(str.getBytes());
        }
    }

    public void Q(byte[] bArr, boolean z10) {
        if (this.f76428g.n() == 3) {
            if (!z10) {
                this.f76428g.r(bArr);
                return;
            }
            int length = bArr.length + 2;
            byte[] bArr2 = new byte[length];
            for (int i10 = 0; i10 < bArr.length; i10++) {
                bArr2[i10] = bArr[i10];
            }
            bArr2[length - 2] = 10;
            bArr2[length - 1] = 13;
            this.f76428g.r(bArr2);
        }
    }

    public void R(d dVar) {
        this.f76425d = dVar;
    }

    public void S(e eVar) {
        this.f76424c = eVar;
    }

    public void T(f fVar) {
        this.f76422a = fVar;
    }

    public void U(boolean z10) {
        stopService();
        startService(z10);
        this.f76437p = z10;
    }

    public void V(g gVar) {
        this.f76423b = gVar;
    }

    public void W() {
        this.f76428g = new com.papa.controller.component.bluetooth.spp.b(this.f76426e, this.f76440s);
    }

    public boolean X() {
        return this.f76427f.startDiscovery();
    }

    public void Y() {
        this.f76432k = false;
    }

    public void startService(boolean z10) {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f76428g;
        if (bVar == null || bVar.n() != 0) {
            return;
        }
        this.f76435n = true;
        this.f76428g.p(z10);
        this.f76437p = z10;
    }

    public void stopService() {
        com.papa.controller.component.bluetooth.spp.b bVar = this.f76428g;
        if (bVar != null) {
            this.f76435n = false;
            bVar.q();
        }
        new Handler().postDelayed(new RunnableC0990a(), 500L);
    }

    public void y(String str) {
        if (this.f76432k) {
            return;
        }
        this.f76436o = str;
        this.f76432k = true;
        this.f76431j = true;
        d dVar = this.f76425d;
        if (dVar != null) {
            dVar.b();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String[] strArrI = I();
        String[] strArrH = H();
        for (int i10 = 0; i10 < strArrI.length; i10++) {
            if (strArrI[i10].contains(str)) {
                arrayList.add(strArrH[i10]);
                arrayList2.add(strArrI[i10]);
            }
        }
        c cVar = new c(arrayList, arrayList2);
        this.f76438q = cVar;
        S(cVar);
        this.f76439r = 0;
        d dVar2 = this.f76425d;
        if (dVar2 != null) {
            dVar2.a(strArrI[0], strArrH[0]);
        }
        if (arrayList.size() > 0) {
            B((String) arrayList.get(this.f76439r));
        } else {
            Toast.makeText(this.f76426e, "Device name mismatch", 0).show();
        }
    }

    public boolean z() {
        return this.f76427f.cancelDiscovery();
    }
}
