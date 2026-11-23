package com.join.mgps.socket.fight.arena;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.SocketError;
import com.join.mgps.Util.AccountUtil_;

/* JADX INFO: loaded from: classes3.dex */
public final class ArenaService_ extends ArenaService {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final IntentFilter f73057t = new IntentFilter();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final BroadcastReceiver f73058u = new BroadcastReceiver() { // from class: com.join.mgps.socket.fight.arena.ArenaService_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ArenaService_.this.x();
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f73060b;

        a(final String val$msg) {
            this.f73060b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaService_.super.a(this.f73060b);
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SocketError f73062b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final SocketError val$socketError) {
            super(id2, delay, serial);
            this.f73062b = val$socketError;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.w(this.f73062b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaRequest f73064b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final ArenaRequest val$request) {
            super(id2, delay, serial);
            this.f73064b = val$request;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.C(this.f73064b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f73066b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final Object val$res) {
            super(id2, delay, serial);
            this.f73066b = val$res;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.r(this.f73066b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaRequest f73068b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final ArenaRequest val$request) {
            super(id2, delay, serial);
            this.f73068b = val$request;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.k(this.f73068b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f73070b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$roomId) {
            super(id2, delay, serial);
            this.f73070b = val$roomId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.t(this.f73070b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.i();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaService_.super.x();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.g<i> {
        public i(Context context) {
            super(context, (Class<?>) ArenaService_.class);
        }
    }

    private void P() {
        this.f73046i = AccountUtil_.getInstance_(this);
        this.f73057t.addAction(p5.a.B);
    }

    public static i Q(Context context) {
        return new i(context);
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void C(final ArenaRequest request) {
        org.androidannotations.api.a.l(new c("", 0L, "", request));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void a(final String msg) {
        org.androidannotations.api.b.e("", new a(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void i() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void k(final ArenaRequest request) {
        org.androidannotations.api.a.l(new e("", 0L, "", request));
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService, android.app.Service
    public void onCreate() {
        P();
        super.onCreate();
        registerReceiver(this.f73058u, this.f73057t);
    }

    @Override // com.join.mgps.socket.fight.arena.ArenaService, android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f73058u);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void r(final Object res) {
        org.androidannotations.api.a.l(new d("", 0L, "", res));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void t(final int roomId) {
        org.androidannotations.api.a.l(new f("", 0L, "", roomId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void w(final SocketError socketError) {
        org.androidannotations.api.a.l(new b("", 0L, "", socketError));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.socket.fight.arena.ArenaService
    public void x() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }
}
