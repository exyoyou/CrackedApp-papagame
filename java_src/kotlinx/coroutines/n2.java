package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class n2 {

    @SourceDebugExtension({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n*L\n1#1,14:1\n*E\n"})
    public static final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f93604b;

        public a(Function0<Unit> function0) {
            this.f93604b = function0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f93604b.invoke();
        }
    }

    @NotNull
    public static final Runnable a(@NotNull Function0<Unit> function0) {
        return new a(function0);
    }
}
