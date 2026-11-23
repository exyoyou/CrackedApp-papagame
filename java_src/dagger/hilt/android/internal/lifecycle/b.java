package dagger.hilt.android.internal.lifecycle;

import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import dagger.internal.l;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
public final class b implements dagger.internal.e<a.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Map<Class<?>, Boolean>> f90774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<gb.f> f90775b;

    private b(l<Map<Class<?>, Boolean>> keySetProvider, l<gb.f> viewModelComponentBuilderProvider) {
        this.f90774a = keySetProvider;
        this.f90775b = viewModelComponentBuilderProvider;
    }

    public static b a(l<Map<Class<?>, Boolean>> keySetProvider, l<gb.f> viewModelComponentBuilderProvider) {
        return new b(keySetProvider, viewModelComponentBuilderProvider);
    }

    public static a.d c(Map<Class<?>, Boolean> keySet, gb.f viewModelComponentBuilder) {
        return new a.d(keySet, viewModelComponentBuilder);
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a.d get() {
        return c(this.f90774a.get(), this.f90775b.get());
    }
}
