package com;

import androidx.annotation.CallSuper;
import com.join.kotlin.base.BaseApp;

/* JADX INFO: loaded from: classes7.dex */
abstract class Hilt_MApplication extends BaseApp implements jb.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3164b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final dagger.hilt.android.internal.managers.f f3165c = new dagger.hilt.android.internal.managers.f(new a());

    class a implements dagger.hilt.android.internal.managers.h {
        a() {
        }

        @Override // dagger.hilt.android.internal.managers.h
        public Object get() {
            return f.a().a(new dagger.hilt.android.internal.modules.c(Hilt_MApplication.this)).b();
        }
    }

    Hilt_MApplication() {
    }

    @Override // jb.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final dagger.hilt.android.internal.managers.f componentManager() {
        return this.f3165c;
    }

    protected void e() {
        if (this.f3164b) {
            return;
        }
        this.f3164b = true;
        ((k) generatedComponent()).c((MApplication) jb.g.a(this));
    }

    @Override // jb.b
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // com.join.kotlin.base.BaseApp, com.join.mgps.va.overmind.VApp, com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    @CallSuper
    public void onCreate() {
        e();
        super.onCreate();
    }
}
