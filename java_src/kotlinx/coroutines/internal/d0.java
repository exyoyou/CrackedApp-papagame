package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.e2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatchersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"})
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final String f93489a = "kotlinx.coroutines.fast.service.loader";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f93490b = false;

    private static final e0 a(Throwable th, String str) throws Throwable {
        if (f93490b) {
            return new e0(th, str);
        }
        if (th != null) {
            throw th;
        }
        e();
        throw new KotlinNothingValueException();
    }

    static /* synthetic */ e0 b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    private static /* synthetic */ void c() {
    }

    @InternalCoroutinesApi
    public static final boolean d(@NotNull e2 e2Var) {
        return e2Var.z() instanceof e0;
    }

    @NotNull
    public static final Void e() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @InternalCoroutinesApi
    @NotNull
    public static final e2 f(@NotNull b0 b0Var, @NotNull List<? extends b0> list) {
        try {
            return b0Var.c(list);
        } catch (Throwable th) {
            return a(th, b0Var.b());
        }
    }
}
