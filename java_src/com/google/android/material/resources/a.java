package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f31333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0606a f31334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f31335c;

    /* JADX INFO: renamed from: com.google.android.material.resources.a$a, reason: collision with other inner class name */
    public interface InterfaceC0606a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0606a interfaceC0606a, Typeface typeface) {
        this.f31333a = typeface;
        this.f31334b = interfaceC0606a;
    }

    private void d(Typeface typeface) {
        if (this.f31335c) {
            return;
        }
        this.f31334b.a(typeface);
    }

    @Override // com.google.android.material.resources.g
    public void a(int i10) {
        d(this.f31333a);
    }

    @Override // com.google.android.material.resources.g
    public void b(Typeface typeface, boolean z10) {
        d(typeface);
    }

    public void c() {
        this.f31335c = true;
    }
}
