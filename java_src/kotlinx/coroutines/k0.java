package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class k0 extends AbstractCoroutineContextElement {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f93578c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final String f93579b;

    public static final class a implements CoroutineContext.Key<k0> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k0(@NotNull String str) {
        super(f93578c);
        this.f93579b = str;
    }

    public static /* synthetic */ k0 d0(k0 k0Var, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = k0Var.f93579b;
        }
        return k0Var.c0(str);
    }

    @NotNull
    public final k0 c0(@NotNull String str) {
        return new k0(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k0) && Intrinsics.areEqual(this.f93579b, ((k0) obj).f93579b);
    }

    @NotNull
    public final String getName() {
        return this.f93579b;
    }

    public int hashCode() {
        return this.f93579b.hashCode();
    }

    @NotNull
    public String toString() {
        return "CoroutineName(" + this.f93579b + ')';
    }

    @NotNull
    public final String z() {
        return this.f93579b;
    }
}
