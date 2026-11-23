package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.m;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f95311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<? extends c> f95312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f95313c;

    protected a(Class cls, Class<? extends c> cls2, boolean z10) {
        this.f95311a = cls;
        this.f95312b = cls2;
        this.f95313c = z10;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public Class b() {
        return this.f95311a;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public boolean c() {
        return this.f95313c;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public c d() {
        Class<? extends c> cls = this.f95312b;
        if (cls == null) {
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        }
    }

    protected m e(String str, Class<?> cls) {
        return g(str, cls, ThreadMode.POSTING, 0, false);
    }

    protected m f(String str, Class<?> cls, ThreadMode threadMode) {
        return g(str, cls, threadMode, 0, false);
    }

    protected m g(String str, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        try {
            return new m(this.f95311a.getDeclaredMethod(str, cls), cls, threadMode, i10, z10);
        } catch (NoSuchMethodException e10) {
            throw new EventBusException("Could not find subscriber method in " + this.f95311a + ". Maybe a missing ProGuard rule?", e10);
        }
    }
}
