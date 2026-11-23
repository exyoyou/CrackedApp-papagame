package f4;

import com.facebook.common.references.SharedReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface a {

    /* JADX INFO: renamed from: f4.a$a, reason: collision with other inner class name */
    public interface InterfaceC1158a {
        void a(SharedReference<Object> reference, @Nullable Throwable stacktrace);
    }

    void a(SharedReference<Object> reference, @Nullable Throwable stacktrace);

    void b(@Nullable InterfaceC1158a listener);

    boolean c();
}
