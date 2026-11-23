package dagger.hilt.android.internal.modules;

import android.content.Context;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import dagger.internal.k;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.qualifiers.ApplicationContext"})
public final class e implements dagger.internal.e<Context> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f90822a;

    private e(c module) {
        this.f90822a = module;
    }

    public static e a(c module) {
        return new e(module);
    }

    public static Context c(c instance) {
        return (Context) k.f(instance.b());
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Context get() {
        return c(this.f90822a);
    }
}
