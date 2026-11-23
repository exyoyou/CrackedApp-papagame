package com.papa.controller.core;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static d f76581q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f76583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f76584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f76585d;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Map<String, e> f76597p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76582a = getClass().getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76586e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f76587f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76588g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f76589h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ControllerManager f76590i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ControllerManager.d f76591j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Handler f76592k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f76593l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f76594m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f76595n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f76596o = 4;

    class a extends Handler {
        a() {
        }

        void a(ControllerManager.c cVar) {
            if (!d.this.f76587f || !d.this.f76586e || cVar == null || cVar.b() == null) {
                return;
            }
            Object objB = cVar.b();
            if (objB instanceof BluetoothDevice) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) objB;
                String address = bluetoothDevice.getAddress();
                String name = (Build.VERSION.SDK_INT < 23 || d.this.f76583b == null || d.this.f76583b.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") != 0) ? "Unknow" : bluetoothDevice.getName();
                if (d.this.f76597p.containsKey(address)) {
                    d.this.m((e) d.this.f76597p.get(address));
                    return;
                }
                e eVar = new e(d.this.f76583b, address, name);
                eVar.E(d.this.f76584c);
                d.this.f76597p.put(address, eVar);
                d.this.D(eVar);
            }
        }

        void b(ControllerManager.c cVar) {
            if (cVar == null || cVar.b() == null) {
                return;
            }
            Object objB = cVar.b();
            if (objB instanceof BluetoothDevice) {
                String address = ((BluetoothDevice) objB).getAddress();
                if (d.this.f76597p.containsKey(address)) {
                    d.this.H((e) d.this.f76597p.get(address));
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 == 1) {
                Object obj = message.obj;
                if (obj != null) {
                    a((ControllerManager.c) obj);
                    return;
                }
                return;
            }
            if (i10 == 2) {
                Object obj2 = message.obj;
                if (obj2 != null) {
                    b((ControllerManager.c) obj2);
                    return;
                }
                return;
            }
            if (i10 == 3) {
                if (d.this.f76591j != null) {
                    d.this.f76591j.onControllerDeviceAdded((ControllerManager.c) message.obj);
                }
            } else if (i10 == 4 && d.this.f76591j != null) {
                d.this.f76591j.onControllerDeviceRemoved((ControllerManager.c) message.obj);
            }
        }
    }

    class b implements ControllerManager.d {
        b() {
        }

        void a(ControllerManager.c cVar) {
            if (!d.this.f76587f || !d.this.f76586e || cVar == null || cVar.b() == null) {
                return;
            }
            Object objB = cVar.b();
            if (objB instanceof BluetoothDevice) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) objB;
                String address = bluetoothDevice.getAddress();
                String name = (Build.VERSION.SDK_INT < 23 || d.this.f76583b == null || d.this.f76583b.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") != 0) ? "Unknow" : bluetoothDevice.getName();
                if (d.this.f76597p.containsKey(address)) {
                    d.this.m((e) d.this.f76597p.get(address));
                    return;
                }
                e eVar = new e(d.this.f76583b, address, name);
                eVar.E(d.this.f76584c);
                eVar.F(d.this.f76585d);
                eVar.G(d.this.f76588g);
                d.this.f76597p.put(address, eVar);
                d.this.D(eVar);
            }
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceAdded(ControllerManager.c cVar) {
            if (d.this.f76592k != null) {
                d.this.f76592k.obtainMessage(3, -1, -1, cVar).sendToTarget();
            }
            a(cVar);
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceRemoved(ControllerManager.c cVar) {
            if (d.this.f76592k != null) {
                d.this.f76592k.obtainMessage(4, -1, -1, cVar).sendToTarget();
            }
        }
    }

    public d(Context context) {
        this.f76583b = context;
    }

    private void A() {
        if (this.f76597p == null) {
            this.f76597p = new HashMap();
        }
        Context context = this.f76583b;
        if (context == null) {
            return;
        }
        if (this.f76590i == null) {
            this.f76590i = new ControllerManager(context);
            this.f76592k = new a();
            this.f76590i.c(new b());
        }
        this.f76590i.u();
    }

    private void C() {
        Map<String, e> map = this.f76597p;
        if (map == null) {
            return;
        }
        for (e eVar : map.values()) {
            if (!eVar.y()) {
                D(eVar);
            } else if (eVar.x()) {
                D(eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            m(eVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void E() {
        ControllerManager controllerManager = this.f76590i;
        if (controllerManager != null) {
            controllerManager.x();
        }
    }

    private void G() {
        Map<String, e> map = this.f76597p;
        if (map == null) {
            return;
        }
        Iterator<e> it2 = map.values().iterator();
        while (it2.hasNext()) {
            H(it2.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            eVar.n();
            eVar.K();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m(e eVar) {
        if (eVar != null && eVar.u() != null) {
            String[] strArr = {"mocute"};
            String strG = eVar.u().G();
            if (!TextUtils.isEmpty(strG)) {
                strG.toLowerCase().contains(strArr[0]);
            }
        }
        return false;
    }

    public static d r(Context context) {
        if (f76581q == null) {
            f76581q = new d(context);
        }
        return f76581q;
    }

    private PadMotionEvent t(int i10, String str, int i11, float f10, float f11) {
        try {
            return new PadMotionEvent(System.currentTimeMillis(), i10, str, i11, f10, f11);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void z(String str, int i10, int i11) {
        if (this.f76597p.containsKey(str)) {
            this.f76597p.get(str).H(i10, i11);
        }
    }

    public void B() {
        this.f76586e = true;
        A();
        C();
    }

    public void F() {
        this.f76586e = false;
        E();
        G();
    }

    @TargetApi(12)
    public boolean n(MotionEvent motionEvent) {
        int deviceId = motionEvent.getDeviceId();
        if (motionEvent.getDevice() != null) {
            String name = motionEvent.getDevice().getName();
            float axisValue = motionEvent.getAxisValue(17);
            float axisValue2 = motionEvent.getAxisValue(18);
            try {
                if (this.f76584c != null) {
                    this.f76584c.onKeyPressure(104, axisValue, new PadKeyEvent(System.currentTimeMillis(), deviceId, name, 104, motionEvent.getAction(), axisValue));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                if (this.f76584c != null) {
                    this.f76584c.onKeyPressure(105, axisValue2, new PadKeyEvent(System.currentTimeMillis(), deviceId, name, 105, motionEvent.getAction(), axisValue2));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            if ((motionEvent.getAction() & 255) == 2) {
                float axisValue3 = motionEvent.getAxisValue(0);
                float axisValue4 = motionEvent.getAxisValue(1);
                try {
                    c cVar = this.f76584c;
                    if (cVar != null) {
                        cVar.onLeftStick(axisValue3, axisValue4, t(deviceId, name, 200, axisValue3, axisValue4));
                    }
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
                float axisValue5 = motionEvent.getAxisValue(11);
                float axisValue6 = motionEvent.getAxisValue(14);
                try {
                    c cVar2 = this.f76584c;
                    if (cVar2 != null) {
                        cVar2.onRightStick(axisValue5, axisValue6, t(deviceId, name, 201, axisValue5, axisValue6));
                    }
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }
        }
        return false;
    }

    public boolean o(KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent == null) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            i10 = 1;
        } else {
            keyEvent.getAction();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = this.f76589h;
        String name = keyEvent.getDevice() != null ? keyEvent.getDevice().getName() : "";
        int keyCode = keyEvent.getKeyCode();
        PadKeyEvent padKeyEvent = new PadKeyEvent(jCurrentTimeMillis, i11, name, keyCode, i10 ^ 1, i10 != 0 ? 1.0f : 0.0f);
        c cVar = this.f76584c;
        if (cVar != null) {
            if (i10 != 0) {
                cVar.onKeyDown(keyCode, padKeyEvent);
            } else {
                cVar.onKeyUp(keyCode, padKeyEvent);
            }
        }
        return true;
    }

    public int p() {
        ControllerManager controllerManager = this.f76590i;
        if (controllerManager != null) {
            return controllerManager.e();
        }
        return 0;
    }

    public List<ControllerManager.c> q() {
        ControllerManager controllerManager = this.f76590i;
        if (controllerManager != null) {
            return controllerManager.f();
        }
        return null;
    }

    int s(MotionEvent motionEvent) {
        int i10;
        float axisValue = motionEvent.getAxisValue(15);
        float axisValue2 = motionEvent.getAxisValue(16);
        if (axisValue == -1.0f) {
            i10 = 21;
        } else {
            i10 = axisValue == 1.0f ? 22 : 0;
        }
        if (axisValue2 == -1.0f) {
            return i10 | 19;
        }
        return axisValue2 == 1.0f ? i10 | 20 : i10;
    }

    public void u() {
        this.f76584c = null;
        this.f76585d = null;
        this.f76589h = -1;
    }

    public void v(ControllerManager.d dVar) {
        this.f76591j = dVar;
    }

    public void w(c cVar, Handler handler) {
        this.f76584c = cVar;
        this.f76585d = handler;
    }

    public void x(boolean z10) {
        this.f76588g = z10;
    }

    public void y(int i10, int i11) {
        Iterator<e> it2 = this.f76597p.values().iterator();
        while (it2.hasNext()) {
            z(it2.next().q(), i10, i11);
        }
    }
}
