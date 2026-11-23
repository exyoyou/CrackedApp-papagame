package com.android.dx.rop.code;

import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes7.dex */
public class InvokePolymorphicInsn extends Insn {
    private final CstMethodRef callSiteMethod;
    private final CstProtoRef callSiteProto;
    private final TypeList catches;
    private final CstMethodRef polymorphicMethod;
    private static final CstString DEFAULT_DESCRIPTOR = new CstString("([Ljava/lang/Object;)Ljava/lang/Object;");
    private static final CstString VARHANDLE_SET_DESCRIPTOR = new CstString("([Ljava/lang/Object;)V");
    private static final CstString VARHANDLE_COMPARE_AND_SET_DESCRIPTOR = new CstString("([Ljava/lang/Object;)Z");

    public InvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, CstMethodRef cstMethodRef) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() != 6) {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
        if (typeList == null) {
            throw new NullPointerException("catches == null");
        }
        this.catches = typeList;
        if (cstMethodRef == null) {
            throw new NullPointerException("callSiteMethod == null");
        }
        if (!cstMethodRef.isSignaturePolymorphic()) {
            throw new IllegalArgumentException("callSiteMethod is not signature polymorphic");
        }
        this.callSiteMethod = cstMethodRef;
        this.polymorphicMethod = makePolymorphicMethod(cstMethodRef);
        this.callSiteProto = makeCallSiteProto(cstMethodRef);
    }

    private static CstProtoRef makeCallSiteProto(CstMethodRef cstMethodRef) {
        return new CstProtoRef(cstMethodRef.getPrototype(true));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static CstMethodRef makePolymorphicMethod(CstMethodRef cstMethodRef) {
        CstType definingClass = cstMethodRef.getDefiningClass();
        CstString name = cstMethodRef.getNat().getName();
        String string = cstMethodRef.getNat().getName().getString();
        if (definingClass.equals(CstType.METHOD_HANDLE) && (string.equals("invoke") || string.equals("invokeExact"))) {
            return new CstMethodRef(definingClass, new CstNat(name, DEFAULT_DESCRIPTOR));
        }
        if (definingClass.equals(CstType.VAR_HANDLE)) {
            string.hashCode();
            byte b10 = -1;
            switch (string.hashCode()) {
                case -1946504908:
                    if (string.equals("getAndBitwiseOrRelease")) {
                        b10 = 0;
                    }
                    break;
                case -1686727776:
                    if (string.equals("getAndBitwiseAndRelease")) {
                        b10 = 1;
                    }
                    break;
                case -1671098288:
                    if (string.equals("compareAndSet")) {
                        b10 = 2;
                    }
                    break;
                case -1292078254:
                    if (string.equals("compareAndExchangeRelease")) {
                        b10 = 3;
                    }
                    break;
                case -1117944904:
                    if (string.equals("weakCompareAndSet")) {
                        b10 = 4;
                    }
                    break;
                case -1103072857:
                    if (string.equals("getAndAddRelease")) {
                        b10 = 5;
                    }
                    break;
                case -1032914329:
                    if (string.equals("getAndBitwiseAnd")) {
                        b10 = 6;
                    }
                    break;
                case -1032892181:
                    if (string.equals("getAndBitwiseXor")) {
                        b10 = 7;
                    }
                    break;
                case -794517348:
                    if (string.equals("getAndBitwiseXorRelease")) {
                        b10 = 8;
                    }
                    break;
                case -567150350:
                    if (string.equals("weakCompareAndSetPlain")) {
                        b10 = 9;
                    }
                    break;
                case -240822786:
                    if (string.equals("weakCompareAndSetAcquire")) {
                        b10 = 10;
                    }
                    break;
                case -230706875:
                    if (string.equals("setRelease")) {
                        b10 = 11;
                    }
                    break;
                case -127361888:
                    if (string.equals("getAcquire")) {
                        b10 = 12;
                    }
                    break;
                case -37641530:
                    if (string.equals("getAndSetRelease")) {
                        b10 = 13;
                    }
                    break;
                case 102230:
                    if (string.equals("get")) {
                        b10 = 14;
                    }
                    break;
                case 113762:
                    if (string.equals("set")) {
                        b10 = 15;
                    }
                    break;
                case 93645315:
                    if (string.equals("getAndBitwiseOrAcquire")) {
                        b10 = 16;
                    }
                    break;
                case 101293086:
                    if (string.equals("setVolatile")) {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case 189872914:
                    if (string.equals("getVolatile")) {
                        b10 = BinaryMemcacheOpcodes.ADDQ;
                    }
                    break;
                case 282707520:
                    if (string.equals("getAndAdd")) {
                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    }
                    break;
                case 282724865:
                    if (string.equals("getAndSet")) {
                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                    }
                    break;
                case 353422447:
                    if (string.equals("getAndBitwiseAndAcquire")) {
                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    }
                    break;
                case 470702883:
                    if (string.equals("setOpaque")) {
                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    }
                    break;
                case 685319959:
                    if (string.equals("getOpaque")) {
                        b10 = BinaryMemcacheOpcodes.QUITQ;
                    }
                    break;
                case 748071969:
                    if (string.equals("compareAndExchangeAcquire")) {
                        b10 = BinaryMemcacheOpcodes.FLUSHQ;
                    }
                    break;
                case 937077366:
                    if (string.equals("getAndAddAcquire")) {
                        b10 = BinaryMemcacheOpcodes.APPENDQ;
                    }
                    break;
                case 1245632875:
                    if (string.equals("getAndBitwiseXorAcquire")) {
                        b10 = 26;
                    }
                    break;
                case 1352153939:
                    if (string.equals("getAndBitwiseOr")) {
                        b10 = 27;
                    }
                    break;
                case 1483964149:
                    if (string.equals("compareAndExchange")) {
                        b10 = BinaryMemcacheOpcodes.TOUCH;
                    }
                    break;
                case 2002508693:
                    if (string.equals("getAndSetAcquire")) {
                        b10 = BinaryMemcacheOpcodes.GAT;
                    }
                    break;
                case 2013994287:
                    if (string.equals("weakCompareAndSetRelease")) {
                        b10 = BinaryMemcacheOpcodes.GATQ;
                    }
                    break;
            }
            switch (b10) {
                case 0:
                case 1:
                case 3:
                case 5:
                case 6:
                case 7:
                case 8:
                case 12:
                case 13:
                case 14:
                case 16:
                case 18:
                case 19:
                case 20:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    return new CstMethodRef(definingClass, new CstNat(name, DEFAULT_DESCRIPTOR));
                case 2:
                case 4:
                case 9:
                case 10:
                case 30:
                    return new CstMethodRef(definingClass, new CstNat(name, VARHANDLE_COMPARE_AND_SET_DESCRIPTOR));
                case 11:
                case 15:
                case 17:
                case 22:
                    return new CstMethodRef(definingClass, new CstNat(name, VARHANDLE_SET_DESCRIPTOR));
            }
        }
        throw new IllegalArgumentException("Unknown signature polymorphic method: " + cstMethodRef.toHuman());
    }

    @Override // com.android.dx.rop.code.Insn
    public void accept(Insn.Visitor visitor) {
        visitor.visitInvokePolymorphicInsn(this);
    }

    public CstMethodRef getCallSiteMethod() {
        return this.callSiteMethod;
    }

    public CstProtoRef getCallSiteProto() {
        return this.callSiteProto;
    }

    @Override // com.android.dx.rop.code.Insn
    public TypeList getCatches() {
        return this.catches;
    }

    @Override // com.android.dx.rop.code.Insn
    public String getInlineString() {
        return getPolymorphicMethod().toString() + " " + getCallSiteProto().toString() + " " + ThrowingInsn.toCatchString(this.catches);
    }

    public CstMethodRef getPolymorphicMethod() {
        return this.polymorphicMethod;
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withAddedCatch(Type type) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type), getCallSiteMethod());
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), registerSpecList, this.catches, getCallSiteMethod());
    }

    @Override // com.android.dx.rop.code.Insn
    public Insn withRegisterOffset(int i10) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources().withOffset(i10), this.catches, getCallSiteMethod());
    }
}
