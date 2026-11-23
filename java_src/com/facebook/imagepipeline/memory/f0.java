package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedList;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
class f0<V> extends l<V> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinkedList<com.facebook.common.references.e<V>> f28092g;

    public f0(int itemSize, int maxLength, int inUseLength) {
        super(itemSize, maxLength, inUseLength, false);
        this.f28092g = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.l
    void a(V value) {
        com.facebook.common.references.e<V> eVarPoll = this.f28092g.poll();
        if (eVarPoll == null) {
            eVarPoll = new com.facebook.common.references.e<>();
        }
        eVarPoll.c(value);
        this.f28163c.add(eVarPoll);
    }

    @Override // com.facebook.imagepipeline.memory.l
    @Nullable
    public V h() {
        com.facebook.common.references.e<V> eVar = (com.facebook.common.references.e) this.f28163c.poll();
        com.facebook.common.internal.i.i(eVar);
        V vB = eVar.b();
        eVar.a();
        this.f28092g.add(eVar);
        return vB;
    }
}
