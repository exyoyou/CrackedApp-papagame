package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f30899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f30900d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private com.google.android.material.resources.e f30903g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f30897a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.material.resources.g f30898b = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30901e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private WeakReference<b> f30902f = new WeakReference<>(null);

    class a extends com.google.android.material.resources.g {
        a() {
        }

        @Override // com.google.android.material.resources.g
        public void a(int i10) {
            d0.this.f30901e = true;
            b bVar = (b) d0.this.f30902f.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.google.android.material.resources.g
        public void b(@NonNull Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            d0.this.f30901e = true;
            b bVar = (b) d0.this.f30902f.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public d0(@Nullable b bVar) {
        k(bVar);
    }

    private float c(@Nullable String str) {
        if (str == null) {
            return 0.0f;
        }
        return Math.abs(this.f30897a.getFontMetrics().ascent);
    }

    private float d(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f30897a.measureText(charSequence, 0, charSequence.length());
    }

    private void j(String str) {
        this.f30899c = d(str);
        this.f30900d = c(str);
        this.f30901e = false;
    }

    @Nullable
    public com.google.android.material.resources.e e() {
        return this.f30903g;
    }

    public float f(@Nullable String str) {
        if (!this.f30901e) {
            return this.f30900d;
        }
        j(str);
        return this.f30900d;
    }

    @NonNull
    public TextPaint g() {
        return this.f30897a;
    }

    public float h(String str) {
        if (!this.f30901e) {
            return this.f30899c;
        }
        j(str);
        return this.f30899c;
    }

    public boolean i() {
        return this.f30901e;
    }

    public void k(@Nullable b bVar) {
        this.f30902f = new WeakReference<>(bVar);
    }

    public void l(@Nullable com.google.android.material.resources.e eVar, Context context) {
        if (this.f30903g != eVar) {
            this.f30903g = eVar;
            if (eVar != null) {
                eVar.o(context, this.f30897a, this.f30898b);
                b bVar = this.f30902f.get();
                if (bVar != null) {
                    this.f30897a.drawableState = bVar.getState();
                }
                eVar.n(context, this.f30897a, this.f30898b);
                this.f30901e = true;
            }
            b bVar2 = this.f30902f.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void m(boolean z10) {
        this.f30901e = z10;
    }

    public void n(boolean z10) {
        this.f30901e = z10;
    }

    public void o(Context context) {
        this.f30903g.n(context, this.f30897a, this.f30898b);
    }
}
