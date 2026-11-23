package com.google.android.material.color;

import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @StyleRes
    private final int f30038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @StyleRes
    private final int f30039b;

    /* JADX INFO: renamed from: com.google.android.material.color.b$b, reason: collision with other inner class name */
    public static class C0599b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @StyleRes
        private int f30040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @StyleRes
        private int f30041b;

        @NonNull
        public b c() {
            return new b(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public C0599b d(@StyleRes int i10) {
            this.f30041b = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public C0599b e(@StyleRes int i10) {
            this.f30040a = i10;
            return this;
        }
    }

    @StyleRes
    public int a() {
        return this.f30039b;
    }

    @StyleRes
    public int b() {
        return this.f30038a;
    }

    private b(C0599b c0599b) {
        this.f30038a = c0599b.f30040a;
        this.f30039b = c0599b.f30041b;
    }
}
