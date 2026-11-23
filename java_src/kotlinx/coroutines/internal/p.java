package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"})
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f93520a = false;

    static {
        Object objM50constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        Result.m57isSuccessimpl(objM50constructorimpl);
    }

    public static final boolean a() {
        return f93520a;
    }
}
