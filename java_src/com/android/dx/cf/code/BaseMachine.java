package com.android.dx.cf.code;

import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseMachine implements Machine {
    private int argCount;
    private TypeBearer[] args;
    private SwitchList auxCases;
    private Constant auxCst;
    private ArrayList<Constant> auxInitValues;
    private int auxInt;
    private int auxTarget;
    private Type auxType;
    private int localIndex;
    private boolean localInfo;
    private RegisterSpec localTarget;
    private final Prototype prototype;
    private int resultCount;
    private TypeBearer[] results;

    public BaseMachine(Prototype prototype) {
        if (prototype == null) {
            throw new NullPointerException("prototype == null");
        }
        this.prototype = prototype;
        this.args = new TypeBearer[10];
        this.results = new TypeBearer[6];
        clearArgs();
    }

    public static void throwLocalMismatch(TypeBearer typeBearer, TypeBearer typeBearer2) {
        throw new SimException("local variable type mismatch: attempt to set or access a value of type " + typeBearer.toHuman() + " using a local variable of type " + typeBearer2.toHuman() + ". This is symptomatic of .class transformation tools that ignore local variable information.");
    }

    protected final void addResult(TypeBearer typeBearer) {
        if (typeBearer == null) {
            throw new NullPointerException("result == null");
        }
        TypeBearer[] typeBearerArr = this.results;
        int i10 = this.resultCount;
        typeBearerArr[i10] = typeBearer;
        this.resultCount = i10 + 1;
    }

    protected final TypeBearer arg(int i10) {
        if (i10 >= this.argCount) {
            throw new IllegalArgumentException("n >= argCount");
        }
        try {
            return this.args[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("n < 0");
        }
    }

    protected final int argCount() {
        return this.argCount;
    }

    protected final int argWidth() {
        int category = 0;
        for (int i10 = 0; i10 < this.argCount; i10++) {
            category += this.args[i10].getType().getCategory();
        }
        return category;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxCstArg(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        this.auxCst = constant;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxInitValues(ArrayList<Constant> arrayList) {
        this.auxInitValues = arrayList;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxIntArg(int i10) {
        this.auxInt = i10;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxSwitchArg(SwitchList switchList) {
        if (switchList == null) {
            throw new NullPointerException("cases == null");
        }
        this.auxCases = switchList;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxTargetArg(int i10) {
        this.auxTarget = i10;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void auxType(Type type) {
        this.auxType = type;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void clearArgs() {
        this.argCount = 0;
        this.auxType = null;
        this.auxInt = 0;
        this.auxCst = null;
        this.auxTarget = 0;
        this.auxCases = null;
        this.auxInitValues = null;
        this.localIndex = -1;
        this.localInfo = false;
        this.localTarget = null;
        this.resultCount = -1;
    }

    protected final void clearResult() {
        this.resultCount = 0;
    }

    protected final SwitchList getAuxCases() {
        return this.auxCases;
    }

    protected final Constant getAuxCst() {
        return this.auxCst;
    }

    protected final int getAuxInt() {
        return this.auxInt;
    }

    protected final int getAuxTarget() {
        return this.auxTarget;
    }

    protected final Type getAuxType() {
        return this.auxType;
    }

    protected final ArrayList<Constant> getInitValues() {
        return this.auxInitValues;
    }

    protected final int getLocalIndex() {
        return this.localIndex;
    }

    protected final boolean getLocalInfo() {
        return this.localInfo;
    }

    protected final RegisterSpec getLocalTarget(boolean z10) {
        if (this.localTarget == null) {
            return null;
        }
        if (this.resultCount != 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("local target with ");
            sb2.append(this.resultCount == 0 ? "no" : "multiple");
            sb2.append(" results");
            throw new SimException(sb2.toString());
        }
        TypeBearer typeBearer = this.results[0];
        Type type = typeBearer.getType();
        Type type2 = this.localTarget.getType();
        if (type == type2) {
            return z10 ? this.localTarget.withType(typeBearer) : this.localTarget;
        }
        if (!Merger.isPossiblyAssignableFrom(type2, type)) {
            throwLocalMismatch(type, type2);
            return null;
        }
        if (type2 == Type.OBJECT) {
            this.localTarget = this.localTarget.withType(typeBearer);
        }
        return this.localTarget;
    }

    @Override // com.android.dx.cf.code.Machine
    public Prototype getPrototype() {
        return this.prototype;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localArg(Frame frame, int i10) {
        clearArgs();
        this.args[0] = frame.getLocals().get(i10);
        this.argCount = 1;
        this.localIndex = i10;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localInfo(boolean z10) {
        this.localInfo = z10;
    }

    @Override // com.android.dx.cf.code.Machine
    public final void localTarget(int i10, Type type, LocalItem localItem) {
        this.localTarget = RegisterSpec.makeLocalOptional(i10, type, localItem);
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, int i10) {
        ExecutionStack stack = frame.getStack();
        clearArgs();
        if (i10 > this.args.length) {
            this.args = new TypeBearer[i10 + 10];
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            this.args[i11] = stack.pop();
        }
        this.argCount = i10;
    }

    protected final TypeBearer result(int i10) {
        if (i10 >= this.resultCount) {
            throw new IllegalArgumentException("n >= resultCount");
        }
        try {
            return this.results[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("n < 0");
        }
    }

    protected final int resultCount() {
        int i10 = this.resultCount;
        if (i10 >= 0) {
            return i10;
        }
        throw new SimException("results never set");
    }

    protected final int resultWidth() {
        int category = 0;
        for (int i10 = 0; i10 < this.resultCount; i10++) {
            category += this.results[i10].getType().getCategory();
        }
        return category;
    }

    protected final void setResult(TypeBearer typeBearer) {
        if (typeBearer == null) {
            throw new NullPointerException("result == null");
        }
        this.results[0] = typeBearer;
        this.resultCount = 1;
    }

    protected final void storeResults(Frame frame) {
        int i10 = this.resultCount;
        if (i10 < 0) {
            throw new SimException("results never set");
        }
        if (i10 == 0) {
            return;
        }
        if (this.localTarget != null) {
            frame.getLocals().set(getLocalTarget(false));
            return;
        }
        ExecutionStack stack = frame.getStack();
        for (int i11 = 0; i11 < this.resultCount; i11++) {
            if (this.localInfo) {
                stack.setLocal();
            }
            stack.push(this.results[i11]);
        }
    }

    @Override // com.android.dx.cf.code.Machine
    public void popArgs(Frame frame, Prototype prototype) {
        StdTypeList parameterTypes = prototype.getParameterTypes();
        int size = parameterTypes.size();
        popArgs(frame, size);
        for (int i10 = 0; i10 < size; i10++) {
            if (!Merger.isPossiblyAssignableFrom(parameterTypes.getType(i10), this.args[i10])) {
                throw new SimException("at stack depth " + ((size - 1) - i10) + ", expected type " + parameterTypes.getType(i10).toHuman() + " but found " + this.args[i10].getType().toHuman());
            }
        }
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type) {
        popArgs(frame, 1);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            return;
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2) {
        popArgs(frame, 2);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            if (Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
                return;
            }
            throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }

    @Override // com.android.dx.cf.code.Machine
    public final void popArgs(Frame frame, Type type, Type type2, Type type3) {
        popArgs(frame, 3);
        if (Merger.isPossiblyAssignableFrom(type, this.args[0])) {
            if (Merger.isPossiblyAssignableFrom(type2, this.args[1])) {
                if (Merger.isPossiblyAssignableFrom(type3, this.args[2])) {
                    return;
                }
                throw new SimException("expected type " + type3.toHuman() + " but found " + this.args[2].getType().toHuman());
            }
            throw new SimException("expected type " + type2.toHuman() + " but found " + this.args[1].getType().toHuman());
        }
        throw new SimException("expected type " + type.toHuman() + " but found " + this.args[0].getType().toHuman());
    }
}
