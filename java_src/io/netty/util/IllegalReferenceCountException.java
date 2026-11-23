package io.netty.util;

/* JADX INFO: loaded from: classes.dex */
public class IllegalReferenceCountException extends IllegalStateException {
    private static final long serialVersionUID = -2507492394288153468L;

    public IllegalReferenceCountException() {
    }

    public IllegalReferenceCountException(int i10) {
        this("refCnt: " + i10);
    }

    public IllegalReferenceCountException(int i10, int i11) {
        StringBuilder sb2;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("refCnt: ");
        sb3.append(i10);
        sb3.append(", ");
        if (i11 > 0) {
            sb2 = new StringBuilder();
            sb2.append("increment: ");
        } else {
            sb2 = new StringBuilder();
            sb2.append("decrement: ");
            i11 = -i11;
        }
        sb2.append(i11);
        sb3.append(sb2.toString());
        this(sb3.toString());
    }

    public IllegalReferenceCountException(String str) {
        super(str);
    }

    public IllegalReferenceCountException(String str, Throwable th) {
        super(str, th);
    }

    public IllegalReferenceCountException(Throwable th) {
        super(th);
    }
}
