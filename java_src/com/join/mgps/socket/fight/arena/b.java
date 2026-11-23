package com.join.mgps.socket.fight.arena;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import app.mgsim.arena.ArenaRequest;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f73174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArenaService_ f73175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterfaceC0749b f73176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f73177d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ServiceConnection f73178e = new a();

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (!(service instanceof ArenaService.b)) {
                b.this.f73177d = false;
                b.this.f73175b = null;
                return;
            }
            b.this.f73177d = true;
            b.this.f73175b = (ArenaService_) ((ArenaService.b) service).getService();
            if (b.this.f73176c != null) {
                b.this.f73176c.c();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            b.this.f73177d = false;
            if (b.this.f73176c != null) {
                b.this.f73176c.b();
            }
            b.this.f73175b = null;
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.socket.fight.arena.b$b, reason: collision with other inner class name */
    public interface InterfaceC0749b {
        void a(boolean isConnected);

        void b();

        void c();
    }

    public static class c implements InterfaceC0749b {
        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void a(boolean isConnected) {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
        }
    }

    public b(Context activity, InterfaceC0749b callback) {
        this.f73174a = activity;
        this.f73176c = callback;
    }

    public void bindService() {
        try {
            if (this.f73177d || this.f73174a == null) {
                return;
            }
            Intent intent = new Intent(this.f73174a, (Class<?>) ArenaService_.class);
            this.f73174a.bindService(intent, this.f73178e, 1);
            try {
                this.f73174a.startService(intent);
            } catch (IllegalStateException e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public ArenaService_ d() {
        return this.f73175b;
    }

    public boolean e() {
        return this.f73175b != null;
    }

    public void f(ArenaRequest request) {
        if (e()) {
            if (d() != null) {
                d().C(request);
            }
        } else {
            this.f73177d = false;
            InterfaceC0749b interfaceC0749b = this.f73176c;
            if (interfaceC0749b != null) {
                interfaceC0749b.b();
            }
            this.f73175b = null;
        }
    }

    public void g() {
        try {
            if (d() == null || !this.f73177d) {
                return;
            }
            this.f73174a.unbindService(this.f73178e);
            this.f73177d = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h() {
    }

    public void stopService() {
        this.f73174a.stopService(new Intent(this.f73174a, (Class<?>) ArenaService_.class));
    }
}
