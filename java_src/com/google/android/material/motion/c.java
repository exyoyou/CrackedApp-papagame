package com.google.android.material.motion;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.BackEventCompat;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final d f31040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final com.google.android.material.motion.b f31041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final View f31042c;

    @RequiresApi(33)
    private static class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private OnBackInvokedCallback f31043a;

        private b() {
        }

        @Override // com.google.android.material.motion.c.d
        @DoNotInline
        public void a(@NonNull View view) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (onBackInvokedDispatcherFindOnBackInvokedDispatcher == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f31043a);
            this.f31043a = null;
        }

        @Override // com.google.android.material.motion.c.d
        @DoNotInline
        public void b(@NonNull com.google.android.material.motion.b bVar, @NonNull View view, boolean z10) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f31043a == null && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback onBackInvokedCallbackC = c(bVar);
                this.f31043a = onBackInvokedCallbackC;
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(z10 ? 1000000 : 0, onBackInvokedCallbackC);
            }
        }

        OnBackInvokedCallback c(@NonNull final com.google.android.material.motion.b bVar) {
            Objects.requireNonNull(bVar);
            return new OnBackInvokedCallback() { // from class: com.google.android.material.motion.e
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    bVar.d();
                }
            };
        }

        boolean d() {
            return this.f31043a != null;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.motion.c$c, reason: collision with other inner class name */
    @RequiresApi(34)
    private static class C0604c extends b {

        /* JADX INFO: renamed from: com.google.android.material.motion.c$c$a */
        class a implements OnBackAnimationCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.google.android.material.motion.b f31044a;

            a(com.google.android.material.motion.b bVar) {
                this.f31044a = bVar;
            }

            @Override // android.window.OnBackAnimationCallback
            public void onBackCancelled() {
                if (C0604c.this.d()) {
                    this.f31044a.f();
                }
            }

            @Override // android.window.OnBackInvokedCallback
            public void onBackInvoked() {
                this.f31044a.d();
            }

            @Override // android.window.OnBackAnimationCallback
            public void onBackProgressed(@NonNull BackEvent backEvent) {
                if (C0604c.this.d()) {
                    this.f31044a.c(new BackEventCompat(backEvent));
                }
            }

            @Override // android.window.OnBackAnimationCallback
            public void onBackStarted(@NonNull BackEvent backEvent) {
                if (C0604c.this.d()) {
                    this.f31044a.b(new BackEventCompat(backEvent));
                }
            }
        }

        private C0604c() {
            super();
        }

        @Override // com.google.android.material.motion.c.b
        OnBackInvokedCallback c(@NonNull com.google.android.material.motion.b bVar) {
            return new a(bVar);
        }
    }

    private interface d {
        void a(@NonNull View view);

        void b(@NonNull com.google.android.material.motion.b bVar, @NonNull View view, boolean z10);
    }

    public <T extends View & com.google.android.material.motion.b> c(@NonNull T t10) {
        this(t10, t10);
    }

    @Nullable
    private static d a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            return new C0604c();
        }
        if (i10 >= 33) {
            return new b();
        }
        return null;
    }

    private void d(boolean z10) {
        d dVar = this.f31040a;
        if (dVar != null) {
            dVar.b(this.f31041b, this.f31042c, z10);
        }
    }

    public boolean b() {
        return this.f31040a != null;
    }

    public void c() {
        d(false);
    }

    public void e() {
        d(true);
    }

    public void f() {
        d dVar = this.f31040a;
        if (dVar != null) {
            dVar.a(this.f31042c);
        }
    }

    public c(@NonNull com.google.android.material.motion.b bVar, @NonNull View view) {
        this.f31040a = a();
        this.f31041b = bVar;
        this.f31042c = view;
    }
}
