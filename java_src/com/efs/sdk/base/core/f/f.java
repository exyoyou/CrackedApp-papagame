package com.efs.sdk.base.core.f;

import com.efs.sdk.base.core.controller.ControllerCenter;

/* JADX INFO: loaded from: classes9.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f26368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ControllerCenter f26369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f26370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g f26371d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final f f26372a = new f(0);
    }

    /* synthetic */ f(byte b10) {
        this();
    }

    public final void a(String str, String str2, String str3) {
        this.f26371d.a(str, str2, str3);
    }

    private f() {
        this.f26368a = new c();
        this.f26370c = new d();
        this.f26371d = new g();
    }

    public final void a(int i10) {
        ControllerCenter controllerCenter = this.f26369b;
        if (controllerCenter != null) {
            controllerCenter.send(a("flow_limit", i10));
        }
    }

    public final void a(int i10, String str) {
        if (this.f26369b != null || ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
            b bVarA = a("flow_limit_type", i10);
            bVarA.put("code", str);
            this.f26369b.send(bVarA);
        }
    }

    public final b a(String str, int i10) {
        b bVar = new b("efs_core", str, this.f26368a.f26362c);
        bVar.put("cver", Integer.valueOf(i10));
        return bVar;
    }
}
