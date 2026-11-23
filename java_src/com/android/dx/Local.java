package com.android.dx;

import com.android.dx.rop.code.RegisterSpec;

/* JADX INFO: loaded from: classes7.dex */
public final class Local<T> {
    private final Code code;
    private int reg = -1;
    private RegisterSpec spec;
    final TypeId<T> type;

    private Local(Code code, TypeId<T> typeId) {
        this.code = code;
        this.type = typeId;
    }

    static <T> Local<T> get(Code code, TypeId<T> typeId) {
        return new Local<>(code, typeId);
    }

    public TypeId getType() {
        return this.type;
    }

    int initialize(int i10) {
        this.reg = i10;
        this.spec = RegisterSpec.make(i10, this.type.ropType);
        return size();
    }

    int size() {
        return this.type.ropType.getCategory();
    }

    RegisterSpec spec() {
        if (this.spec == null) {
            this.code.initializeLocals();
            if (this.spec == null) {
                throw new AssertionError();
            }
        }
        return this.spec;
    }

    public String toString() {
        return "v" + this.reg + "(" + this.type + ")";
    }
}
