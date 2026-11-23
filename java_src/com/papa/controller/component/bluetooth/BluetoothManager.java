package com.papa.controller.component.bluetooth;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothManager {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static BluetoothManager f76407k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f76408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BluetoothAdapter f76409b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f76413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, BluetoothDevice> f76414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f76415h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76410c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BluetoothProfile f76411d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76412e = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private BluetoothProfile.ServiceListener f76416i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BroadcastReceiver f76417j = new BroadcastReceiver() { // from class: com.papa.controller.component.bluetooth.BluetoothManager.3

        /* JADX INFO: renamed from: com.papa.controller.component.bluetooth.BluetoothManager$3$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BluetoothManager.this.s();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BluetoothManager.this.r("btReceiver-onReceive");
            String action = intent.getAction();
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                if (BluetoothManager.this.f76408a == null || !BluetoothManager.this.p() || !BluetoothManager.this.f76409b.isEnabled() || BluetoothManager.this.q()) {
                    return;
                }
                BluetoothManager.this.x();
                BluetoothManager.this.s();
                return;
            }
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_STARTED") || action.equals("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
                return;
            }
            if (action.equals("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED") || action.equals("android.bluetooth.device.action.ACL_CONNECTED") || action.equals("android.bluetooth.device.action.ACL_DISCONNECTED") || action.equals("android.bluetooth.device.action.BOND_STATE_CHANGED")) {
                if (BluetoothManager.this.f76415h != null) {
                    BluetoothManager.this.f76415h.postDelayed(new a(), 500L);
                    return;
                } else {
                    BluetoothManager.w(500);
                    BluetoothManager.this.s();
                    return;
                }
            }
            if (action.equals("android.bluetooth.device.action.NAME_CHANGED") || action.equals("android.bluetooth.device.action.CLASS_CHANGED") || action.equals("android.bluetooth.device.action.FOUND")) {
            }
        }
    };

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            super.handleMessage(message);
            if (BluetoothManager.this.f76413f == null || (obj = message.obj) == null) {
                return;
            }
            BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
            int i10 = message.what;
            if (i10 == 0) {
                BluetoothManager.this.f76413f.b(bluetoothDevice);
                return;
            }
            if (i10 == 1) {
                BluetoothManager.this.f76413f.a(bluetoothDevice);
                return;
            }
            if (i10 == 2) {
                String address = bluetoothDevice.getAddress();
                if (BluetoothManager.this.f76414g.containsKey(address)) {
                    BluetoothManager.this.f76414g.remove(address);
                    BluetoothManager.this.v(0, bluetoothDevice);
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
            String address2 = bluetoothDevice.getAddress();
            if (BluetoothManager.this.f76414g.containsKey(address2)) {
                return;
            }
            BluetoothManager.this.f76414g.put(address2, bluetoothDevice);
            BluetoothManager.this.v(1, bluetoothDevice);
        }
    }

    class b implements BluetoothProfile.ServiceListener {
        b() {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i10, BluetoothProfile bluetoothProfile) {
            BluetoothManager.this.r("onServiceConnected");
            BluetoothManager.this.f76411d = bluetoothProfile;
            BluetoothManager.this.s();
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i10) {
            BluetoothManager.this.r("onServiceDisconnected");
            BluetoothManager.this.f76411d = null;
        }
    }

    public interface c {
        void a(BluetoothDevice bluetoothDevice);

        void b(BluetoothDevice bluetoothDevice);
    }

    public BluetoothManager(Context context) {
        this.f76409b = null;
        this.f76415h = null;
        this.f76408a = context;
        this.f76409b = BluetoothAdapter.getDefaultAdapter();
        this.f76415h = new a();
    }

    private void j() {
        r("closeProfileProxy");
        try {
            if (p() && q()) {
                this.f76409b.closeProfileProxy(this.f76410c, this.f76411d);
                this.f76411d = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private Collection<BluetoothDevice> l(Map<String, BluetoothDevice> map, Map<String, BluetoothDevice> map2) {
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        map3.putAll(map);
        map4.putAll(map2);
        Collection<BluetoothDevice> collectionValues = map3.values();
        collectionValues.removeAll(map4.values());
        return collectionValues;
    }

    @TargetApi(11)
    private int m() {
        for (Field field : BluetoothProfile.class.getFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers) && Modifier.isFinal(modifiers)) {
                try {
                    if (field.getName().equals("INPUT_DEVICE")) {
                        return field.getInt(null);
                    }
                    if (field.getName().equals("HID_HOST")) {
                        return field.getInt(null);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return 4;
    }

    public static BluetoothManager n(Context context) {
        if (f76407k == null) {
            f76407k = new BluetoothManager(context);
        }
        return f76407k;
    }

    private void o() {
        try {
            if (this.f76408a == null) {
                return;
            }
            if (this.f76410c == 0) {
                this.f76410c = m();
            }
            if (!p() || q()) {
                return;
            }
            this.f76409b.getProfileProxy(this.f76408a, this.f76416i, this.f76410c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return this.f76411d != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str) {
    }

    private void t() {
        r("Registering BluetoothReceiver...");
        try {
            if (this.f76412e) {
                z();
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.CLASS_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.FOUND");
            intentFilter.addAction("android.bluetooth.device.action.NAME_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
            intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
            intentFilter.addAction("android.bluetooth.adapter.action.LOCAL_NAME_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
            intentFilter.addAction("android.bluetooth.adapter.action.REQUEST_ENABLE");
            intentFilter.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            if (Build.VERSION.SDK_INT >= 26) {
                this.f76408a.registerReceiver(this.f76417j, intentFilter, 2);
            } else {
                this.f76408a.registerReceiver(this.f76417j, intentFilter);
            }
            this.f76412e = true;
        } catch (Exception e10) {
            r("Registering BluetoothReceiver failed.");
            e10.printStackTrace();
        }
        r("Registering BluetoothReceiver finished.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i10, BluetoothDevice bluetoothDevice) {
        Handler handler = this.f76415h;
        if (handler == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i10;
        messageObtainMessage.obj = bluetoothDevice;
        messageObtainMessage.sendToTarget();
    }

    public static void w(int i10) {
        try {
            Thread.sleep(i10);
        } catch (InterruptedException unused) {
        }
    }

    private void z() {
        if (this.f76408a == null) {
            return;
        }
        r("Unregistering BluetoothReceiver...");
        try {
            if (this.f76412e) {
                this.f76408a.unregisterReceiver(this.f76417j);
                this.f76412e = false;
            }
        } catch (Exception e10) {
            r("Unregistering BluetoothReceiver failed.");
            e10.printStackTrace();
        }
        r("Unregistering BluetoothReceiver finished.");
    }

    public List<BluetoothDevice> k() {
        if (Build.VERSION.SDK_INT < 30) {
            try {
                BluetoothProfile bluetoothProfile = this.f76411d;
                if (bluetoothProfile != null) {
                    return bluetoothProfile.getConnectedDevices();
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        ArrayList arrayList = new ArrayList();
        try {
            Context context = this.f76408a;
            if (context != null && context.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") == 0) {
                arrayList.addAll(new ArrayList(this.f76409b.getBondedDevices()));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return new ArrayList(arrayList);
    }

    public boolean p() {
        Context context;
        try {
            if (Build.VERSION.SDK_INT < 23 || (context = this.f76408a) == null || context.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") != 0) {
                return true;
            }
            BluetoothAdapter bluetoothAdapter = this.f76409b;
            if (bluetoothAdapter != null && bluetoothAdapter.getAddress() != null) {
                return true;
            }
            r("Bluetooth is not available.");
            return false;
        } catch (Exception unused) {
            r("Bluetooth is not available. Cannot get bluetooth address.");
            return false;
        }
    }

    synchronized void s() {
        if (q()) {
            if (this.f76414g == null) {
                this.f76414g = new HashMap();
            }
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map.putAll(this.f76414g);
            List<BluetoothDevice> listK = k();
            for (int i10 = 0; listK != null && i10 < listK.size(); i10++) {
                BluetoothDevice bluetoothDevice = listK.get(i10);
                map2.put(bluetoothDevice.getAddress(), bluetoothDevice);
            }
            Iterator<BluetoothDevice> it2 = l(map, map2).iterator();
            while (it2.hasNext()) {
                this.f76415h.obtainMessage(2, -1, -1, it2.next()).sendToTarget();
            }
            Iterator<BluetoothDevice> it3 = l(map2, map).iterator();
            while (it3.hasNext()) {
                this.f76415h.obtainMessage(3, -1, -1, it3.next()).sendToTarget();
            }
        }
    }

    public void u(c cVar) {
        this.f76413f = cVar;
        s();
    }

    public void x() {
        r("BluetoothManager starting ...");
        if (!p()) {
            r("BluetoothManager start failed.");
            return;
        }
        t();
        try {
            if (q()) {
                j();
            }
            o();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        r("BluetoothManager start finished.");
    }

    public void y() {
        try {
            j();
            z();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
