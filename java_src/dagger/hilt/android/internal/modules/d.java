package dagger.hilt.android.internal.modules;

import android.app.Application;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import dagger.internal.k;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
public final class d implements dagger.internal.e<Application> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f90821a;

    private d(c module) {
        this.f90821a = module;
    }

    public static d a(c module) {
        return new d(module);
    }

    public static Application c(c instance) {
        return (Application) k.f(instance.a());
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Application get() {
        return c(this.f90821a);
    }
}
