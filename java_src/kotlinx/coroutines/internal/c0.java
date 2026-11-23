package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.e2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1963#2,14:131\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n34#1:131,14\n*E\n"})
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c0 f93481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f93482b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final e2 f93483c;

    static {
        c0 c0Var = new c0();
        f93481a = c0Var;
        t0.f("kotlinx.coroutines.fast.service.loader", true);
        f93483c = c0Var.a();
    }

    private c0() {
    }

    private final e2 a() {
        Object next;
        e2 e2VarF;
        try {
            List<b0> listD = f93482b ? o.f93517a.d() : SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.asSequence(ServiceLoader.load(b0.class, b0.class.getClassLoader()).iterator()));
            Iterator<T> it2 = listD.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int iA = ((b0) next).a();
                    do {
                        Object next2 = it2.next();
                        int iA2 = ((b0) next2).a();
                        if (iA < iA2) {
                            next = next2;
                            iA = iA2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            b0 b0Var = (b0) next;
            return (b0Var == null || (e2VarF = d0.f(b0Var, listD)) == null) ? d0.b(null, null, 3, null) : e2VarF;
        } catch (Throwable th) {
            return d0.b(th, null, 2, null);
        }
    }
}
