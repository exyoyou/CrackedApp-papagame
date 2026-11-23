package org.jboss.netty.util.internal;

/* JADX INFO: loaded from: classes10.dex */
public class k extends ThreadLocal<Boolean> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f95829a;

    public k() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean initialValue() {
        return this.f95829a ? Boolean.TRUE : Boolean.FALSE;
    }

    public k(boolean z10) {
        this.f95829a = z10;
    }
}
