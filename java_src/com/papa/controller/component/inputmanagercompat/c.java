package com.papa.controller.component.inputmanagercompat;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.MotionEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.papa.controller.component.inputmanagercompat.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f76491d = "InputManagerV9";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f76492e = 101;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f76493f = 3000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f76494g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f76495h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f76496i = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray<long[]> f76497a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.papa.controller.component.inputmanagercompat.a.b, Handler> f76498b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f76499c = new b(this);

    private static class a implements Runnable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Queue<a> f76500e = new ArrayDeque();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f76501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f76502c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.papa.controller.component.inputmanagercompat.a.b f76503d;

        private a() {
        }

        static a a(int i10, int i11, com.papa.controller.component.inputmanagercompat.a.b bVar) {
            a aVarPoll = f76500e.poll();
            if (aVarPoll == null) {
                aVarPoll = new a();
            }
            aVarPoll.f76501b = i10;
            aVarPoll.f76502c = i11;
            aVarPoll.f76503d = bVar;
            return aVarPoll;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = this.f76501b;
            if (i10 == 0) {
                this.f76503d.onInputDeviceAdded(this.f76502c);
            } else if (i10 == 1) {
                this.f76503d.onInputDeviceChanged(this.f76502c);
            } else if (i10 == 2) {
                this.f76503d.onInputDeviceRemoved(this.f76502c);
            }
            f76500e.offer(this);
        }
    }

    private static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<c> f76504a;

        b(c cVar) {
            this.f76504a = new WeakReference<>(cVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c cVar;
            super.handleMessage(message);
            if (message.what == 101 && (cVar = this.f76504a.get()) != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int size = cVar.f76497a.size();
                for (int i10 = 0; i10 < size; i10++) {
                    long[] jArr = (long[]) cVar.f76497a.valueAt(i10);
                    if (jArr != null && jElapsedRealtime - jArr[0] > 3000) {
                        int iKeyAt = cVar.f76497a.keyAt(i10);
                        if (InputDevice.getDevice(iKeyAt) == null) {
                            cVar.g(2, iKeyAt);
                            cVar.f76497a.remove(iKeyAt);
                        } else {
                            jArr[0] = jElapsedRealtime;
                        }
                    }
                }
                sendEmptyMessageDelayed(101, 3000L);
            }
        }
    }

    public c() {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i10, int i11) {
        if (this.f76498b.isEmpty()) {
            return;
        }
        for (com.papa.controller.component.inputmanagercompat.a.b bVar : this.f76498b.keySet()) {
            this.f76498b.get(bVar).post(a.a(i10, i11, bVar));
        }
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void a(com.papa.controller.component.inputmanagercompat.a.b bVar, Handler handler) {
        this.f76498b.remove(bVar);
        if (handler == null) {
            handler = this.f76499c;
        }
        this.f76498b.put(bVar, handler);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public InputDevice b(int i10) {
        return InputDevice.getDevice(i10);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void c(com.papa.controller.component.inputmanagercompat.a.b bVar) {
        this.f76498b.remove(bVar);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public int[] d() {
        int[] deviceIds = InputDevice.getDeviceIds();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 : deviceIds) {
            if (this.f76497a.get(i10) == null) {
                this.f76497a.put(i10, new long[]{jElapsedRealtime});
            }
        }
        return deviceIds;
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onGenericMotionEvent(MotionEvent motionEvent) {
        int deviceId = motionEvent.getDeviceId();
        long[] jArr = this.f76497a.get(deviceId);
        if (jArr == null) {
            g(0, deviceId);
            jArr = new long[1];
            this.f76497a.put(deviceId, jArr);
        }
        jArr[0] = SystemClock.elapsedRealtime();
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onPause() {
        this.f76499c.removeMessages(101);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onResume() {
        this.f76499c.sendEmptyMessage(101);
    }
}
