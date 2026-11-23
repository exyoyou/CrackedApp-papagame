package kotlinx.coroutines.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nOnDemandAllocatingPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPoolKt\n*L\n1#1,103:1\n37#1:104\n37#1:105\n28#1,10:106\n37#1:126\n1549#2:116\n1620#2,2:117\n1622#2:121\n1549#2:122\n1620#2,3:123\n97#3,2:119\n*S KotlinDebug\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n*L\n31#1:104\n50#1:105\n72#1:106,10\n88#1:126\n73#1:116\n73#1:117,2\n73#1:121\n87#1:122\n87#1:123,3\n75#1:119,2\n*E\n"})
public final class g0<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93499d = AtomicIntegerFieldUpdater.newUpdater(g0.class, "controlState$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Function1<Integer, T> f93501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f93502c;
    private volatile /* synthetic */ int controlState$volatile;

    /* JADX WARN: Multi-variable type inference failed */
    public g0(int i10, @NotNull Function1<? super Integer, ? extends T> function1) {
        this.f93500a = i10;
        this.f93501b = function1;
        this.f93502c = new AtomicReferenceArray(i10);
    }

    private final /* synthetic */ int c() {
        return this.controlState$volatile;
    }

    private final /* synthetic */ AtomicReferenceArray e() {
        return this.f93502c;
    }

    private final boolean f(int i10) {
        return (i10 & Integer.MIN_VALUE) != 0;
    }

    private final /* synthetic */ void g(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void h(int i10) {
        this.controlState$volatile = i10;
    }

    private final int j() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93499d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((i10 & Integer.MIN_VALUE) != 0) {
                return 0;
            }
        } while (!f93499d.compareAndSet(this, i10, Integer.MIN_VALUE | i10));
        return i10;
    }

    public final boolean a() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93499d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((Integer.MIN_VALUE & i10) != 0) {
                return false;
            }
            if (i10 >= this.f93500a) {
                return true;
            }
        } while (!f93499d.compareAndSet(this, i10, i10 + 1));
        e().set(i10, this.f93501b.invoke(Integer.valueOf(i10)));
        return true;
    }

    @NotNull
    public final List<T> b() {
        int i10;
        Object andSet;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93499d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if ((i10 & Integer.MIN_VALUE) != 0) {
                i10 = 0;
                break;
            }
        } while (!f93499d.compareAndSet(this, i10, Integer.MIN_VALUE | i10));
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, i10);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it2 = intRangeUntil.iterator();
        while (it2.hasNext()) {
            int iNextInt = ((IntIterator) it2).nextInt();
            do {
                andSet = e().getAndSet(iNextInt, null);
            } while (andSet == null);
            arrayList.add(andSet);
        }
        return arrayList;
    }

    @NotNull
    public final String i() {
        int i10 = f93499d.get(this);
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, Integer.MAX_VALUE & i10);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it2 = intRangeUntil.iterator();
        while (it2.hasNext()) {
            arrayList.add(e().get(((IntIterator) it2).nextInt()));
        }
        return arrayList.toString() + ((i10 & Integer.MIN_VALUE) != 0 ? "[closed]" : "");
    }

    @NotNull
    public String toString() {
        return "OnDemandAllocatingPool(" + i() + ')';
    }
}
