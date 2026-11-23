package com.facebook.imagepipeline.decoder;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f28002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final List<com.facebook.imageformat.c.a> f28003b;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f28004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private List<com.facebook.imageformat.c.a> f28005b;

        public b c(com.facebook.imageformat.c imageFormat, com.facebook.imageformat.c.a imageFormatChecker, com.facebook.imagepipeline.decoder.b decoder) {
            if (this.f28005b == null) {
                this.f28005b = new ArrayList();
            }
            this.f28005b.add(imageFormatChecker);
            e(imageFormat, decoder);
            return this;
        }

        public c d() {
            return new c(this);
        }

        public b e(com.facebook.imageformat.c imageFormat, com.facebook.imagepipeline.decoder.b decoder) {
            if (this.f28004a == null) {
                this.f28004a = new HashMap();
            }
            this.f28004a.put(imageFormat, decoder);
            return this;
        }
    }

    public static b c() {
        return new b();
    }

    @Nullable
    public Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> a() {
        return this.f28002a;
    }

    @Nullable
    public List<com.facebook.imageformat.c.a> b() {
        return this.f28003b;
    }

    private c(b builder) {
        this.f28002a = builder.f28004a;
        this.f28003b = builder.f28005b;
    }
}
