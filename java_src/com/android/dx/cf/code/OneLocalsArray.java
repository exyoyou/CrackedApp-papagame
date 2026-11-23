package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
public class OneLocalsArray extends LocalsArray {
    private final TypeBearer[] locals;

    public OneLocalsArray(int i10) {
        super(i10 != 0);
        this.locals = new TypeBearer[i10];
    }

    private static TypeBearer throwSimException(int i10, String str) {
        throw new SimException("local " + Hex.u2(i10) + ": " + str);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void annotate(ExceptionWithContext exceptionWithContext) {
        int i10 = 0;
        while (true) {
            TypeBearer[] typeBearerArr = this.locals;
            if (i10 >= typeBearerArr.length) {
                return;
            }
            TypeBearer typeBearer = typeBearerArr[i10];
            exceptionWithContext.addContext("locals[" + Hex.u2(i10) + "]: " + (typeBearer == null ? "<invalid>" : typeBearer.toString()));
            i10++;
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer get(int i10) {
        TypeBearer typeBearer = this.locals[i10];
        return typeBearer == null ? throwSimException(i10, "invalid") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory1(int i10) {
        TypeBearer typeBearer = get(i10);
        Type type = typeBearer.getType();
        if (type.isUninitialized()) {
            return throwSimException(i10, "uninitialized instance");
        }
        return type.isCategory2() ? throwSimException(i10, "category-2") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory2(int i10) {
        TypeBearer typeBearer = get(i10);
        return typeBearer.getType().isCategory1() ? throwSimException(i10, "category-1") : typeBearer;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public int getMaxLocals() {
        return this.locals.length;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getOrNull(int i10) {
        return this.locals[i10];
    }

    @Override // com.android.dx.cf.code.LocalsArray
    protected OneLocalsArray getPrimary() {
        return this;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void invalidate(int i10) {
        throwIfImmutable();
        this.locals[i10] = null;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void makeInitialized(Type type) {
        int length = this.locals.length;
        if (length == 0) {
            return;
        }
        throwIfImmutable();
        Type initializedType = type.getInitializedType();
        for (int i10 = 0; i10 < length; i10++) {
            TypeBearer[] typeBearerArr = this.locals;
            if (typeBearerArr[i10] == type) {
                typeBearerArr[i10] = initializedType;
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArray merge(LocalsArray localsArray) {
        return localsArray instanceof OneLocalsArray ? merge((OneLocalsArray) localsArray) : localsArray.merge(this);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i10) {
        return new LocalsArraySet(getMaxLocals()).mergeWithSubroutineCaller(localsArray, i10);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(int i10, TypeBearer typeBearer) {
        int i11;
        TypeBearer typeBearer2;
        throwIfImmutable();
        try {
            TypeBearer frameType = typeBearer.getFrameType();
            if (i10 < 0) {
                throw new IndexOutOfBoundsException("idx < 0");
            }
            if (frameType.getType().isCategory2()) {
                this.locals[i10 + 1] = null;
            }
            TypeBearer[] typeBearerArr = this.locals;
            typeBearerArr[i10] = frameType;
            if (i10 == 0 || (typeBearer2 = typeBearerArr[(i11 = i10 - 1)]) == null || !typeBearer2.getType().isCategory2()) {
                return;
            }
            this.locals[i11] = null;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (true) {
            TypeBearer[] typeBearerArr = this.locals;
            if (i10 >= typeBearerArr.length) {
                return sb2.toString();
            }
            TypeBearer typeBearer = typeBearerArr[i10];
            sb2.append("locals[" + Hex.u2(i10) + "]: " + (typeBearer == null ? "<invalid>" : typeBearer.toString()) + "\n");
            i10++;
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public OneLocalsArray copy() {
        OneLocalsArray oneLocalsArray = new OneLocalsArray(this.locals.length);
        TypeBearer[] typeBearerArr = this.locals;
        System.arraycopy(typeBearerArr, 0, oneLocalsArray.locals, 0, typeBearerArr.length);
        return oneLocalsArray;
    }

    public OneLocalsArray merge(OneLocalsArray oneLocalsArray) {
        try {
            return Merger.mergeLocals(this, oneLocalsArray);
        } catch (SimException e10) {
            e10.addContext("underlay locals:");
            annotate(e10);
            e10.addContext("overlay locals:");
            oneLocalsArray.annotate(e10);
            throw e10;
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(RegisterSpec registerSpec) {
        set(registerSpec.getReg(), registerSpec);
    }
}
