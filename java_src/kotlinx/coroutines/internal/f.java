package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,265:1\n42#1,8:280\n103#2,7:266\n103#2,7:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:280,8\n23#1:266,7\n81#1:273,7\n*E\n"})
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93494a = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final q0 f93495b = new q0("CLOSED");

    private static final /* synthetic */ boolean b(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, int i10, Function1<? super Integer, Boolean> function1) {
        int i11;
        do {
            i11 = atomicIntegerFieldUpdater.get(obj);
            if (!function1.invoke(Integer.valueOf(i11)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i11, i11 + i10));
        return true;
    }

    private static final /* synthetic */ boolean c(AtomicIntegerArray atomicIntegerArray, int i10, int i11, Function1<? super Integer, Boolean> function1) {
        int i12;
        do {
            i12 = atomicIntegerArray.get(i10);
            if (!function1.invoke(Integer.valueOf(i12)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerArray.compareAndSet(i10, i12, i12 + i11));
        return true;
    }

    @NotNull
    public static final <N extends g<N>> N d(@NotNull N n10) {
        while (true) {
            Object objG = n10.g();
            if (objG == f93495b) {
                return n10;
            }
            g gVar = (g) objG;
            if (gVar != null) {
                n10 = (N) gVar;
            } else if (n10.o()) {
                return n10;
            }
        }
    }

    public static final /* synthetic */ <S extends n0<S>> Object e(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, long j10, S s10, Function2<? super Long, ? super S, ? extends S> function2) {
        Object objG;
        boolean z10;
        do {
            objG = g(s10, j10, function2);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(obj);
                    z10 = true;
                    if (n0Var.f93516d >= n0VarF.f93516d) {
                        break;
                    }
                    if (!n0VarF.C()) {
                        z10 = false;
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, n0Var, n0VarF)) {
                        if (!n0Var.v()) {
                            break;
                        }
                        n0Var.q();
                        break;
                    }
                    if (n0VarF.v()) {
                        n0VarF.q();
                    }
                }
            } else {
                break;
            }
        } while (!z10);
        return objG;
    }

    public static final /* synthetic */ <S extends n0<S>> Object f(AtomicReferenceArray atomicReferenceArray, int i10, long j10, S s10, Function2<? super Long, ? super S, ? extends S> function2) {
        Object objG;
        boolean z10;
        do {
            objG = g(s10, j10, function2);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceArray.get(i10);
                    z10 = true;
                    if (n0Var.f93516d >= n0VarF.f93516d) {
                        break;
                    }
                    if (!n0VarF.C()) {
                        z10 = false;
                        break;
                    }
                    if (io.netty.util.a.a(atomicReferenceArray, i10, n0Var, n0VarF)) {
                        if (!n0Var.v()) {
                            break;
                        }
                        n0Var.q();
                        break;
                    }
                    if (n0VarF.v()) {
                        n0VarF.q();
                    }
                }
            } else {
                break;
            }
        } while (!z10);
        return objG;
    }

    @NotNull
    public static final <S extends n0<S>> Object g(@NotNull S s10, long j10, @NotNull Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s10.f93516d >= j10 && !s10.m()) {
                return o0.b(s10);
            }
            Object objG = s10.g();
            if (objG == f93495b) {
                return o0.b(f93495b);
            }
            S sInvoke = (S) ((g) objG);
            if (sInvoke == null) {
                sInvoke = function2.invoke(Long.valueOf(s10.f93516d + 1), s10);
                if (s10.t(sInvoke)) {
                    if (s10.m()) {
                        s10.q();
                    }
                }
            }
            s10 = (Object) sInvoke;
        }
    }

    public static final /* synthetic */ <S extends n0<S>> boolean j(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, S s10) {
        while (true) {
            n0 n0Var = (n0) atomicReferenceFieldUpdater.get(obj);
            if (n0Var.f93516d >= s10.f93516d) {
                return true;
            }
            if (!s10.C()) {
                return false;
            }
            if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, n0Var, s10)) {
                if (n0Var.v()) {
                    n0Var.q();
                }
                return true;
            }
            if (s10.v()) {
                s10.q();
            }
        }
    }

    public static final /* synthetic */ <S extends n0<S>> boolean k(AtomicReferenceArray atomicReferenceArray, int i10, S s10) {
        while (true) {
            n0 n0Var = (n0) atomicReferenceArray.get(i10);
            if (n0Var.f93516d >= s10.f93516d) {
                return true;
            }
            if (!s10.C()) {
                return false;
            }
            if (io.netty.util.a.a(atomicReferenceArray, i10, n0Var, s10)) {
                if (n0Var.v()) {
                    n0Var.q();
                }
                return true;
            }
            if (s10.v()) {
                s10.q();
            }
        }
    }
}
