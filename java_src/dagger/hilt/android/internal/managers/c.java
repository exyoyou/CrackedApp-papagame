package dagger.hilt.android.internal.managers;

import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata("dagger.hilt.android.scopes.ActivityRetainedScoped")
@DaggerGenerated
@QualifierMetadata
public final class c implements dagger.internal.e<dagger.hilt.android.a> {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f90797a = new c();

        private a() {
        }
    }

    public static c a() {
        return a.f90797a;
    }

    public static dagger.hilt.android.a c() {
        return (dagger.hilt.android.a) dagger.internal.k.f(b.e.a());
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public dagger.hilt.android.a get() {
        return c();
    }
}
