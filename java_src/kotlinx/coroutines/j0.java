package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@IgnoreJRERequirement
public final class j0 extends AbstractCoroutineContextElement implements t2<String> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f93575c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f93576b;

    public static final class a implements CoroutineContext.Key<j0> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j0(long j10) {
        super(f93575c);
        this.f93576b = j10;
    }

    public static /* synthetic */ j0 d0(j0 j0Var, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = j0Var.f93576b;
        }
        return j0Var.c0(j10);
    }

    @NotNull
    public final j0 c0(long j10) {
        return new j0(j10);
    }

    public final long e0() {
        return this.f93576b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j0) && this.f93576b == ((j0) obj).f93576b;
    }

    @Override // kotlinx.coroutines.t2
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull CoroutineContext coroutineContext, @NotNull String str) {
        Thread.currentThread().setName(str);
    }

    @Override // kotlinx.coroutines.t2
    @NotNull
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public String a0(@NotNull CoroutineContext coroutineContext) {
        String name;
        k0 k0Var = (k0) coroutineContext.get(k0.f93578c);
        if (k0Var == null || (name = k0Var.getName()) == null) {
            name = "coroutine";
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name2 = threadCurrentThread.getName();
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name2, " @", 0, false, 6, (Object) null);
        if (iLastIndexOf$default < 0) {
            iLastIndexOf$default = name2.length();
        }
        StringBuilder sb2 = new StringBuilder(name.length() + iLastIndexOf$default + 10);
        String strSubstring = name2.substring(0, iLastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        sb2.append(strSubstring);
        sb2.append(" @");
        sb2.append(name);
        sb2.append('#');
        sb2.append(this.f93576b);
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        threadCurrentThread.setName(string);
        return name2;
    }

    public int hashCode() {
        return s5.a.a(this.f93576b);
    }

    @NotNull
    public String toString() {
        return "CoroutineId(" + this.f93576b + ')';
    }

    public final long z() {
        return this.f93576b;
    }
}
