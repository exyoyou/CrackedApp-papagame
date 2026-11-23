package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends com.efs.sdk.base.core.f.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, a> f26373b = new ConcurrentHashMap<>(10);

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f26374a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f26375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f26376c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        AtomicInteger f26377d = new AtomicInteger(0);

        a(String str, String str2, String str3) {
            this.f26374a = str;
            this.f26375b = str2;
            this.f26376c = str3;
        }
    }

    final void a(String str, String str2, String str3) {
        String str4 = str + "_" + str2 + "_" + str3.trim();
        if (!this.f26373b.containsKey(str4) || this.f26373b.get(str4) == null) {
            this.f26373b.putIfAbsent(str4, new a(str, str2, str3));
        }
        this.f26373b.get(str4).f26377d.incrementAndGet();
    }

    @Override // com.efs.sdk.base.core.f.a
    public final void a() {
        try {
            if (this.f26355a != null && ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
                Iterator<Map.Entry<String, a>> it2 = this.f26373b.entrySet().iterator();
                while (it2.hasNext()) {
                    a value = it2.next().getValue();
                    int i10 = value.f26377d.get();
                    if (i10 > 0) {
                        ControllerCenter controllerCenter = this.f26355a;
                        String str = value.f26374a;
                        String str2 = value.f26375b;
                        String str3 = value.f26376c;
                        b bVar = new b("efs_core", "req_succ_rate", f.a.f26372a.f26368a.f26362c);
                        bVar.put("rep_code", str);
                        bVar.put("px_code", str2);
                        bVar.put("path", str3);
                        bVar.put("cnt", Integer.valueOf(i10));
                        controllerCenter.send(bVar);
                        value.f26377d.addAndGet(i10 * (-1));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
