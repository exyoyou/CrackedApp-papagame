package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedList;
import java.util.Queue;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@VisibleForTesting
@Nullsafe(Nullsafe.Mode.STRICT)
class l<V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f28160f = "BUCKET";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Queue f28163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f28164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28165e;

    public l(int itemSize, int maxLength, int inUseLength, boolean fixBucketsReinitialization) {
        com.facebook.common.internal.i.o(itemSize > 0);
        com.facebook.common.internal.i.o(maxLength >= 0);
        com.facebook.common.internal.i.o(inUseLength >= 0);
        this.f28161a = itemSize;
        this.f28162b = maxLength;
        this.f28163c = new LinkedList();
        this.f28165e = inUseLength;
        this.f28164d = fixBucketsReinitialization;
    }

    void a(V value) {
        this.f28163c.add(value);
    }

    public void b() {
        com.facebook.common.internal.i.o(this.f28165e > 0);
        this.f28165e--;
    }

    @Nullable
    @Deprecated
    public V c() {
        V vH = h();
        if (vH != null) {
            this.f28165e++;
        }
        return vH;
    }

    int d() {
        return this.f28163c.size();
    }

    public int e() {
        return this.f28165e;
    }

    public void f() {
        this.f28165e++;
    }

    public boolean g() {
        return this.f28165e + d() > this.f28162b;
    }

    @Nullable
    public V h() {
        return (V) this.f28163c.poll();
    }

    public void i(V value) {
        com.facebook.common.internal.i.i(value);
        if (this.f28164d) {
            com.facebook.common.internal.i.o(this.f28165e > 0);
            this.f28165e--;
            a(value);
        } else {
            int i10 = this.f28165e;
            if (i10 <= 0) {
                i3.a.w(f28160f, "Tried to release value %s from an empty bucket!", value);
            } else {
                this.f28165e = i10 - 1;
                a(value);
            }
        }
    }
}
