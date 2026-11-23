package ac;

import android.annotation.SuppressLint;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sun.misc.Signal;
import sun.misc.SignalHandler;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"all"})
@IgnoreJRERequirement
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b f124a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f125b;

    public static final class a implements ClassFileTransformer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        public static final a f126a = new a();

        private a() {
        }

        @Nullable
        public byte[] a(@Nullable ClassLoader classLoader, @NotNull String str, @Nullable Class<?> cls, @NotNull ProtectionDomain protectionDomain, @Nullable byte[] bArr) {
            if (classLoader == null || !Intrinsics.areEqual(str, "kotlin/coroutines/jvm/internal/DebugProbesKt")) {
                return null;
            }
            kotlinx.coroutines.debug.internal.a.f92772a.b(true);
            return ByteStreamsKt.readBytes(classLoader.getResourceAsStream("DebugProbesKt.bin"));
        }
    }

    static {
        Object objM50constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            objM50constructorimpl = Result.m50constructorimpl(property != null ? Boolean.valueOf(Boolean.parseBoolean(property)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = (Boolean) (Result.m56isFailureimpl(objM50constructorimpl) ? null : objM50constructorimpl);
        f125b = bool != null ? bool.booleanValue() : DebugProbesImpl.f92755a.v();
    }

    private b() {
    }

    private final void b() {
        try {
            Signal.handle(new Signal("TRAP"), new SignalHandler() { // from class: ac.a
                public final void a(Signal signal) {
                    b.c(signal);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Signal signal) {
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f92755a;
        if (debugProbesImpl.B()) {
            debugProbesImpl.f(System.out);
        } else {
            System.out.println((Object) "Cannot perform coroutines dump, debug probes are disabled");
        }
    }

    @JvmStatic
    public static final void d(@Nullable String str, @NotNull Instrumentation instrumentation) {
        kotlinx.coroutines.debug.internal.a.f92772a.b(true);
        instrumentation.addTransformer(a.f126a);
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f92755a;
        debugProbesImpl.M(f125b);
        debugProbesImpl.z();
        f124a.b();
    }
}
