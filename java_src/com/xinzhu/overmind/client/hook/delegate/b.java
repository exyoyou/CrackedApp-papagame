package com.xinzhu.overmind.client.hook.delegate;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import android.util.ArrayMap;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.haunted.android.app.n;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import t8.f;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89310b = "ContentProviderDelegate";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Set<String> f89311c = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IInterface f89312a;

    private static void a(Object obj) {
        if (!e.x()) {
            new i9.a.c(obj).e(null);
            return;
        }
        Object objD = new i9.a.c(obj).d();
        if (objD != null) {
            new i9.a.C1173a(objD).c(null);
        }
    }

    public static void b() {
        Object objB;
        Object objB2 = i9.a.e.b();
        if (objB2 != null) {
            a(objB2);
        }
        Object objB3 = i9.a.d.b();
        if (objB3 != null) {
            a(objB3);
        }
        if (i9.a.b.f91506a == null || (objB = i9.a.b.b()) == null) {
            return;
        }
        a(objB);
    }

    public static IInterface c(IInterface iInterface, String str) {
        str.hashCode();
        if (str.equals("downloads")) {
            return new com.xinzhu.overmind.client.hook.proxies.context.providers.b().a(iInterface, Overmind.getHostPkg());
        }
        return !str.equals("settings") ? new com.xinzhu.overmind.client.hook.proxies.context.providers.a().a(iInterface, Overmind.getHostPkg()) : new com.xinzhu.overmind.client.hook.proxies.context.providers.c().a(iInterface, Overmind.getHostPkg());
    }

    public static void d() {
        b();
        Overmind.getContext().getContentResolver().call(Uri.parse("content://settings"), "GET_global", "render_shadows_in_compositor", (Bundle) null);
        Iterator it2 = ((ArrayMap) new g(Overmind.mainThread()).Z()).values().iterator();
        while (it2.hasNext()) {
            g.e eVar = new g.e(it2.next());
            String[] strArrC = eVar.c();
            if (strArrC != null && strArrC.length > 0) {
                String str = strArrC[0];
                if (!f89311c.contains(str)) {
                    f89311c.add(str);
                    eVar.f(c(eVar.d(), str));
                    eVar.e(new String[]{str});
                }
            }
        }
    }

    public static void update(Object obj, String str) {
        IInterface iInterfaceB = e.x() ? new f(obj).b() : new n.a(obj).b();
        if (iInterfaceB instanceof Proxy) {
            return;
        }
        IInterface iInterfaceC = c(iInterfaceB, str);
        if (e.x()) {
            new f(obj).c(iInterfaceC);
        } else {
            new n.a(obj).c(iInterfaceC);
        }
    }
}
