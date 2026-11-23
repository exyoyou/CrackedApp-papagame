package dagger.hilt.android.internal.lifecycle;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class h implements dagger.hilt.android.a, dagger.hilt.android.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<dagger.hilt.android.lifecycle.a.InterfaceC1154a> f90783a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f90784b = false;

    private void d() {
        if (this.f90784b) {
            throw new IllegalStateException("There was a race between the call to add/remove an OnClearedListener and onCleared(). This can happen when posting to the Main thread from a background thread, which is not supported.");
        }
    }

    @Override // dagger.hilt.android.lifecycle.a
    public void a(@NonNull dagger.hilt.android.lifecycle.a.InterfaceC1154a listener) {
        fb.b.a();
        d();
        this.f90783a.remove(listener);
    }

    @Override // dagger.hilt.android.lifecycle.a
    public void b(@NonNull dagger.hilt.android.lifecycle.a.InterfaceC1154a listener) {
        fb.b.a();
        d();
        this.f90783a.add(listener);
    }

    public void c() {
        fb.b.a();
        this.f90784b = true;
        Iterator<dagger.hilt.android.lifecycle.a.InterfaceC1154a> it2 = this.f90783a.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
    }
}
