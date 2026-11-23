package com.squareup.wire;

import com.squareup.wire.t.a;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class t<K extends a<T>, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final K f82425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f82426b;

    public t(@NotNull K key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f82425a = key;
        this.f82426b = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ t d(t tVar, a aVar, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            aVar = tVar.f82425a;
        }
        if ((i10 & 2) != 0) {
            obj = tVar.f82426b;
        }
        return tVar.c(aVar, obj);
    }

    @NotNull
    public final K a() {
        return this.f82425a;
    }

    public final T b() {
        return this.f82426b;
    }

    @NotNull
    public final t<K, T> c(@NotNull K key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new t<>(key, t10);
    }

    public final void e(@NotNull c0 writer) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f82425a.a().n(writer, this.f82425a.e(), this.f82426b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return Intrinsics.areEqual(this.f82425a, tVar.f82425a) && Intrinsics.areEqual(this.f82426b, tVar.f82426b);
    }

    public final void f(@NotNull ReverseProtoWriter writer) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f82425a.a().o(writer, this.f82425a.e(), this.f82426b);
    }

    public final int g() {
        return this.f82425a.a().q(this.f82425a.e(), this.f82426b);
    }

    @NotNull
    public final K h() {
        return this.f82425a;
    }

    public int hashCode() {
        int iHashCode = this.f82425a.hashCode() * 31;
        T t10 = this.f82426b;
        return iHashCode + (t10 == null ? 0 : t10.hashCode());
    }

    @Nullable
    public final <X> X i(@NotNull a<X> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (Intrinsics.areEqual(this.f82425a, key)) {
            return this.f82426b;
        }
        return null;
    }

    public final T j() {
        return this.f82426b;
    }

    @NotNull
    public String toString() {
        ProtoAdapter<T> protoAdapterA = this.f82425a.a();
        return this.f82425a.b() + '=' + (Intrinsics.areEqual(protoAdapterA, ProtoAdapter.J) ? true : Intrinsics.areEqual(protoAdapterA, ProtoAdapter.W) ? com.squareup.wire.internal.n.b0(String.valueOf(this.f82426b)) : String.valueOf(this.f82426b));
    }

    public static abstract class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f82427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final ProtoAdapter<T> f82428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NotNull
        private final String f82429c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f82430d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NotNull
        private final String f82431e;

        public a(int i10, @NotNull ProtoAdapter<T> adapter, @NotNull String declaredName, boolean z10, @NotNull String jsonName) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(declaredName, "declaredName");
            Intrinsics.checkNotNullParameter(jsonName, "jsonName");
            this.f82427a = i10;
            this.f82428b = adapter;
            this.f82429c = declaredName;
            this.f82430d = z10;
            this.f82431e = jsonName;
        }

        @NotNull
        public final ProtoAdapter<T> a() {
            return this.f82428b;
        }

        @NotNull
        public final String b() {
            return this.f82429c;
        }

        @NotNull
        public final String c() {
            return this.f82431e;
        }

        public final boolean d() {
            return this.f82430d;
        }

        public final int e() {
            return this.f82427a;
        }

        public /* synthetic */ a(int i10, ProtoAdapter protoAdapter, String str, boolean z10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, protoAdapter, str, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? "" : str2);
        }
    }
}
