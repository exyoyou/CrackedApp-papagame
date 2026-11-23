package kotlinx.coroutines.debug.internal;

import com.haima.hmcp.beans.HmInputMappingContent;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f92720c = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92721d = AtomicReferenceFieldUpdater.newUpdater(ConcurrentWeakMap.class, Object.class, "core$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final ReferenceQueue<K> f92722b;
    private volatile /* synthetic */ Object core$volatile;

    private final class a {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f92723g = AtomicIntegerFieldUpdater.newUpdater(a.class, "load$volatile");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f92724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f92725b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f92726c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ AtomicReferenceArray f92727d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final /* synthetic */ AtomicReferenceArray f92728e;
        private volatile /* synthetic */ int load$volatile;

        /* JADX INFO: renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a$a, reason: collision with other inner class name */
        @SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
        private final class C1198a<E> implements Iterator<E>, KMutableIterator {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            @NotNull
            private final Function2<K, V, E> f92730b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f92731c = -1;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private K f92732d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private V f92733e;

            /* JADX WARN: Multi-variable type inference failed */
            public C1198a(Function2<? super K, ? super V, ? extends E> function2) {
                this.f92730b = function2;
                a();
            }

            private final void a() {
                K k10;
                while (true) {
                    int i10 = this.f92731c + 1;
                    this.f92731c = i10;
                    if (i10 >= ((a) a.this).f92724a) {
                        return;
                    }
                    g gVar = (g) a.this.f().get(this.f92731c);
                    if (gVar != null && (k10 = (K) gVar.get()) != null) {
                        this.f92732d = k10;
                        Object obj = (V) a.this.i().get(this.f92731c);
                        if (obj instanceof h) {
                            obj = (V) ((h) obj).f92791a;
                        }
                        if (obj != null) {
                            this.f92733e = (V) obj;
                            return;
                        }
                    }
                }
            }

            @Override // java.util.Iterator
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Void remove() {
                kotlinx.coroutines.debug.internal.b.e();
                throw new KotlinNothingValueException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f92731c < ((a) a.this).f92724a;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.util.Iterator
            public E next() {
                if (this.f92731c >= ((a) a.this).f92724a) {
                    throw new NoSuchElementException();
                }
                Function2<K, V, E> function2 = this.f92730b;
                K k10 = this.f92732d;
                if (k10 == false) {
                    Intrinsics.throwUninitializedPropertyAccessException("key");
                    k10 = (K) Unit.INSTANCE;
                }
                V v10 = this.f92733e;
                if (v10 == false) {
                    Intrinsics.throwUninitializedPropertyAccessException(HmInputMappingContent.FIELD_VALUE);
                    v10 = (V) Unit.INSTANCE;
                }
                E e10 = (E) function2.invoke(k10, v10);
                a();
                return e10;
            }
        }

        public a(int i10) {
            this.f92724a = i10;
            this.f92725b = Integer.numberOfLeadingZeros(i10) + 1;
            this.f92726c = (i10 * 2) / 3;
            this.f92727d = new AtomicReferenceArray(i10);
            this.f92728e = new AtomicReferenceArray(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final /* synthetic */ AtomicReferenceArray f() {
            return this.f92727d;
        }

        private final /* synthetic */ int g() {
            return this.load$volatile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final /* synthetic */ AtomicReferenceArray i() {
            return this.f92728e;
        }

        private final int j(int i10) {
            return (i10 * (-1640531527)) >>> this.f92725b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object m(a aVar, Object obj, Object obj2, g gVar, int i10, Object obj3) {
            if ((i10 & 4) != 0) {
                gVar = null;
            }
            return aVar.l(obj, obj2, gVar);
        }

        private final void o(int i10) {
            Object obj;
            do {
                obj = i().get(i10);
                if (obj == null || (obj instanceof h)) {
                    return;
                }
            } while (!io.netty.util.a.a(i(), i10, obj, null));
            ConcurrentWeakMap.this.e();
        }

        private final /* synthetic */ void p(int i10) {
            this.load$volatile = i10;
        }

        private final /* synthetic */ void q(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Integer> function1) {
            int i10;
            do {
                i10 = atomicIntegerFieldUpdater.get(obj);
            } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i10, function1.invoke(Integer.valueOf(i10)).intValue()));
        }

        public final void d(@NotNull g<?> gVar) {
            int iJ = j(gVar.f92790a);
            while (true) {
                g<?> gVar2 = (g) f().get(iJ);
                if (gVar2 == null) {
                    return;
                }
                if (gVar2 == gVar) {
                    o(iJ);
                    return;
                } else {
                    if (iJ == 0) {
                        iJ = this.f92724a;
                    }
                    iJ--;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final V e(@NotNull K k10) {
            int iJ = j(k10.hashCode());
            while (true) {
                g gVar = (g) f().get(iJ);
                if (gVar == null) {
                    return null;
                }
                T t10 = gVar.get();
                if (Intrinsics.areEqual(k10, t10)) {
                    V v10 = (V) i().get(iJ);
                    return v10 instanceof h ? (V) ((h) v10).f92791a : v10;
                }
                if (t10 == 0) {
                    o(iJ);
                }
                if (iJ == 0) {
                    iJ = this.f92724a;
                }
                iJ--;
            }
        }

        @NotNull
        public final <E> Iterator<E> k(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            return new C1198a(function2);
        }

        @Nullable
        public final Object l(@NotNull K k10, @Nullable V v10, @Nullable g<K> gVar) {
            int i10;
            Object obj;
            int iJ = j(k10.hashCode());
            boolean z10 = false;
            while (true) {
                g gVar2 = (g) f().get(iJ);
                if (gVar2 != null) {
                    T t10 = gVar2.get();
                    if (Intrinsics.areEqual(k10, t10)) {
                        if (!z10) {
                            break;
                        }
                        f92723g.decrementAndGet(this);
                        break;
                    }
                    if (t10 == 0) {
                        o(iJ);
                    }
                    if (iJ == 0) {
                        iJ = this.f92724a;
                    }
                    iJ--;
                } else if (v10 != null) {
                    if (!z10) {
                        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f92723g;
                        do {
                            i10 = atomicIntegerFieldUpdater.get(this);
                            if (i10 >= this.f92726c) {
                                return kotlinx.coroutines.debug.internal.b.f92776c;
                            }
                        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 + 1));
                        z10 = true;
                    }
                    if (gVar == null) {
                        gVar = new g<>(k10, ((ConcurrentWeakMap) ConcurrentWeakMap.this).f92722b);
                    }
                    if (io.netty.util.a.a(f(), iJ, null, gVar)) {
                        break;
                    }
                } else {
                    return null;
                }
            }
            do {
                obj = i().get(iJ);
                if (obj instanceof h) {
                    return kotlinx.coroutines.debug.internal.b.f92776c;
                }
            } while (!io.netty.util.a.a(i(), iJ, obj, v10));
            return obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final ConcurrentWeakMap<K, V>.a n() {
            Object obj;
            while (true) {
                ConcurrentWeakMap<K, V>.a aVar = (ConcurrentWeakMap<K, V>.a) ConcurrentWeakMap.this.new a(Integer.highestOneBit(RangesKt___RangesKt.coerceAtLeast(ConcurrentWeakMap.this.size(), 4)) * 4);
                int i10 = this.f92724a;
                for (int i11 = 0; i11 < i10; i11++) {
                    g gVar = (g) f().get(i11);
                    Object obj2 = gVar != null ? gVar.get() : null;
                    if (gVar != null && obj2 == null) {
                        o(i11);
                    }
                    do {
                        obj = i().get(i11);
                        if (obj instanceof h) {
                            obj = ((h) obj).f92791a;
                            break;
                        }
                    } while (!io.netty.util.a.a(i(), i11, obj, kotlinx.coroutines.debug.internal.b.d(obj)));
                    if (obj2 == null || obj == null || aVar.l(obj2, obj, gVar) != kotlinx.coroutines.debug.internal.b.f92776c) {
                    }
                }
                return aVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final K f92735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final V f92736c;

        public b(K k10, V v10) {
            this.f92735b = k10;
            this.f92736c = v10;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f92735b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f92736c;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            kotlinx.coroutines.debug.internal.b.e();
            throw new KotlinNothingValueException();
        }
    }

    private final class c<E> extends AbstractMutableSet<E> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final Function2<K, V, E> f92737b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(Function2<? super K, ? super V, ? extends E> function2) {
            this.f92737b = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e10) {
            kotlinx.coroutines.debug.internal.b.e();
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int getSize() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @NotNull
        public Iterator<E> iterator() {
            return ((a) ConcurrentWeakMap.g().get(ConcurrentWeakMap.this)).k(this.f92737b);
        }
    }

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    private final void d(g<?> gVar) {
        ((a) f92721d.get(this)).d(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        f92720c.decrementAndGet(this);
    }

    private final /* synthetic */ Object f() {
        return this.core$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater g() {
        return f92721d;
    }

    private final /* synthetic */ int h() {
        return this._size$volatile;
    }

    private final synchronized V j(K k10, V v10) {
        V v11;
        a aVarN = (a) f92721d.get(this);
        while (true) {
            v11 = (V) a.m(aVarN, k10, v10, null, 4, null);
            if (v11 == kotlinx.coroutines.debug.internal.b.f92776c) {
                aVarN = aVarN.n();
                f92721d.set(this, aVarN);
            }
        }
        return v11;
    }

    private final /* synthetic */ void l(Object obj) {
        this.core$volatile = obj;
    }

    private final /* synthetic */ void m(int i10) {
        this._size$volatile = i10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Iterator<K> it2 = keySet().iterator();
        while (it2.hasNext()) {
            remove(it2.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return (V) ((a) f92721d.get(this)).e(obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new c(new Function2<K, V, Map.Entry<K, V>>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$entries$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Map.Entry<K, V> invoke(@NotNull K k10, @NotNull V v10) {
                return new ConcurrentWeakMap.b(k10, v10);
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<K> getKeys() {
        return new c(new Function2<K, V, K>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$keys$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final K invoke(@NotNull K k10, @NotNull V v10) {
                return k10;
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return f92720c.get(this);
    }

    public final void k() {
        if (!(this.f92722b != null)) {
            throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
        }
        while (true) {
            try {
                Reference<? extends K> referenceRemove = this.f92722b.remove();
                Intrinsics.checkNotNull(referenceRemove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                d((g) referenceRemove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K k10, @NotNull V v10) {
        V vJ = (V) a.m((a) f92721d.get(this), k10, v10, null, 4, null);
        if (vJ == kotlinx.coroutines.debug.internal.b.f92776c) {
            vJ = j(k10, v10);
        }
        if (vJ == null) {
            f92720c.incrementAndGet(this);
        }
        return vJ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@Nullable Object obj) {
        if (obj == 0) {
            return null;
        }
        V vJ = (V) a.m((a) f92721d.get(this), obj, null, null, 4, null);
        if (vJ == kotlinx.coroutines.debug.internal.b.f92776c) {
            vJ = j(obj, null);
        }
        if (vJ != null) {
            f92720c.decrementAndGet(this);
        }
        return vJ;
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10);
    }

    public ConcurrentWeakMap(boolean z10) {
        this.core$volatile = new a(16);
        this.f92722b = z10 ? new ReferenceQueue<>() : null;
    }
}
