package com.facebook.imagepipeline.image;

import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class c implements Closeable, g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f28025c = "CloseableImage";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<String> f28026d = new HashSet(Arrays.asList(ProducerContext.ExtraKeys.ENCODED_SIZE, ProducerContext.ExtraKeys.ENCODED_WIDTH, ProducerContext.ExtraKeys.ENCODED_HEIGHT, ProducerContext.ExtraKeys.SOURCE_URI, ProducerContext.ExtraKeys.IMAGE_FORMAT, "bitmap_config", "is_rounded"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f28027b = new HashMap();

    @Override // com.facebook.imagepipeline.image.g
    public j b() {
        return h.f28051d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract int d();

    public boolean e() {
        return false;
    }

    public void f(String extra, Object value) {
        if (f28026d.contains(extra)) {
            this.f28027b.put(extra, value);
        }
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        i3.a.q0(f28025c, "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public void g(@Nullable Map<String, Object> extras) {
        if (extras == null) {
            return;
        }
        for (String str : f28026d) {
            Object obj = extras.get(str);
            if (obj != null) {
                this.f28027b.put(str, obj);
            }
        }
    }

    @Override // com.facebook.imagepipeline.image.f
    public Map<String, Object> getExtras() {
        return this.f28027b;
    }

    public abstract boolean isClosed();
}
