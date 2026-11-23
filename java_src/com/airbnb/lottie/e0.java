package com.airbnb.lottie;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    final com.airbnb.lottie.network.e f5623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    final com.airbnb.lottie.network.d f5624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f5625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f5626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f5627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final AsyncUpdates f5628f;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private com.airbnb.lottie.network.e f5629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private com.airbnb.lottie.network.d f5630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f5631c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f5632d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f5633e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private AsyncUpdates f5634f = AsyncUpdates.AUTOMATIC;

        class a implements com.airbnb.lottie.network.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ File f5635a;

            a(File file) {
                this.f5635a = file;
            }

            @Override // com.airbnb.lottie.network.d
            @NonNull
            public File getCacheDir() {
                if (this.f5635a.isDirectory()) {
                    return this.f5635a;
                }
                throw new IllegalArgumentException("cache file must be a directory");
            }
        }

        /* JADX INFO: renamed from: com.airbnb.lottie.e0$b$b, reason: collision with other inner class name */
        class C0194b implements com.airbnb.lottie.network.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.airbnb.lottie.network.d f5637a;

            C0194b(com.airbnb.lottie.network.d dVar) {
                this.f5637a = dVar;
            }

            @Override // com.airbnb.lottie.network.d
            @NonNull
            public File getCacheDir() {
                File cacheDir = this.f5637a.getCacheDir();
                if (cacheDir.isDirectory()) {
                    return cacheDir;
                }
                throw new IllegalArgumentException("cache file must be a directory");
            }
        }

        @NonNull
        public e0 a() {
            return new e0(this.f5629a, this.f5630b, this.f5631c, this.f5632d, this.f5633e, this.f5634f);
        }

        @NonNull
        public b b(AsyncUpdates asyncUpdates) {
            this.f5634f = asyncUpdates;
            return this;
        }

        @NonNull
        public b c(boolean z10) {
            this.f5633e = z10;
            return this;
        }

        @NonNull
        public b d(boolean z10) {
            this.f5632d = z10;
            return this;
        }

        @NonNull
        public b e(boolean z10) {
            this.f5631c = z10;
            return this;
        }

        @NonNull
        public b f(@NonNull File file) {
            if (this.f5630b != null) {
                throw new IllegalStateException("There is already a cache provider!");
            }
            this.f5630b = new a(file);
            return this;
        }

        @NonNull
        public b g(@NonNull com.airbnb.lottie.network.d dVar) {
            if (this.f5630b != null) {
                throw new IllegalStateException("There is already a cache provider!");
            }
            this.f5630b = new C0194b(dVar);
            return this;
        }

        @NonNull
        public b h(@NonNull com.airbnb.lottie.network.e eVar) {
            this.f5629a = eVar;
            return this;
        }
    }

    private e0(@Nullable com.airbnb.lottie.network.e eVar, @Nullable com.airbnb.lottie.network.d dVar, boolean z10, boolean z11, boolean z12, AsyncUpdates asyncUpdates) {
        this.f5623a = eVar;
        this.f5624b = dVar;
        this.f5625c = z10;
        this.f5626d = z11;
        this.f5627e = z12;
        this.f5628f = asyncUpdates;
    }
}
