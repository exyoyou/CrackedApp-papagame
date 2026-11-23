package com.facebook.imagepipeline.core;

import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.SharedReference;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CloseableReference.c f27802a;

    /* JADX INFO: renamed from: com.facebook.imagepipeline.core.a$a, reason: collision with other inner class name */
    class C0571a implements CloseableReference.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f4.a f27803a;

        C0571a(final f4.a val$closeableReferenceLeakTracker) {
            this.f27803a = val$closeableReferenceLeakTracker;
        }

        @Override // com.facebook.common.references.CloseableReference.c
        public boolean a() {
            return this.f27803a.c();
        }

        @Override // com.facebook.common.references.CloseableReference.c
        public void b(SharedReference<Object> reference, @Nullable Throwable stacktrace) {
            this.f27803a.a(reference, stacktrace);
            Object objH = reference.h();
            i3.a.q0("Fresco", "Finalized without closing: %x %x (type = %s).\nStack:\n%s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(reference)), objH != null ? objH.getClass().getName() : "<value is null>", a.d(stacktrace));
        }
    }

    public a(final f4.a closeableReferenceLeakTracker) {
        this.f27802a = new C0571a(closeableReferenceLeakTracker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(@Nullable Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        tr.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public <U extends Closeable> CloseableReference<U> b(U u10) {
        return CloseableReference.s(u10, this.f27802a);
    }

    public <T> CloseableReference<T> c(T t10, com.facebook.common.references.g<T> resourceReleaser) {
        return CloseableReference.u(t10, resourceReleaser, this.f27802a);
    }
}
