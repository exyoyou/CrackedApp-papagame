package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f74831a = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static q f74832b = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f74833g = "1";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f74834c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private dn f74835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f74836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t f74837f;

    private q(Context context) {
        this.f74836e = context;
        this.f74835d = dn.a(context);
        this.f74837f = t.a(context);
    }

    private static void d() {
        try {
            dn dnVarA = dn.a();
            if (dnVarA != null) {
                dnVarA.b("W_S_V", "1");
            }
        } catch (Exception unused) {
        }
    }

    public void c() {
        for (s sVar : this.f74837f.a()) {
            r rVarA = r.a();
            if ((rVarA != null ? rVarA.d(sVar.f74853c) : null) == null) {
                a(sVar.f74851a, sVar.f74854d, (PackageInfo) null);
            }
        }
    }

    public static synchronized q a(Context context) {
        try {
            if (f74832b == null) {
                f74832b = new q(context);
            }
        } catch (Exception unused) {
            return null;
        }
        return f74832b;
    }

    public synchronized void b() {
        String canonicalPath;
        try {
            if (this.f74834c) {
                return;
            }
            this.f74834c = true;
            for (s sVar : this.f74837f.a()) {
                try {
                    canonicalPath = this.f74836e.getFilesDir().getCanonicalPath();
                } catch (Throwable unused) {
                    canonicalPath = null;
                }
                if (canonicalPath != null) {
                    sVar.f74863m = canonicalPath + bg.f74501j + sVar.f74851a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(sVar.f74863m);
                    sb2.append("/lib");
                    dl.c(sb2.toString());
                    dl.c(sVar.f74863m);
                    dl.c(canonicalPath + "/.tmp");
                }
            }
            this.f74837f.b();
            if (this.f74835d.b(dn.f74761d)) {
                this.f74837f.c();
            } else {
                this.f74835d.a(dn.f74761d, Boolean.TRUE, true);
            }
            n.a().a(new u(this.f74836e, 1, false));
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        d();
        if (WeaponHI.isLoad) {
            b();
        } else {
            WeaponHI.iD();
        }
    }

    public synchronized boolean a(int i10, String str, PackageInfo packageInfo) {
        return a(i10, str, null, false, packageInfo);
    }

    private synchronized boolean a(int i10, String str, String str2, boolean z10, PackageInfo packageInfo) {
        if (z10) {
            if (this.f74837f.c(i10) != 1) {
                return false;
            }
        }
        s sVarA = this.f74837f.a(i10);
        if (sVarA == null) {
            this.f74837f.b(i10, -1);
            return false;
        }
        if (!dl.a(new File(sVarA.f74855e))) {
            this.f74837f.b(i10, -1);
            return false;
        }
        if (packageInfo != null) {
            sVarA.f74868r = packageInfo;
        }
        r rVarA = r.a(this.f74836e.getApplicationContext(), true);
        if (!rVarA.a(sVarA, false)) {
            this.f74837f.b(i10, -1);
            rVarA.a(sVarA.f74855e);
            return false;
        }
        s sVarC = rVarA.c(sVarA.f74855e);
        sVarC.f74852b = 1;
        sVarC.f74866p = 1;
        this.f74837f.a(sVarC);
        return true;
    }

    public void b(String str) {
        r rVarA;
        try {
            if (TextUtils.isEmpty(str) || (rVarA = r.a()) == null) {
                return;
            }
            rVarA.b(str);
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2) {
        this.f74837f.a(str);
        File file = new File(str2);
        if (file.exists()) {
            file.delete();
        }
    }

    public void a(final String str) {
        try {
            n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.q.1
                @Override // java.lang.Runnable
                public void run() {
                    final r rVarA;
                    try {
                        if (TextUtils.isEmpty(str) || (rVarA = r.a(q.this.f74836e.getApplicationContext(), true)) == null) {
                            return;
                        }
                        final s sVarD = rVarA.d(str);
                        if (sVarD == null) {
                            s sVarB = q.this.f74837f.b(str);
                            if (sVarB != null) {
                                q.this.a(str, sVarB.f74855e);
                                return;
                            }
                            return;
                        }
                        new Timer().schedule(new TimerTask() { // from class: com.kuaishou.weapon.p0.q.1.1
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                rVarA.b(str);
                                q.this.f74837f.a(str);
                                File file = new File(sVarD.f74855e);
                                if (file.exists()) {
                                    file.delete();
                                }
                            }
                        }, 600000L);
                        rVarA.b(str);
                        q.this.f74837f.a(str);
                        File file = new File(sVarD.f74855e);
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public boolean a(s sVar, String str, String str2) {
        if (sVar == null) {
            return false;
        }
        File file = new File(sVar.f74855e);
        if (!dl.a(file)) {
            return false;
        }
        try {
            if (!this.f74837f.b(sVar.f74851a)) {
                this.f74837f.a(sVar);
            }
            r rVarA = r.a(this.f74836e.getApplicationContext(), true);
            this.f74837f.a(sVar.f74851a, 1);
            b(sVar.f74853c);
            if (!rVarA.a(sVar, true)) {
                file.delete();
                a(sVar.f74851a, sVar.f74854d, null, true, null);
                this.f74837f.a(sVar.f74851a, 0);
                return false;
            }
            sVar = rVarA.c(sVar.f74855e);
            if (sVar == null) {
                this.f74837f.a(sVar.f74851a, 0);
                return false;
            }
            try {
                s sVarA = this.f74837f.a(sVar.f74851a);
                File file2 = (sVarA == null || sVarA.f74854d.equals(sVar.f74854d)) ? null : new File(sVarA.f74855e);
                sVar.f74852b = 1;
                sVar.f74866p = 1;
                if (this.f74837f.a(sVar) > 0 && file2 != null && file2.exists()) {
                    file2.delete();
                }
                this.f74837f.a(sVar.f74851a, 0);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        } catch (Throwable unused2) {
        }
    }
}
