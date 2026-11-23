package dagger.hilt.android.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public interface a {

    /* JADX INFO: renamed from: dagger.hilt.android.lifecycle.a$a, reason: collision with other inner class name */
    public interface InterfaceC1154a {
        void a();
    }

    @MainThread
    void a(@NonNull InterfaceC1154a listener);

    @MainThread
    void b(@NonNull InterfaceC1154a listener);
}
