package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,351:1\n70#1,3:353\n1#2:352\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n132#1:353,3\n*E\n"})
public class LockFreeLinkedListNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93459b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93460c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93461d = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    @PublishedApi
    public static abstract class a extends kotlinx.coroutines.internal.b<LockFreeLinkedListNode> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final LockFreeLinkedListNode f93462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        @Nullable
        public LockFreeLinkedListNode f93463c;

        public a(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.f93462b = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.b
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void c(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @Nullable Object obj) {
            boolean z10 = obj == null;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = z10 ? this.f93462b : this.f93463c;
            if (lockFreeLinkedListNode2 != null && androidx.concurrent.futures.a.a(LockFreeLinkedListNode.q(), lockFreeLinkedListNode, this, lockFreeLinkedListNode2) && z10) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = this.f93462b;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = this.f93463c;
                Intrinsics.checkNotNull(lockFreeLinkedListNode4);
                lockFreeLinkedListNode3.l(lockFreeLinkedListNode4);
            }
        }
    }

    @SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n*L\n1#1,351:1\n*E\n"})
    public static final class b extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function0<Boolean> f93464d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(LockFreeLinkedListNode lockFreeLinkedListNode, Function0<Boolean> function0) {
            super(lockFreeLinkedListNode);
            this.f93464d = function0;
        }

        @Override // kotlinx.coroutines.internal.b
        @Nullable
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Object g(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            if (this.f93464d.invoke().booleanValue()) {
                return null;
            }
            return x.a();
        }
    }

    private final k0 B() {
        k0 k0Var = (k0) f93461d.get(this);
        if (k0Var != null) {
            return k0Var;
        }
        k0 k0Var2 = new k0(this);
        f93461d.set(this, k0Var2);
        return k0Var2;
    }

    private final /* synthetic */ void C(Object obj) {
        this._next$volatile = obj;
    }

    private final /* synthetic */ void D(Object obj) {
        this._prev$volatile = obj;
    }

    private final /* synthetic */ void E(Object obj) {
        this._removedRef$volatile = obj;
    }

    private final LockFreeLinkedListNode j(i0 i0Var) {
        Object obj;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f93460c.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    obj = f93459b.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2) {
                            return lockFreeLinkedListNode2;
                        }
                        if (!androidx.concurrent.futures.a.a(f93460c, this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            break;
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (v()) {
                        return null;
                    }
                    if (obj == i0Var) {
                        return lockFreeLinkedListNode2;
                    }
                    if (obj instanceof i0) {
                        ((i0) obj).b(lockFreeLinkedListNode2);
                        break;
                    }
                    if (!(obj instanceof k0)) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    } else {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) f93460c.get(lockFreeLinkedListNode2);
                    }
                }
                if (!androidx.concurrent.futures.a.a(f93459b, lockFreeLinkedListNode3, lockFreeLinkedListNode2, ((k0) obj).f93506a)) {
                    break;
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    private final LockFreeLinkedListNode k(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.v()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) f93460c.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93460c;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (m() != lockFreeLinkedListNode) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f93460c, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (v()) {
            lockFreeLinkedListNode.j(null);
        }
    }

    private final /* synthetic */ Object p() {
        return this._next$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater q() {
        return f93459b;
    }

    private final /* synthetic */ Object r() {
        return this._prev$volatile;
    }

    private final /* synthetic */ Object t() {
        return this._removedRef$volatile;
    }

    private final /* synthetic */ void w(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @PublishedApi
    @Nullable
    public final LockFreeLinkedListNode A() {
        Object objM;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            objM = m();
            if (objM instanceof k0) {
                return ((k0) objM).f93506a;
            }
            if (objM == this) {
                return (LockFreeLinkedListNode) objM;
            }
            Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) objM;
        } while (!androidx.concurrent.futures.a.a(f93459b, this, objM, lockFreeLinkedListNode.B()));
        lockFreeLinkedListNode.j(null);
        return null;
    }

    @PublishedApi
    public final int F(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2, @NotNull a aVar) {
        f93460c.set(lockFreeLinkedListNode, this);
        f93459b.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        aVar.f93463c = lockFreeLinkedListNode2;
        if (androidx.concurrent.futures.a.a(f93459b, this, lockFreeLinkedListNode2, aVar)) {
            return aVar.b(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void G(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
    }

    public final void f(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (!o().h(lockFreeLinkedListNode, this)) {
        }
    }

    public final boolean g(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull Function0<Boolean> function0) {
        int iF;
        b bVar = new b(lockFreeLinkedListNode, function0);
        do {
            iF = o().F(lockFreeLinkedListNode, this, bVar);
            if (iF == 1) {
                return true;
            }
        } while (iF != 2);
        return false;
    }

    @PublishedApi
    public final boolean h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f93460c.set(lockFreeLinkedListNode, this);
        f93459b.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!androidx.concurrent.futures.a.a(f93459b, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.l(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean i(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        f93460c.set(lockFreeLinkedListNode, this);
        f93459b.set(lockFreeLinkedListNode, this);
        while (m() == this) {
            if (androidx.concurrent.futures.a.a(f93459b, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.l(this);
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Object m() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93459b;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof i0)) {
                return obj;
            }
            ((i0) obj).b(this);
        }
    }

    @NotNull
    public final LockFreeLinkedListNode n() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objM = m();
        k0 k0Var = objM instanceof k0 ? (k0) objM : null;
        if (k0Var != null && (lockFreeLinkedListNode = k0Var.f93506a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (LockFreeLinkedListNode) objM;
    }

    @NotNull
    public final LockFreeLinkedListNode o() {
        LockFreeLinkedListNode lockFreeLinkedListNodeJ = j(null);
        return lockFreeLinkedListNodeJ == null ? k((LockFreeLinkedListNode) f93460c.get(this)) : lockFreeLinkedListNodeJ;
    }

    @NotNull
    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode.toString.1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            @Nullable
            public Object get() {
                return kotlinx.coroutines.o0.a(this.receiver);
            }
        } + '@' + kotlinx.coroutines.o0.b(this);
    }

    public boolean v() {
        return m() instanceof k0;
    }

    @PublishedApi
    @NotNull
    public final a x(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull Function0<Boolean> function0) {
        return new b(lockFreeLinkedListNode, function0);
    }

    @Nullable
    protected LockFreeLinkedListNode y() {
        Object objM = m();
        k0 k0Var = objM instanceof k0 ? (k0) objM : null;
        if (k0Var != null) {
            return k0Var.f93506a;
        }
        return null;
    }

    public boolean z() {
        return A() == null;
    }
}
