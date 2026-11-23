package com.aggmoread.sdk.z.a.j;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3603d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f3606g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f3610k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private k f3611l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f3612m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3604e = com.join.mgps.socket.entity.b.f73001c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3605f = com.join.mgps.socket.entity.b.f73001c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<String, String> f3607h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3608i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3609j = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AtomicBoolean f3613n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final p f3614o = p.b();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f3615a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f3616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3617c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f3618d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f3619e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3620f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private i f3621g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Context f3622h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f3624j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private k f3625k;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f3623i = 3;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f3626l = 3;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Map<String, String> f3627m = new HashMap();

        public a(Context context) {
            this.f3622h = context;
        }

        public a a(int i10) {
            this.f3623i = i10;
            return this;
        }

        public a b(int i10) {
            this.f3626l = i10;
            return this;
        }

        public a c(String str) {
            this.f3616b = str;
            return this;
        }

        public a a(i iVar) {
            this.f3621g = iVar;
            return this;
        }

        public a b(String str) {
            this.f3619e = str;
            return this;
        }

        public a a(k kVar) {
            this.f3625k = kVar;
            return this;
        }

        public a a(String str) {
            this.f3618d = str;
            return this;
        }

        public a a(boolean z10) {
            this.f3624j = z10;
            return this;
        }

        public n a() {
            n nVar = new n();
            if (!TextUtils.isEmpty(this.f3615a)) {
                nVar.f3600a = this.f3615a;
            }
            nVar.f3601b = this.f3616b;
            if (!TextUtils.isEmpty(this.f3619e)) {
                this.f3619e = this.f3619e.replace("apk", "tmp");
            }
            nVar.f3603d = this.f3619e;
            nVar.f3602c = this.f3618d;
            nVar.f3605f = this.f3620f;
            nVar.f3604e = this.f3617c;
            nVar.f3608i = this.f3624j;
            nVar.f3610k = this.f3622h;
            nVar.f3609j = this.f3623i;
            nVar.f3611l = this.f3625k;
            nVar.f3612m = this.f3626l;
            nVar.f3606g = this.f3625k != null ? new m(this.f3621g, this.f3625k) : this.f3621g;
            nVar.f3607h.putAll(this.f3627m);
            return nVar;
        }
    }

    public n() {
        UUID.randomUUID().toString();
    }

    public int b() {
        return this.f3605f;
    }

    public i e() {
        i iVar = this.f3606g;
        return iVar == null ? i.f3581a : iVar;
    }

    public String f() {
        return this.f3603d;
    }

    public Map<String, String> g() {
        return this.f3607h;
    }

    public String h() {
        return this.f3601b;
    }

    public int i() {
        return this.f3609j;
    }

    public int j() {
        return this.f3604e;
    }

    public boolean k() {
        return this.f3613n.get();
    }

    public boolean l() {
        return this.f3608i;
    }

    public void m() {
        com.aggmoread.sdk.z.a.d.d("DownloadRequest", "start enter, isStarted = " + this.f3614o.a());
        this.f3614o.a(this);
    }

    public String toString() {
        return "DownloadRequest{httpUrl='" + this.f3601b + "', filePath='" + this.f3602c + "', fileName='" + this.f3603d + "', readTimout=" + this.f3604e + ", connectionTimeout=" + this.f3605f + ", downloadListener=" + this.f3606g + ", skipIfCached=" + this.f3608i + ", maxRedirect=" + this.f3609j + ", context=" + this.f3610k + ", isCanceled=" + this.f3613n + ", isStarted=" + this.f3614o.a() + '}';
    }

    public Context c() {
        return this.f3610k;
    }

    public String d() {
        return this.f3602c;
    }

    public void a() {
        this.f3614o.c();
        this.f3613n.set(true);
        k kVar = this.f3611l;
        if (kVar != null) {
            kVar.a();
        }
    }
}
