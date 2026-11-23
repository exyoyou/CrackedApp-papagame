package com.google.android.material.color;

import android.app.Activity;
import android.graphics.Bitmap;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.color.utilities.n6;
import com.google.android.material.color.utilities.z5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final m.f f30129e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final m.e f30130f = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @StyleRes
    private final int f30131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final m.f f30132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final m.e f30133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Integer f30134d;

    class a implements m.f {
        a() {
        }

        @Override // com.google.android.material.color.m.f
        public boolean a(@NonNull Activity activity, int i10) {
            return true;
        }
    }

    class b implements m.e {
        b() {
        }

        @Override // com.google.android.material.color.m.e
        public void a(@NonNull Activity activity) {
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @StyleRes
        private int f30135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private m.f f30136b = n.f30129e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private m.e f30137c = n.f30130f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private Bitmap f30138d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        private Integer f30139e;

        @NonNull
        public n f() {
            return new n(this, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        public c g(@ColorInt int i10) {
            this.f30138d = null;
            this.f30139e = Integer.valueOf(i10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public c h(@NonNull Bitmap bitmap) {
            this.f30138d = bitmap;
            this.f30139e = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public c i(@NonNull m.e eVar) {
            this.f30137c = eVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public c j(@NonNull m.f fVar) {
            this.f30136b = fVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public c k(@StyleRes int i10) {
            this.f30135a = i10;
            return this;
        }
    }

    /* synthetic */ n(c cVar, a aVar) {
        this(cVar);
    }

    private static int c(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return n6.a(z5.a(iArr, 128)).get(0).intValue();
    }

    @Nullable
    public Integer d() {
        return this.f30134d;
    }

    @NonNull
    public m.e e() {
        return this.f30133c;
    }

    @NonNull
    public m.f f() {
        return this.f30132b;
    }

    @StyleRes
    public int g() {
        return this.f30131a;
    }

    private n(c cVar) {
        this.f30131a = cVar.f30135a;
        this.f30132b = cVar.f30136b;
        this.f30133c = cVar.f30137c;
        if (cVar.f30139e != null) {
            this.f30134d = cVar.f30139e;
        } else if (cVar.f30138d != null) {
            this.f30134d = Integer.valueOf(c(cVar.f30138d));
        }
    }
}
