package com.mob.commons.dialog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PolicyThrowable extends Throwable {
    private int code;

    public PolicyThrowable() {
        super("Privacy policy is not accepted");
    }

    public int getCode() {
        return this.code;
    }

    public PolicyThrowable(String str) {
        super(str);
    }

    public PolicyThrowable(String str, Throwable th) {
        super(str, th);
    }

    public PolicyThrowable(int i10, String str) {
        this(str);
        this.code = i10;
    }

    public PolicyThrowable(int i10, String str, Throwable th) {
        this(str, th);
        this.code = i10;
    }

    public PolicyThrowable(Throwable th) {
        super(th);
    }
}
