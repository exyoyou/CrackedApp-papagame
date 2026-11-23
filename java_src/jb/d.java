package jb;

/* JADX INFO: loaded from: classes8.dex */
public final class d {
    private d() {
    }

    public static void a(boolean expression, String errorMessageTemplate, Object... args) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(errorMessageTemplate, args));
        }
    }

    public static <T> T b(T reference) {
        reference.getClass();
        return reference;
    }

    public static <T> T c(T reference, String errorMessage) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(errorMessage);
    }

    public static void d(boolean expression, String errorMessageTemplate, Object... args) {
        if (!expression) {
            throw new IllegalStateException(String.format(errorMessageTemplate, args));
        }
    }
}
