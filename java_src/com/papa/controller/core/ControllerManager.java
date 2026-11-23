package com.papa.controller.core;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.view.InputDevice;
import androidx.core.view.InputDeviceCompat;
import com.papa.controller.component.bluetooth.BluetoothManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ControllerManager {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ControllerManager f76530i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f76531a = "ControllerManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f76532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BluetoothManager f76533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BluetoothManager.c f76534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.papa.controller.component.inputmanagercompat.a f76535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.papa.controller.component.inputmanagercompat.a.b f76536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<c> f76537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<d> f76538h;

    private class ControllerManagerException extends Exception {
        public ControllerManagerException(String str) {
            super(str);
        }
    }

    class a implements BluetoothManager.c {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.BluetoothManager.c
        public void a(BluetoothDevice bluetoothDevice) {
            ControllerManager.this.l();
        }

        @Override // com.papa.controller.component.bluetooth.BluetoothManager.c
        public void b(BluetoothDevice bluetoothDevice) {
            ControllerManager.this.p();
        }
    }

    class b implements com.papa.controller.component.inputmanagercompat.a.b {
        b() {
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceAdded(int i10) {
            ControllerManager.this.l();
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceChanged(int i10) {
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceRemoved(int i10) {
            ControllerManager.this.p();
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f76542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f76543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f76544c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Object f76545d;

        public String a() {
            return this.f76544c;
        }

        public Object b() {
            return this.f76545d;
        }

        public int c() {
            return this.f76542a;
        }

        public String d() {
            return this.f76543b;
        }

        public void e(String str) {
            this.f76544c = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            String str = this.f76543b;
            if (str == null ? cVar.f76543b == null : str.equals(cVar.f76543b)) {
                return this.f76544c.equals(cVar.f76544c);
            }
            return false;
        }

        public void f(Object obj) {
            this.f76545d = obj;
        }

        public void g(int i10) {
            this.f76542a = i10;
        }

        public void h(String str) {
            this.f76543b = str;
        }

        public int hashCode() {
            String str = this.f76543b;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f76544c.hashCode();
        }
    }

    public interface d {
        void onControllerDeviceAdded(c cVar);

        void onControllerDeviceRemoved(c cVar);
    }

    public ControllerManager(Context context) {
        this.f76532b = context;
        try {
            i();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private Collection<c> g(List<c> list, List<c> list2) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (c cVar : list) {
            map.put(cVar.a(), cVar);
        }
        for (c cVar2 : list2) {
            map2.put(cVar2.a(), cVar2);
        }
        Collection<c> collectionValues = map.values();
        collectionValues.removeAll(map2.values());
        return collectionValues;
    }

    public static ControllerManager h(Context context) {
        if (f76530i == null) {
            f76530i = new ControllerManager(context);
        }
        return f76530i;
    }

    private void i() throws Exception {
        if (this.f76532b == null) {
            throw new ControllerManagerException("Context is required!");
        }
        if (this.f76537g == null) {
            this.f76537g = new ArrayList();
        }
    }

    public static Object j(Object obj, String str, Class[] clsArr, Object... objArr) {
        try {
            return obj.getClass().getDeclaredMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private boolean k(int i10) {
        return (i10 & 1025) == 1025 || (i10 & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        try {
            try {
                for (c cVar : g(d(), this.f76537g)) {
                    this.f76537g.add(cVar);
                    m(cVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void m(c cVar) {
        List<d> list = this.f76538h;
        if (list != null && list.size() != 0) {
            for (d dVar : this.f76538h) {
                if (dVar != null) {
                    dVar.onControllerDeviceAdded(cVar);
                }
            }
        }
    }

    private synchronized void n(c cVar) {
        List<d> list = this.f76538h;
        if (list != null && list.size() != 0) {
            for (d dVar : this.f76538h) {
                if (dVar != null) {
                    dVar.onControllerDeviceRemoved(cVar);
                }
            }
        }
    }

    private synchronized void o() {
        List<c> listD = d();
        try {
            for (c cVar : g(this.f76537g, listD)) {
                this.f76537g.remove(cVar);
                n(cVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            for (c cVar2 : g(listD, this.f76537g)) {
                this.f76537g.add(cVar2);
                m(cVar2);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        try {
            try {
                for (c cVar : g(this.f76537g, d())) {
                    this.f76537g.remove(cVar);
                    n(cVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void s() {
        Context context = this.f76532b;
        if (context == null) {
            return;
        }
        BluetoothManager bluetoothManager = new BluetoothManager(context);
        this.f76533c = bluetoothManager;
        try {
            if (bluetoothManager.p()) {
                a aVar = new a();
                this.f76534d = aVar;
                this.f76533c.u(aVar);
                this.f76533c.x();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void t() {
        try {
            if (this.f76535e == null) {
                this.f76535e = com.papa.controller.component.inputmanagercompat.a.C0992a.a(this.f76532b);
            }
            if (this.f76535e != null) {
                b bVar = new b();
                this.f76536f = bVar;
                this.f76535e.a(bVar, new Handler());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void v() {
        BluetoothManager bluetoothManager = this.f76533c;
        if (bluetoothManager != null) {
            bluetoothManager.y();
        }
    }

    private void w() {
        com.papa.controller.component.inputmanagercompat.a aVar = this.f76535e;
        if (aVar != null) {
            aVar.c(this.f76536f);
        }
    }

    public void c(d dVar) {
        if (this.f76538h == null) {
            this.f76538h = new ArrayList();
        }
        this.f76538h.add(dVar);
    }

    public List<c> d() {
        Iterator it2;
        boolean z10;
        List<BluetoothDevice> listK;
        ArrayList arrayList = new ArrayList();
        if (this.f76537g == null) {
            this.f76537g = new ArrayList();
        }
        ArrayList arrayList2 = new ArrayList();
        HashMap map = new HashMap();
        ArrayList<InputDevice> arrayList3 = new ArrayList();
        HashMap map2 = new HashMap();
        com.papa.controller.component.inputmanagercompat.a aVar = this.f76535e;
        if (aVar != null) {
            for (int i10 : aVar.d()) {
                InputDevice inputDeviceB = this.f76535e.b(i10);
                if (inputDeviceB != null) {
                    String name = inputDeviceB.getName();
                    int sources = inputDeviceB.getSources();
                    try {
                        if (((Boolean) j(inputDeviceB, "isExternal", null, new Object[0])).booleanValue()) {
                            if (k(sources)) {
                                arrayList3.add(inputDeviceB);
                                map2.put(name, inputDeviceB);
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        try {
            BluetoothManager bluetoothManager = this.f76533c;
            if (bluetoothManager != null && bluetoothManager.p() && (listK = this.f76533c.k()) != null && listK.size() != 0) {
                for (BluetoothDevice bluetoothDevice : listK) {
                    if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1280 && (Build.VERSION.SDK_INT < 30 || map2.containsKey(bluetoothDevice.getName()))) {
                        arrayList2.add(bluetoothDevice);
                        map.put(bluetoothDevice.getName(), bluetoothDevice);
                        String name2 = bluetoothDevice.getName();
                        String address = bluetoothDevice.getAddress();
                        c cVar = new c();
                        cVar.f(bluetoothDevice);
                        cVar.h(name2);
                        cVar.e(address);
                        arrayList.add(cVar);
                    }
                }
            }
            while (true) {
                if (!it2.hasNext()) {
                    z10 = true;
                    break;
                }
                if (!map2.containsKey(((BluetoothDevice) it2.next()).getName())) {
                    z10 = false;
                    break;
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        int size = arrayList3.size();
        int size2 = arrayList2.size();
        it2 = arrayList2.iterator();
        ArrayList arrayList4 = new ArrayList();
        if (size > size2) {
            if (z10 || size2 == 0) {
                for (InputDevice inputDevice : arrayList3) {
                    if (!map.containsKey(inputDevice.getName())) {
                        arrayList4.add(inputDevice);
                        int size3 = arrayList4.size();
                        String name3 = inputDevice.getName();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("OTG");
                        sb2.append(size3 == 0 ? "" : size3 + "");
                        String string = sb2.toString();
                        c cVar2 = new c();
                        cVar2.f(inputDevice);
                        cVar2.h(name3);
                        cVar2.e(string);
                        arrayList.add(cVar2);
                    }
                }
            } else {
                int i11 = size - size2;
                for (int i12 = 0; i12 < i11; i12++) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("OTG");
                    sb3.append(i12 == 0 ? "" : i12 + "");
                    String string2 = sb3.toString();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("OTG");
                    sb4.append(i12 == 0 ? "" : i12 + "");
                    String string3 = sb4.toString();
                    c cVar3 = new c();
                    cVar3.h(string2);
                    cVar3.e(string3);
                    arrayList.add(cVar3);
                }
            }
        }
        return arrayList;
    }

    public int e() {
        List<c> list = this.f76537g;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<c> f() {
        return this.f76537g;
    }

    public void q() {
        List<d> list = this.f76538h;
        if (list == null) {
            return;
        }
        list.clear();
    }

    public void r(d dVar) {
        List<d> list = this.f76538h;
        if (list == null) {
            return;
        }
        list.remove(dVar);
    }

    public void u() {
        if (this.f76532b == null) {
            return;
        }
        s();
        t();
    }

    public void x() {
        v();
        w();
    }
}
