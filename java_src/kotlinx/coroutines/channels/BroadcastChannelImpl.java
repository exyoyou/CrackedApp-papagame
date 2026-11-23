package kotlinx.coroutines.channels;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,411:1\n11#2:412\n11#2:413\n11#2:417\n11#2:420\n11#2:426\n11#2:427\n11#2:433\n11#2:436\n11#2:437\n11#2:438\n766#3:414\n857#3,2:415\n1855#3,2:418\n1747#3,3:421\n1855#3,2:424\n1855#3,2:428\n766#3:430\n857#3,2:431\n1855#3,2:434\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n163#1:412\n185#1:413\n210#1:417\n234#1:420\n276#1:426\n328#1:427\n340#1:433\n352#1:436\n379#1:437\n391#1:438\n186#1:414\n186#1:415,2\n223#1:418,2\n239#1:421,3\n248#1:424,2\n330#1:428,2\n335#1:430\n335#1:431,2\n343#1:434,2\n*E\n"})
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements d<E> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f92363n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    private final ReentrantLock f92364o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotNull
    private List<? extends BufferedChannel<E>> f92365p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private Object f92366q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NotNull
    private final HashMap<kotlinx.coroutines.selects.j<?>, Object> f92367r;

    @SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,411:1\n11#2:412\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n359#1:412\n*E\n"})
    private final class a extends BufferedChannel<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            super(BroadcastChannelImpl.this.m2(), null, 2, 0 == true ? 1 : 0);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* JADX INFO: renamed from: j2, reason: merged with bridge method [inline-methods] */
        public boolean N(@Nullable Throwable th) {
            ReentrantLock reentrantLock = ((BroadcastChannelImpl) BroadcastChannelImpl.this).f92364o;
            BroadcastChannelImpl<E> broadcastChannelImpl = BroadcastChannelImpl.this;
            reentrantLock.lock();
            try {
                broadcastChannelImpl.r2(this);
                return super.N(th);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    private final class b extends n<E> {
        public b() {
            super(1, BufferOverflow.DROP_OLDEST, null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* JADX INFO: renamed from: n2, reason: merged with bridge method [inline-methods] */
        public boolean N(@Nullable Throwable th) {
            BroadcastChannelImpl.this.r2(this);
            return super.N(th);
        }
    }

    public BroadcastChannelImpl(int i10) {
        super(0, null);
        this.f92363n = i10;
        if (i10 >= 1 || i10 == -1) {
            this.f92364o = new ReentrantLock();
            this.f92365p = CollectionsKt__CollectionsKt.emptyList();
            this.f92366q = e.f92692a;
            this.f92367r = new HashMap<>();
            return;
        }
        throw new IllegalArgumentException(("BroadcastChannel capacity must be positive or Channel.CONFLATED, but " + i10 + " was specified").toString());
    }

    public static /* synthetic */ void o2() {
    }

    public static /* synthetic */ void q2() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void r2(ReceiveChannel<? extends E> receiveChannel) {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            List<? extends BufferedChannel<E>> list = this.f92365p;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj) != receiveChannel) {
                    arrayList.add(obj);
                }
            }
            this.f92365p = arrayList;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    public boolean A() {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            return super.A();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean N(@Nullable Throwable th) {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            Iterator<T> it2 = this.f92365p.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).N(th);
            }
            this.f92366q = e.f92692a;
            return super.N(th);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    public boolean U(@Nullable Throwable th) {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            Iterator<T> it2 = this.f92365p.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).U(th);
            }
            List<? extends BufferedChannel<E>> list = this.f92365p;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj).H0()) {
                    arrayList.add(obj);
                }
            }
            this.f92365p = arrayList;
            return super.U(th);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007a -> B:28:0x007d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    @org.jetbrains.annotations.Nullable
    public java.lang.Object V(E r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r0 = (kotlinx.coroutines.channels.BroadcastChannelImpl$send$1) r0
            int r1 = r0.f92379g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f92379g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r0 = new kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f92377e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f92379g
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.f92376d
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r2 = r0.f92375c
            java.lang.Object r4 = r0.f92374b
            kotlinx.coroutines.channels.BroadcastChannelImpl r4 = (kotlinx.coroutines.channels.BroadcastChannelImpl) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7d
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.locks.ReentrantLock r8 = r6.f92364o
            r8.lock()
            boolean r2 = r6.A()     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L96
            int r2 = r6.f92363n     // Catch: java.lang.Throwable -> L9b
            r4 = -1
            if (r2 != r4) goto L50
            r6.f92366q = r7     // Catch: java.lang.Throwable -> L9b
        L50:
            java.util.List<? extends kotlinx.coroutines.channels.BufferedChannel<E>> r2 = r6.f92365p     // Catch: java.lang.Throwable -> L9b
            r8.unlock()
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r8 = r2.iterator()
            r4 = r6
            r5 = r8
            r8 = r7
            r7 = r5
        L5f:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L93
            java.lang.Object r2 = r7.next()
            kotlinx.coroutines.channels.BufferedChannel r2 = (kotlinx.coroutines.channels.BufferedChannel) r2
            r0.f92374b = r4
            r0.f92375c = r8
            r0.f92376d = r7
            r0.f92379g = r3
            java.lang.Object r2 = r2.E1(r8, r0)
            if (r2 != r1) goto L7a
            return r1
        L7a:
            r5 = r2
            r2 = r8
            r8 = r5
        L7d:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L91
            boolean r8 = r4.A()
            if (r8 != 0) goto L8c
            goto L91
        L8c:
            java.lang.Throwable r7 = r4.z0()
            throw r7
        L91:
            r8 = r2
            goto L5f
        L93:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L96:
            java.lang.Throwable r7 = r6.z0()     // Catch: java.lang.Throwable -> L9b
            throw r7     // Catch: java.lang.Throwable -> L9b
        L9b:
            r7 = move-exception
            r8.unlock()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.V(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.d
    @NotNull
    public ReceiveChannel<E> m() {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            a bVar = this.f92363n == -1 ? new b() : new a();
            if (A() && this.f92366q == e.f92692a) {
                ((BufferedChannel) bVar).U(j0());
                return bVar;
            }
            if (this.f92366q != e.f92692a) {
                ((BufferedChannel) bVar).s(n2());
            }
            this.f92365p = CollectionsKt___CollectionsKt.plus((Collection<? extends ReceiveChannel<E>>) this.f92365p, bVar);
            return bVar;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int m2() {
        return this.f92363n;
    }

    public final E n2() throws Throwable {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            if (A()) {
                Throwable thJ0 = j0();
                if (thJ0 == null) {
                    throw new IllegalStateException("This broadcast channel is closed");
                }
                throw thJ0;
            }
            if (this.f92366q == e.f92692a) {
                throw new IllegalStateException("No value".toString());
            }
            E e10 = (E) this.f92366q;
            reentrantLock.unlock();
            return e10;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Nullable
    public final E p2() {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            E e10 = null;
            if (!D() && this.f92366q != e.f92692a) {
                e10 = (E) this.f92366q;
            }
            return e10;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            if (A()) {
                Object objS = super.s(e10);
                reentrantLock.unlock();
                return objS;
            }
            List<? extends BufferedChannel<E>> list = this.f92365p;
            boolean z10 = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (((BufferedChannel) it2.next()).U1()) {
                        z10 = true;
                        break;
                    }
                }
            }
            if (z10) {
                Object objB = j.f92703b.b();
                reentrantLock.unlock();
                return objB;
            }
            if (this.f92363n == -1) {
                this.f92366q = e10;
            }
            Iterator<T> it3 = this.f92365p.iterator();
            while (it3.hasNext()) {
                ((BufferedChannel) it3.next()).s(e10);
            }
            Object objC = j.f92703b.c(Unit.INSTANCE);
            reentrantLock.unlock();
            return objC;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (this.f92366q != e.f92692a) {
            str = "CONFLATED_ELEMENT=" + this.f92366q + "; ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("BROADCAST=<");
        sb2.append(super.toString());
        sb2.append(">; SUBSCRIBERS=");
        sb2.append(CollectionsKt___CollectionsKt.joinToString$default(this.f92365p, ";", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, 0, null, null, 56, null));
        return sb2.toString();
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected void y1(@NotNull kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj) {
        ReentrantLock reentrantLock = this.f92364o;
        reentrantLock.lock();
        try {
            Object objRemove = this.f92367r.remove(jVar);
            if (objRemove != null) {
                jVar.f(objRemove);
                reentrantLock.unlock();
            } else {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                kotlinx.coroutines.j.f(m0.a(jVar.getContext()), null, CoroutineStart.UNDISPATCHED, new BroadcastChannelImpl$registerSelectForSend$2(this, obj, jVar, null), 1, null);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
