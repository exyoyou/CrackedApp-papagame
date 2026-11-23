package com.papa.controller.component.bluetooth.spp;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f76446h = "Bluetooth Service";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f76447i = "Bluetooth Secure";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final UUID f76448j = UUID.fromString("fa87c0d0-afac-11de-8a39-0800200c9a66");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final UUID f76449k = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f76451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f76452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C0991b f76453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f76454e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76456g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BluetoothAdapter f76450a = BluetoothAdapter.getDefaultAdapter();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76455f = 0;

    private class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private BluetoothServerSocket f76457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f76458c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f76459d = true;

        public a(boolean z10) {
            BluetoothServerSocket bluetoothServerSocketListenUsingRfcommWithServiceRecord;
            try {
                bluetoothServerSocketListenUsingRfcommWithServiceRecord = z10 ? b.this.f76450a.listenUsingRfcommWithServiceRecord(b.f76447i, b.f76448j) : b.this.f76450a.listenUsingRfcommWithServiceRecord(b.f76447i, b.f76449k);
            } catch (IOException unused) {
                bluetoothServerSocketListenUsingRfcommWithServiceRecord = null;
            }
            this.f76457b = bluetoothServerSocketListenUsingRfcommWithServiceRecord;
        }

        public void a() {
            try {
                this.f76457b.close();
                this.f76457b = null;
            } catch (IOException unused) {
            }
        }

        public void b() {
            this.f76459d = false;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("AcceptThread" + this.f76458c);
            BluetoothSocket bluetoothSocketAccept = null;
            while (b.this.f76455f != 3 && this.f76459d) {
                try {
                    BluetoothServerSocket bluetoothServerSocket = this.f76457b;
                    if (bluetoothServerSocket != null) {
                        bluetoothSocketAccept = bluetoothServerSocket.accept();
                    }
                    if (bluetoothSocketAccept != null) {
                        synchronized (b.this) {
                            int i10 = b.this.f76455f;
                            if (i10 == 0) {
                                try {
                                    bluetoothSocketAccept.close();
                                } catch (IOException unused) {
                                }
                            } else if (i10 == 1 || i10 == 2) {
                                b.this.k(bluetoothSocketAccept, bluetoothSocketAccept.getRemoteDevice(), this.f76458c);
                            } else if (i10 == 3) {
                                bluetoothSocketAccept.close();
                            }
                        }
                    }
                } catch (IOException unused2) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.papa.controller.component.bluetooth.spp.b$b, reason: collision with other inner class name */
    private class C0991b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final BluetoothSocket f76461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BluetoothDevice f76462c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f76463d;

        public C0991b(BluetoothDevice bluetoothDevice) {
            BluetoothSocket bluetoothSocketCreateRfcommSocketToServiceRecord;
            this.f76462c = bluetoothDevice;
            try {
                bluetoothSocketCreateRfcommSocketToServiceRecord = b.this.f76456g ? bluetoothDevice.createRfcommSocketToServiceRecord(b.f76448j) : bluetoothDevice.createRfcommSocketToServiceRecord(b.f76449k);
            } catch (IOException unused) {
                bluetoothSocketCreateRfcommSocketToServiceRecord = null;
            }
            this.f76461b = bluetoothSocketCreateRfcommSocketToServiceRecord;
        }

        public void a() {
            try {
                this.f76461b.close();
            } catch (IOException unused) {
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.this.f76450a.cancelDiscovery();
            try {
                try {
                    this.f76461b.connect();
                    synchronized (b.this) {
                        b.this.f76453d = null;
                    }
                    b.this.k(this.f76461b, this.f76462c, this.f76463d);
                } catch (IOException unused) {
                    this.f76461b.close();
                    b.this.l();
                }
            } catch (IOException unused2) {
                b.this.l();
            }
        }
    }

    private class c extends d {
        public c(BluetoothSocket bluetoothSocket, String str) {
            super(bluetoothSocket, str);
        }

        boolean c(ArrayList<Integer> arrayList, int i10) {
            if (arrayList == null || arrayList.size() <= 3 || arrayList.size() + 1 != arrayList.get(3).intValue()) {
                return false;
            }
            arrayList.add(Integer.valueOf(i10));
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x004b A[Catch: IOException -> 0x0077, LOOP:2: B:20:0x0045->B:22:0x004b, LOOP_END, TryCatch #0 {IOException -> 0x0077, blocks: (B:3:0x0005, B:4:0x0013, B:6:0x0016, B:8:0x001e, B:16:0x0035, B:17:0x0039, B:19:0x003f, B:20:0x0045, B:22:0x004b, B:23:0x005a, B:24:0x006f, B:11:0x002b), top: B:28:0x0005 }] */
        /* JADX WARN: Code duplicated, block: B:30:0x0039 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:31:0x0035 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:32:0x006f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:33:0x003f A[SYNTHETIC] */
        @Override // com.papa.controller.component.bluetooth.spp.b.d, java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z10;
            byte[] bArr;
            ArrayList<Integer> arrayList = new ArrayList<>();
            while (true) {
                try {
                    int i10 = this.f76467c.read();
                    byte[] bytes = "GB".getBytes();
                    int i11 = 0;
                    while (true) {
                        if (i11 < bytes.length) {
                            byte b10 = bytes[i11];
                            if (arrayList.size() <= i11) {
                                if (i10 != b10) {
                                }
                                if (!z10) {
                                    arrayList.clear();
                                } else if (c(arrayList, i10)) {
                                    int size = arrayList.size();
                                    bArr = new byte[size];
                                    for (int i12 = 0; i12 < arrayList.size(); i12++) {
                                        bArr[i12] = arrayList.get(i12).byteValue();
                                    }
                                    b.this.f76451b.obtainMessage(2, size, -1, bArr).sendToTarget();
                                    arrayList = new ArrayList<>();
                                } else {
                                    arrayList.add(Integer.valueOf(i10));
                                }
                            } else if (arrayList.get(i11).intValue() == b10) {
                                i11++;
                            }
                            z10 = false;
                            if (!z10) {
                                arrayList.clear();
                            } else if (c(arrayList, i10)) {
                                int size2 = arrayList.size();
                                bArr = new byte[size2];
                                while (i12 < arrayList.size()) {
                                    bArr[i12] = arrayList.get(i12).byteValue();
                                }
                                b.this.f76451b.obtainMessage(2, size2, -1, bArr).sendToTarget();
                                arrayList = new ArrayList<>();
                            } else {
                                arrayList.add(Integer.valueOf(i10));
                            }
                        }
                        z10 = true;
                        if (!z10) {
                            arrayList.clear();
                        } else if (c(arrayList, i10)) {
                            int size3 = arrayList.size();
                            bArr = new byte[size3];
                            while (i12 < arrayList.size()) {
                                bArr[i12] = arrayList.get(i12).byteValue();
                            }
                            b.this.f76451b.obtainMessage(2, size3, -1, bArr).sendToTarget();
                            arrayList = new ArrayList<>();
                        } else {
                            arrayList.add(Integer.valueOf(i10));
                        }
                    }
                } catch (IOException unused) {
                    b.this.m();
                    b bVar = b.this;
                    bVar.p(bVar.f76456g);
                    return;
                }
            }
        }
    }

    private class d extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final BluetoothSocket f76466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected final InputStream f76467c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final OutputStream f76468d;

        public d(BluetoothSocket bluetoothSocket, String str) {
            InputStream inputStream;
            this.f76466b = bluetoothSocket;
            OutputStream outputStream = null;
            try {
                inputStream = bluetoothSocket.getInputStream();
                try {
                    outputStream = bluetoothSocket.getOutputStream();
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                inputStream = null;
            }
            this.f76467c = inputStream;
            this.f76468d = outputStream;
        }

        public void a() {
            try {
                this.f76466b.close();
            } catch (IOException unused) {
            }
        }

        public void b(byte[] bArr) {
            try {
                this.f76468d.write(bArr);
                b.this.f76451b.obtainMessage(3, -1, -1, bArr).sendToTarget();
            } catch (IOException unused) {
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            while (true) {
                try {
                    int i10 = this.f76467c.read();
                    if (i10 != 10) {
                        if (i10 == 13) {
                            int size = arrayList.size();
                            byte[] bArr = new byte[size];
                            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                                bArr[i11] = ((Integer) arrayList.get(i11)).byteValue();
                            }
                            b.this.f76451b.obtainMessage(2, size, -1, bArr).sendToTarget();
                            arrayList = new ArrayList();
                        } else {
                            arrayList.add(Integer.valueOf(i10));
                        }
                    }
                } catch (IOException unused) {
                    b.this.m();
                    b bVar = b.this;
                    bVar.p(bVar.f76456g);
                    return;
                }
            }
        }
    }

    public b(Context context, Handler handler) {
        this.f76451b = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        p(this.f76456g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        p(this.f76456g);
    }

    private synchronized void o(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setState() ");
        sb2.append(this.f76455f);
        sb2.append(" -> ");
        sb2.append(i10);
        this.f76455f = i10;
        this.f76451b.obtainMessage(1, i10, -1).sendToTarget();
    }

    public synchronized void j(BluetoothDevice bluetoothDevice) {
        C0991b c0991b;
        if (this.f76455f == 2 && (c0991b = this.f76453d) != null) {
            c0991b.a();
            this.f76453d = null;
        }
        d dVar = this.f76454e;
        if (dVar != null) {
            dVar.a();
            this.f76454e = null;
        }
        C0991b c0991b2 = new C0991b(bluetoothDevice);
        this.f76453d = c0991b2;
        c0991b2.start();
        o(2);
    }

    public synchronized void k(BluetoothSocket bluetoothSocket, BluetoothDevice bluetoothDevice, String str) {
        C0991b c0991b = this.f76453d;
        if (c0991b != null) {
            c0991b.a();
            this.f76453d = null;
        }
        d dVar = this.f76454e;
        if (dVar != null) {
            dVar.a();
            this.f76454e = null;
        }
        a aVar = this.f76452c;
        if (aVar != null) {
            aVar.a();
            this.f76452c = null;
        }
        c cVar = new c(bluetoothSocket, str);
        this.f76454e = cVar;
        cVar.start();
        Message messageObtainMessage = this.f76451b.obtainMessage(4);
        Bundle bundle = new Bundle();
        bundle.putString("device_name", bluetoothDevice.getName());
        bundle.putString(com.papa.controller.component.bluetooth.spp.c.f76483n, bluetoothDevice.getAddress());
        messageObtainMessage.setData(bundle);
        this.f76451b.sendMessage(messageObtainMessage);
        o(3);
    }

    public synchronized int n() {
        return this.f76455f;
    }

    public synchronized void p(boolean z10) {
        C0991b c0991b = this.f76453d;
        if (c0991b != null) {
            c0991b.a();
            this.f76453d = null;
        }
        d dVar = this.f76454e;
        if (dVar != null) {
            dVar.a();
            this.f76454e = null;
        }
        o(1);
        if (this.f76452c == null) {
            a aVar = new a(z10);
            this.f76452c = aVar;
            aVar.start();
            this.f76456g = z10;
        }
    }

    public synchronized void q() {
        C0991b c0991b = this.f76453d;
        if (c0991b != null) {
            c0991b.a();
            this.f76453d = null;
        }
        d dVar = this.f76454e;
        if (dVar != null) {
            dVar.a();
            this.f76454e = null;
        }
        a aVar = this.f76452c;
        if (aVar != null) {
            aVar.a();
            this.f76452c.b();
            this.f76452c = null;
        }
        o(0);
    }

    public void r(byte[] bArr) {
        synchronized (this) {
            if (this.f76455f != 3) {
                return;
            }
            this.f76454e.b(bArr);
        }
    }
}
