package com.xinzhu.overmind.client.hook;

import com.xinzhu.haunted.android.app.z;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.delegate.AppInstrumentationHook;
import com.xinzhu.overmind.client.hook.proxies.os.f;
import com.xinzhu.overmind.client.hook.proxies.os.g;
import com.xinzhu.overmind.client.hook.proxies.os.h;
import com.xinzhu.overmind.client.hook.proxies.os.i;
import com.xinzhu.overmind.client.hook.proxies.os.j;
import com.xinzhu.overmind.client.hook.proxies.os.k;
import com.xinzhu.overmind.client.hook.proxies.os.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89281b = "HookManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f89282c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Class<?>, d> f89283a = new HashMap();

    public static c c() {
        return f89282c;
    }

    void a(d dVar) {
        this.f89283a.put(dVar.getClass(), dVar);
    }

    public void b(Class<?> cls) {
        d dVar = this.f89283a.get(cls);
        if (dVar == null || !dVar.b()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("checkEnv: ");
        sb2.append(cls.getSimpleName());
        sb2.append(" is bad env");
        dVar.injectHook();
    }

    public void d() {
        f();
        if (Overmind.get().isVirtualProcess()) {
            a(new com.xinzhu.overmind.client.hook.proxies.display.a());
            a(new com.xinzhu.overmind.client.hook.proxies.libcore.a());
            a(new com.xinzhu.overmind.client.hook.proxies.accounts.a());
            a(new com.xinzhu.overmind.client.hook.proxies.am.b());
            a(new com.xinzhu.overmind.client.hook.proxies.pm.d());
            a(new com.xinzhu.overmind.client.hook.proxies.telephony.d());
            a(new com.xinzhu.overmind.client.hook.proxies.app.b());
            a(new com.xinzhu.overmind.client.hook.proxies.appos.b());
            a(new com.xinzhu.overmind.client.hook.proxies.app.d());
            a(new com.xinzhu.overmind.client.hook.proxies.app.a());
            a(new com.xinzhu.overmind.client.hook.proxies.appwidget.a());
            a(new com.xinzhu.overmind.client.hook.proxies.context.a());
            a(new com.xinzhu.overmind.client.hook.proxies.vm.a());
            a(new k());
            a(new com.xinzhu.overmind.client.hook.proxies.context.b());
            a(new com.xinzhu.overmind.client.hook.proxies.session.a());
            a(new com.xinzhu.overmind.client.hook.proxies.location.b());
            a(new com.xinzhu.overmind.client.hook.proxies.os.storage.a());
            a(new com.xinzhu.overmind.client.hook.proxies.pm.c());
            a(new com.xinzhu.overmind.client.hook.proxies.app.c());
            a(new com.xinzhu.overmind.client.hook.proxies.accessibility.a());
            a(new com.xinzhu.overmind.client.hook.proxies.audio.a());
            a(new com.xinzhu.overmind.client.hook.proxies.backup.a());
            a(new com.xinzhu.overmind.client.hook.proxies.clipboard.a());
            a(new com.xinzhu.overmind.client.hook.proxies.sms.a());
            a(new com.xinzhu.overmind.client.hook.proxies.subscription.a());
            a(new g());
            a(new com.xinzhu.overmind.client.hook.proxies.telephony.e());
            a(new com.xinzhu.overmind.client.hook.proxies.telecom.a());
            a(new com.xinzhu.overmind.client.hook.proxies.app.g());
            a(new com.xinzhu.overmind.client.hook.proxies.os.d());
            a(new com.xinzhu.overmind.client.hook.proxies.input.a());
            a(new f());
            a(new com.xinzhu.overmind.client.hook.proxies.media.a());
            a(new l());
            a(new com.xinzhu.overmind.client.hook.proxies.net.wifi.a());
            a(new com.xinzhu.overmind.client.hook.proxies.net.a());
            a(new com.xinzhu.overmind.client.hook.proxies.telephony.c());
            a(new com.xinzhu.overmind.client.hook.proxies.textservice.a());
            a(new com.xinzhu.overmind.client.hook.proxies.net.c());
            a(new com.xinzhu.overmind.client.hook.proxies.location.a());
            a(AppInstrumentationHook.h());
            if (com.xinzhu.overmind.utils.e.h()) {
                a(new com.xinzhu.overmind.client.hook.proxies.am.a());
                a(new com.xinzhu.overmind.client.hook.proxies.pm.b());
                a(new com.xinzhu.overmind.client.hook.proxies.bluetooth.a());
            }
            if (com.xinzhu.overmind.utils.e.g()) {
                a(new com.xinzhu.overmind.client.hook.proxies.permission.b());
                a(new h());
                a(new com.xinzhu.overmind.client.hook.proxies.net.d());
            }
            if (com.xinzhu.overmind.utils.e.f()) {
                a(new com.xinzhu.overmind.client.hook.proxies.am.c());
                a(new com.xinzhu.overmind.client.hook.proxies.app.f());
                a(new com.xinzhu.overmind.client.hook.proxies.role.a());
            }
            if (com.xinzhu.overmind.utils.e.z()) {
                a(new com.xinzhu.overmind.client.hook.proxies.pm.a());
                a(new i());
            }
            if (com.xinzhu.overmind.utils.e.x()) {
                a(new com.xinzhu.overmind.client.hook.proxies.view.a());
                a(new com.xinzhu.overmind.client.hook.proxies.os.c());
            }
            com.xinzhu.overmind.utils.e.e();
            if (com.xinzhu.overmind.utils.e.d()) {
                a(new com.xinzhu.overmind.client.hook.proxies.pm.e());
                a(new com.xinzhu.overmind.client.hook.proxies.os.b());
                a(new com.xinzhu.overmind.client.hook.proxies.os.e());
            }
            if (com.xinzhu.overmind.utils.e.c()) {
                a(new com.xinzhu.overmind.client.hook.proxies.net.b());
            }
            if (com.xinzhu.overmind.utils.e.b()) {
                a(new com.xinzhu.overmind.client.hook.proxies.view.b());
                a(new j());
            }
            if (com.xinzhu.overmind.utils.e.a()) {
                a(new com.xinzhu.overmind.client.hook.proxies.app.c());
            }
            if (com.xinzhu.overmind.utils.e.q()) {
                a(new com.xinzhu.overmind.client.hook.proxies.permission.a());
            }
            if (com.xinzhu.overmind.utils.e.w()) {
                if (ia.a.f91528b != null) {
                    a(new com.xinzhu.overmind.client.hook.proxies.permission.c());
                }
                if (ga.a.f91362b != null) {
                    a(new com.xinzhu.overmind.client.hook.proxies.rom.vivo.a());
                }
                if (ha.a.f91453b != null) {
                    a(new com.xinzhu.overmind.client.hook.proxies.rom.vivo.b());
                }
                if (ja.a.f92103b != null) {
                    a(new com.xinzhu.overmind.client.hook.proxies.rom.vivo.c());
                }
                if (ka.a.f92160b != null) {
                    a(new com.xinzhu.overmind.client.hook.proxies.rom.vivo.d());
                }
            }
            if (com.xinzhu.overmind.utils.e.u()) {
                a(new com.xinzhu.overmind.client.hook.proxies.clipboard.b());
            }
            if (com.xinzhu.overmind.utils.e.x() && (com.xinzhu.overmind.utils.e.p() || com.xinzhu.overmind.utils.e.r())) {
                a(new com.xinzhu.overmind.client.hook.proxies.telephony.b());
            }
        }
        e();
    }

    void e() {
        Iterator<d> it2 = this.f89283a.values().iterator();
        while (it2.hasNext()) {
            it2.next().injectHook();
        }
    }

    void f() {
        try {
            Iterator it2 = ((WeakHashMap) z.d()).keySet().iterator();
            while (it2.hasNext()) {
                new z(it2.next()).c();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
