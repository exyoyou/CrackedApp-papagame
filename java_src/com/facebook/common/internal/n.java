package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class n {
    private n() {
    }

    public static List<Throwable> a(Throwable throwable) {
        i.i(throwable);
        ArrayList arrayList = new ArrayList(4);
        while (throwable != null) {
            arrayList.add(throwable);
            throwable = throwable.getCause();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static Throwable b(Throwable throwable) {
        while (true) {
            Throwable cause = throwable.getCause();
            if (cause == null) {
                return throwable;
            }
            throwable = cause;
        }
    }

    public static String c(Throwable throwable) {
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static RuntimeException d(Throwable throwable) throws Throwable {
        f((Throwable) i.i(throwable));
        throw new RuntimeException(throwable);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <X extends Throwable> void e(@Nullable Throwable throwable, Class<X> declaredType) throws Throwable {
        if (throwable != null && declaredType.isInstance(throwable)) {
            throw declaredType.cast(throwable);
        }
    }

    public static void f(@Nullable Throwable throwable) throws Throwable {
        e(throwable, Error.class);
        e(throwable, RuntimeException.class);
    }

    public static <X extends Throwable> void g(@Nullable Throwable throwable, Class<X> declaredType) throws Throwable {
        e(throwable, declaredType);
        f(throwable);
    }

    public static <X1 extends Throwable, X2 extends Throwable> void h(@Nullable Throwable throwable, Class<X1> declaredType1, Class<X2> declaredType2) throws Throwable {
        i.i(declaredType2);
        e(throwable, declaredType1);
        g(throwable, declaredType2);
    }
}
