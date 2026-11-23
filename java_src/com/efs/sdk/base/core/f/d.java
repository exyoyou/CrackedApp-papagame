package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicInteger f26364c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicInteger f26365d = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicInteger f26363b = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicInteger f26366e = new AtomicInteger(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicInteger f26367f = new AtomicInteger(0);

    @Override // com.efs.sdk.base.core.f.a
    public final void a() {
        if ((this.f26364c.get() == 0 && this.f26365d.get() == 0 && this.f26363b.get() == 0 && this.f26367f.get() == 0 && this.f26366e.get() == 0) || this.f26355a == null || !ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
            return;
        }
        ControllerCenter controllerCenter = this.f26355a;
        int i10 = this.f26364c.get();
        int i11 = this.f26365d.get();
        int i12 = this.f26363b.get();
        int i13 = this.f26367f.get();
        int i14 = this.f26366e.get();
        b bVar = new b("efs_core", "lf_st", f.a.f26372a.f26368a.f26362c);
        bVar.put("create_cnt", Integer.valueOf(i10));
        bVar.put("cache_cnt", Integer.valueOf(i11));
        bVar.put("req_cnt", Integer.valueOf(i12));
        bVar.put("err_cnt", Integer.valueOf(i13));
        bVar.put("expire_cnt", Integer.valueOf(i14));
        this.f26364c.addAndGet(i10 * (-1));
        this.f26365d.addAndGet(i11 * (-1));
        this.f26363b.addAndGet(i12 * (-1));
        this.f26367f.addAndGet(i13 * (-1));
        this.f26366e.addAndGet(i14 * (-1));
        controllerCenter.send(bVar);
    }

    public final void b() {
        this.f26364c.incrementAndGet();
    }

    public final void c() {
        this.f26365d.incrementAndGet();
    }

    public final void d() {
        this.f26366e.incrementAndGet();
    }

    public final void e() {
        this.f26367f.incrementAndGet();
    }
}
