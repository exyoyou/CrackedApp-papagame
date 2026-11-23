package com.xinzhu.overmind.server;

import android.os.IBinder;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f89688b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89689c = "activity_manager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89690d = "job_manager";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f89691e = "notification_manager";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f89692f = "package_manager";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f89693g = "storage_manager";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f89694h = "user_manager";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f89695i = "file_share";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f89696j = "Xposed_manager";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f89697k = "v_service";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f89698l = "account_manager";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f89699m = "device_manager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f89700n = "content_manager";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f89701o = "widget_manager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, IBinder> f89702a;

    private l() {
        HashMap map = new HashMap();
        this.f89702a = map;
        map.put(f89689c, com.xinzhu.overmind.server.am.f.get());
        this.f89702a.put(f89690d, com.xinzhu.overmind.server.am.g.get());
        this.f89702a.put(f89692f, MindPackageManagerService.get());
        this.f89702a.put(f89693g, com.xinzhu.overmind.server.os.i.get());
        this.f89702a.put(f89694h, com.xinzhu.overmind.server.user.c.get());
        this.f89702a.put(f89691e, com.xinzhu.overmind.server.os.h.get());
        this.f89702a.put(f89695i, com.xinzhu.overmind.server.os.g.get());
        this.f89702a.put(f89698l, MindAccountManagerService.get());
        this.f89702a.put(f89699m, com.xinzhu.overmind.server.os.f.get());
        this.f89702a.put(f89701o, k.get());
        this.f89702a.put(f89700n, com.xinzhu.overmind.server.content.b.get());
    }

    public static l a() {
        if (f89688b == null) {
            synchronized (l.class) {
                if (f89688b == null) {
                    f89688b = new l();
                }
            }
        }
        return f89688b;
    }

    public static IBinder b(String str) {
        return a().c(str);
    }

    public IBinder c(String str) {
        return this.f89702a.get(str);
    }
}
