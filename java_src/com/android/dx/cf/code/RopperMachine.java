package com.android.dx.cf.code;

import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.FillArrayDataInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InvokePolymorphicInsn;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.SwitchInsn;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.IntList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
final class RopperMachine extends ValueAwareMachine {
    private static final CstType ARRAY_REFLECT_TYPE;
    private static final CstMethodRef MULTIANEWARRAY_METHOD;
    private final TranslationAdvice advice;
    private boolean blockCanThrow;
    private TypeList catches;
    private boolean catchesUsed;
    private int extraBlockCount;
    private boolean hasJsr;
    private final ArrayList<Insn> insns;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final MethodList methods;
    private int primarySuccessorIndex;
    private ReturnAddress returnAddress;
    private Rop returnOp;
    private SourcePosition returnPosition;
    private boolean returns;
    private final Ropper ropper;

    static {
        CstType cstType = new CstType(Type.internClassName("java/lang/reflect/Array"));
        ARRAY_REFLECT_TYPE = cstType;
        MULTIANEWARRAY_METHOD = new CstMethodRef(cstType, new CstNat(new CstString("newInstance"), new CstString("(Ljava/lang/Class;[I)Ljava/lang/Object;")));
    }

    public RopperMachine(Ropper ropper, ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList) {
        super(concreteMethod.getEffectiveDescriptor());
        if (methodList == null) {
            throw new NullPointerException("methods == null");
        }
        if (ropper == null) {
            throw new NullPointerException("ropper == null");
        }
        if (translationAdvice == null) {
            throw new NullPointerException("advice == null");
        }
        this.ropper = ropper;
        this.method = concreteMethod;
        this.methods = methodList;
        this.advice = translationAdvice;
        this.maxLocals = concreteMethod.getMaxLocals();
        this.insns = new ArrayList<>(25);
        this.catches = null;
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = -1;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.returnOp = null;
        this.returnPosition = null;
    }

    private RegisterSpecList getSources(int i10, int i11) {
        RegisterSpecList registerSpecList;
        int iArgCount = argCount();
        if (iArgCount == 0) {
            return RegisterSpecList.EMPTY;
        }
        int localIndex = getLocalIndex();
        if (localIndex >= 0) {
            registerSpecList = new RegisterSpecList(1);
            registerSpecList.set(0, RegisterSpec.make(localIndex, arg(0)));
        } else {
            RegisterSpecList registerSpecList2 = new RegisterSpecList(iArgCount);
            for (int i12 = 0; i12 < iArgCount; i12++) {
                RegisterSpec registerSpecMake = RegisterSpec.make(i11, arg(i12));
                registerSpecList2.set(i12, registerSpecMake);
                i11 += registerSpecMake.getCategory();
            }
            if (i10 == 79) {
                if (iArgCount != 3) {
                    throw new RuntimeException("shouldn't happen");
                }
                RegisterSpec registerSpec = registerSpecList2.get(0);
                RegisterSpec registerSpec2 = registerSpecList2.get(1);
                registerSpecList2.set(0, registerSpecList2.get(2));
                registerSpecList2.set(1, registerSpec);
                registerSpecList2.set(2, registerSpec2);
            } else if (i10 == 181) {
                if (iArgCount != 2) {
                    throw new RuntimeException("shouldn't happen");
                }
                RegisterSpec registerSpec3 = registerSpecList2.get(0);
                registerSpecList2.set(0, registerSpecList2.get(1));
                registerSpecList2.set(1, registerSpec3);
            }
            registerSpecList = registerSpecList2;
        }
        registerSpecList.setImmutable();
        return registerSpecList;
    }

    private int jopToRopOpcode(int i10, Constant constant) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 20) {
            return 5;
        }
        if (i10 == 21) {
            return 2;
        }
        if (i10 == 171) {
            return 13;
        }
        if (i10 == 172) {
            return 33;
        }
        if (i10 == 198) {
            return 7;
        }
        if (i10 == 199) {
            return 8;
        }
        switch (i10) {
            case 0:
                return 1;
            case 18:
                return 5;
            case 46:
                return 38;
            case 54:
                return 2;
            case 79:
                return 39;
            case 96:
                return 14;
            case 100:
                return 15;
            case 104:
                return 16;
            case 108:
                return 17;
            case 112:
                return 18;
            case 116:
                return 19;
            case 120:
                return 23;
            case 122:
                return 24;
            case 124:
                return 25;
            case 126:
                return 20;
            case 128:
                return 21;
            case 130:
                return 22;
            default:
                switch (i10) {
                    case 132:
                        return 14;
                    case 133:
                    case 134:
                    case 135:
                    case 136:
                    case 137:
                    case 138:
                    case 139:
                    case 140:
                    case 141:
                    case 142:
                    case 143:
                    case 144:
                        return 29;
                    case 145:
                        return 30;
                    case 146:
                        return 31;
                    case 147:
                        return 32;
                    case 148:
                    case 149:
                    case 151:
                        return 27;
                    case 150:
                    case 152:
                        return 28;
                    case 153:
                    case 159:
                    case 165:
                        return 7;
                    case 154:
                    case 160:
                    case 166:
                        return 8;
                    case 155:
                    case 161:
                        return 9;
                    case 156:
                    case 162:
                        return 10;
                    case 157:
                    case 163:
                        return 12;
                    case 158:
                    case 164:
                        return 11;
                    case 167:
                        return 6;
                    default:
                        switch (i10) {
                            case 177:
                                return 33;
                            case 178:
                                return 46;
                            case 179:
                                return 48;
                            case 180:
                                return 45;
                            case 181:
                                return 47;
                            case 182:
                                CstMethodRef cstMethodRef = (CstMethodRef) constant;
                                if (cstMethodRef.getDefiningClass().equals(this.method.getDefiningClass())) {
                                    for (int i11 = 0; i11 < this.methods.size(); i11++) {
                                        Method method = this.methods.get(i11);
                                        if (AccessFlags.isPrivate(method.getAccessFlags()) && cstMethodRef.getNat().equals(method.getNat())) {
                                            return 52;
                                        }
                                    }
                                }
                                return cstMethodRef.isSignaturePolymorphic() ? 58 : 50;
                            case 183:
                                CstMethodRef cstMethodRef2 = (CstMethodRef) constant;
                                return (cstMethodRef2.isInstanceInit() || cstMethodRef2.getDefiningClass().equals(this.method.getDefiningClass())) ? 52 : 51;
                            case 184:
                                return 49;
                            case 185:
                                return 53;
                            case 186:
                                return 59;
                            case 187:
                                return 40;
                            case 188:
                            case 189:
                                return 41;
                            case 190:
                                return 34;
                            case 191:
                                return 35;
                            case 192:
                                return 43;
                            case 193:
                                return 44;
                            case 194:
                                return 36;
                            case 195:
                                return 37;
                            default:
                                throw new RuntimeException("shouldn't happen");
                        }
                }
        }
    }

    private Insn makeInvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, Constant constant) {
        return new InvokePolymorphicInsn(rop, sourcePosition, registerSpecList, typeList, (CstMethodRef) constant);
    }

    private void updateReturnOp(Rop rop, SourcePosition sourcePosition) {
        if (rop == null) {
            throw new NullPointerException("op == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("pos == null");
        }
        Rop rop2 = this.returnOp;
        if (rop2 == null) {
            this.returnOp = rop;
            this.returnPosition = sourcePosition;
        } else if (rop2 == rop) {
            if (sourcePosition.getLine() > this.returnPosition.getLine()) {
                this.returnPosition = sourcePosition;
            }
        } else {
            throw new SimException("return op mismatch: " + rop + ", " + this.returnOp);
        }
    }

    public boolean canThrow() {
        return this.blockCanThrow;
    }

    public int getExtraBlockCount() {
        return this.extraBlockCount;
    }

    public ArrayList<Insn> getInsns() {
        return this.insns;
    }

    public int getPrimarySuccessorIndex() {
        return this.primarySuccessorIndex;
    }

    public ReturnAddress getReturnAddress() {
        return this.returnAddress;
    }

    public Rop getReturnOp() {
        return this.returnOp;
    }

    public SourcePosition getReturnPosition() {
        return this.returnPosition;
    }

    public boolean hasJsr() {
        return this.hasJsr;
    }

    public boolean hasRet() {
        return this.returnAddress != null;
    }

    public boolean returns() {
        return this.returns;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:102:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:105:0x0307  */
    /* JADX WARN: Code duplicated, block: B:107:0x030b  */
    /* JADX WARN: Code duplicated, block: B:109:0x0318  */
    /* JADX WARN: Code duplicated, block: B:110:0x031c  */
    /* JADX WARN: Code duplicated, block: B:111:0x0325  */
    /* JADX WARN: Code duplicated, block: B:114:0x0331  */
    /* JADX WARN: Code duplicated, block: B:116:0x0338  */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:77:0x023e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0253  */
    /* JADX WARN: Code duplicated, block: B:82:0x0259  */
    /* JADX WARN: Code duplicated, block: B:83:0x0267  */
    /* JADX WARN: Code duplicated, block: B:86:0x0281  */
    /* JADX WARN: Code duplicated, block: B:88:0x0286  */
    /* JADX WARN: Code duplicated, block: B:90:0x028c  */
    /* JADX WARN: Code duplicated, block: B:92:0x029b  */
    /* JADX WARN: Code duplicated, block: B:93:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:95:0x02c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x02c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:99:0x02cc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v18, types: [int] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v40 */
    @Override // com.android.dx.cf.code.ValueAwareMachine, com.android.dx.cf.code.Machine
    public void run(Frame frame, int i10, int i11) {
        RegisterSpec registerSpec;
        PlainInsn plainInsn;
        PlainInsn plainInsn2;
        Rop ropRopFor;
        Constant constantIntern;
        Constant constantMake;
        RegisterSpecList registerSpecListWithoutFirst;
        SwitchList auxCases;
        ArrayList<Constant> initValues;
        boolean zCanThrow;
        SourcePosition sourcePosition;
        ?? r10;
        Insn plainInsn3;
        Insn throwingInsn;
        boolean z10;
        SourcePosition sourcePosition2;
        boolean z11;
        boolean z12;
        int i12;
        Insn plainInsn4;
        RegisterSpec registerSpec2;
        TypeBearer typeBearer;
        int i13 = i11;
        int size = this.maxLocals + frame.getStack().size();
        RegisterSpecList sources = getSources(i13, size);
        int size2 = sources.size();
        super.run(frame, i10, i11);
        SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(i10);
        RegisterSpec localTarget = getLocalTarget(i13 == 54);
        int iResultCount = resultCount();
        if (iResultCount == 0) {
            if (i13 == 87 || i13 == 88) {
                return;
            } else {
                localTarget = null;
            }
        } else if (localTarget == null) {
            if (iResultCount != 1) {
                RegisterSpec[] registerSpecArr = new RegisterSpec[size2];
                int firstTempStackReg = this.ropper.getFirstTempStackReg();
                for (int i14 = 0; i14 < size2; i14++) {
                    RegisterSpec registerSpec3 = sources.get(i14);
                    TypeBearer typeBearer2 = registerSpec3.getTypeBearer();
                    RegisterSpec registerSpecWithReg = registerSpec3.withReg(firstTempStackReg);
                    this.insns.add(new PlainInsn(Rops.opMove(typeBearer2), sourcePositionMakeSourcePosistion, registerSpecWithReg, registerSpec3));
                    registerSpecArr[i14] = registerSpecWithReg;
                    firstTempStackReg += registerSpec3.getCategory();
                }
                for (int auxInt = getAuxInt(); auxInt != 0; auxInt >>= 4) {
                    RegisterSpec registerSpec4 = registerSpecArr[(auxInt & 15) - 1];
                    TypeBearer typeBearer3 = registerSpec4.getTypeBearer();
                    this.insns.add(new PlainInsn(Rops.opMove(typeBearer3), sourcePositionMakeSourcePosistion, registerSpec4.withReg(size), registerSpec4));
                    size += typeBearer3.getType().getCategory();
                }
                return;
            }
            localTarget = RegisterSpec.make(size, result(0));
        }
        TypeBearer typeBearer4 = localTarget != null ? localTarget : Type.VOID;
        Constant auxCst = getAuxCst();
        if (i13 == 197) {
            this.blockCanThrow = true;
            this.extraBlockCount = 6;
            int nextReg = localTarget.getNextReg();
            Type type = Type.INT_ARRAY;
            RegisterSpec registerSpecMake = RegisterSpec.make(nextReg, type);
            this.insns.add(new ThrowingCstInsn(Rops.opFilledNewArray(type, size2), sourcePositionMakeSourcePosistion, sources, this.catches, CstType.INT_ARRAY));
            this.insns.add(new PlainInsn(Rops.opMoveResult(type), sourcePositionMakeSourcePosistion, registerSpecMake, RegisterSpecList.EMPTY));
            Type classType = ((CstType) auxCst).getClassType();
            for (int i15 = 0; i15 < size2; i15++) {
                classType = classType.getComponentType();
            }
            RegisterSpec registerSpecMake2 = RegisterSpec.make(localTarget.getReg(), Type.CLASS);
            this.insns.add(classType.isPrimitive() ? new ThrowingCstInsn(Rops.GET_STATIC_OBJECT, sourcePositionMakeSourcePosistion, RegisterSpecList.EMPTY, this.catches, CstFieldRef.forPrimitiveType(classType)) : new ThrowingCstInsn(Rops.CONST_OBJECT, sourcePositionMakeSourcePosistion, RegisterSpecList.EMPTY, this.catches, new CstType(classType)));
            Rop ropOpMoveResultPseudo = Rops.opMoveResultPseudo(registerSpecMake2.getType());
            RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
            this.insns.add(new PlainInsn(ropOpMoveResultPseudo, sourcePositionMakeSourcePosistion, registerSpecMake2, registerSpecList));
            RegisterSpec registerSpecMake3 = RegisterSpec.make(localTarget.getReg(), Type.OBJECT);
            CstMethodRef cstMethodRef = MULTIANEWARRAY_METHOD;
            this.insns.add(new ThrowingCstInsn(Rops.opInvokeStatic(cstMethodRef.getPrototype()), sourcePositionMakeSourcePosistion, RegisterSpecList.make(registerSpecMake2, registerSpecMake), this.catches, cstMethodRef));
            this.insns.add(new PlainInsn(Rops.opMoveResult(cstMethodRef.getPrototype().getReturnType()), sourcePositionMakeSourcePosistion, registerSpecMake3, registerSpecList));
            sources = RegisterSpecList.make(registerSpecMake3);
            i13 = 192;
        } else if (i13 == 168) {
            this.hasJsr = true;
            return;
        } else if (i13 == 169) {
            try {
                this.returnAddress = (ReturnAddress) arg(0);
                return;
            } catch (ClassCastException e10) {
                throw new RuntimeException("Argument to RET was not a ReturnAddress", e10);
            }
        }
        int iJopToRopOpcode = jopToRopOpcode(i13, auxCst);
        Rop ropRopFor2 = Rops.ropFor(iJopToRopOpcode, typeBearer4, sources, auxCst);
        if (localTarget == null || !ropRopFor2.isCallLike()) {
            if (localTarget == null || !ropRopFor2.canThrow()) {
                registerSpec = localTarget;
                plainInsn = null;
            } else {
                this.extraBlockCount++;
                plainInsn2 = new PlainInsn(Rops.opMoveResultPseudo(localTarget.getTypeBearer()), sourcePositionMakeSourcePosistion, localTarget, RegisterSpecList.EMPTY);
            }
            if (iJopToRopOpcode == 41) {
                ropRopFor = ropRopFor2;
                constantIntern = CstType.intern(ropRopFor2.getResult());
            } else if (auxCst == 0 || size2 != 2) {
                ropRopFor = ropRopFor2;
                constantIntern = auxCst;
            } else {
                ?? typeBearer5 = sources.get(0).getTypeBearer();
                ?? typeBearer6 = sources.get(1).getTypeBearer();
                if ((typeBearer6.isConstant() || typeBearer5.isConstant()) && this.advice.hasConstantOperation(ropRopFor2, sources.get(0), sources.get(1))) {
                    if (typeBearer6.isConstant()) {
                        constantMake = (Constant) typeBearer6;
                        registerSpecListWithoutFirst = sources.withoutLast();
                        if (ropRopFor2.getOpcode() == 15) {
                            constantMake = CstInteger.make(-((CstInteger) typeBearer6).getValue());
                            iJopToRopOpcode = 14;
                        }
                    } else {
                        constantMake = (Constant) typeBearer5;
                        registerSpecListWithoutFirst = sources.withoutFirst();
                    }
                    ropRopFor = Rops.ropFor(iJopToRopOpcode, typeBearer4, registerSpecListWithoutFirst, constantMake);
                    constantIntern = constantMake;
                    sources = registerSpecListWithoutFirst;
                } else {
                    ropRopFor = ropRopFor2;
                    constantIntern = auxCst;
                }
            }
            auxCases = getAuxCases();
            initValues = getInitValues();
            zCanThrow = ropRopFor.canThrow();
            this.blockCanThrow |= zCanThrow;
            if (auxCases != null) {
                if (auxCases.size() == 0) {
                    plainInsn3 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                    this.primarySuccessorIndex = 0;
                } else {
                    IntList values = auxCases.getValues();
                    plainInsn4 = new SwitchInsn(ropRopFor, sourcePositionMakeSourcePosistion, registerSpec, sources, values);
                    this.primarySuccessorIndex = values.size();
                }
                sourcePosition = sourcePositionMakeSourcePosistion;
                r10 = 1;
                this.insns.add(plainInsn3);
                if (plainInsn != null) {
                    this.insns.add(plainInsn);
                }
                if (initValues != null) {
                    this.extraBlockCount += r10;
                    this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
                }
            }
            if (iJopToRopOpcode == 33) {
                if (sources.size() != 0) {
                    i12 = 0;
                    registerSpec2 = sources.get(0);
                    typeBearer = registerSpec2.getTypeBearer();
                    if (registerSpec2.getReg() != 0) {
                        this.insns.add(new PlainInsn(Rops.opMove(typeBearer), sourcePositionMakeSourcePosistion, RegisterSpec.make(0, typeBearer), registerSpec2));
                    }
                } else {
                    i12 = 0;
                }
                plainInsn4 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                this.primarySuccessorIndex = i12;
                updateReturnOp(ropRopFor, sourcePositionMakeSourcePosistion);
                this.returns = true;
            } else {
                if (constantIntern != null) {
                    if (zCanThrow) {
                        if (ropRopFor.getOpcode() == 58) {
                            z12 = true;
                            sourcePosition2 = sourcePositionMakeSourcePosistion;
                            throwingInsn = makeInvokePolymorphicInsn(ropRopFor, sourcePositionMakeSourcePosistion, sources, this.catches, constantIntern);
                        } else {
                            sourcePosition2 = sourcePositionMakeSourcePosistion;
                            z12 = true;
                            throwingInsn = new ThrowingCstInsn(ropRopFor, sourcePosition2, sources, this.catches, constantIntern);
                        }
                        this.catchesUsed = z12;
                        this.primarySuccessorIndex = this.catches.size();
                        z11 = z12;
                    } else {
                        sourcePosition2 = sourcePositionMakeSourcePosistion;
                        z11 = true;
                        throwingInsn = new PlainCstInsn(ropRopFor, sourcePosition2, registerSpec, sources, constantIntern);
                    }
                    sourcePosition = sourcePosition2;
                    z10 = z11;
                } else {
                    sourcePosition = sourcePositionMakeSourcePosistion;
                    r10 = 1;
                    z10 = true;
                    z10 = true;
                    if (zCanThrow) {
                        throwingInsn = new ThrowingInsn(ropRopFor, sourcePosition, sources, this.catches);
                        this.catchesUsed = true;
                        if (i13 == 191) {
                            this.primarySuccessorIndex = -1;
                        } else {
                            this.primarySuccessorIndex = this.catches.size();
                        }
                    } else {
                        plainInsn3 = new PlainInsn(ropRopFor, sourcePosition, registerSpec, sources);
                    }
                }
                plainInsn3 = throwingInsn;
                r10 = z10;
            }
            this.insns.add(plainInsn3);
            if (plainInsn != null) {
                this.insns.add(plainInsn);
            }
            if (initValues != null) {
                this.extraBlockCount += r10;
                this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
            }
            plainInsn3 = plainInsn4;
            sourcePosition = sourcePositionMakeSourcePosistion;
            r10 = 1;
            this.insns.add(plainInsn3);
            if (plainInsn != null) {
                this.insns.add(plainInsn);
            }
            if (initValues != null) {
                this.extraBlockCount += r10;
                this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
            }
        }
        this.extraBlockCount++;
        plainInsn2 = new PlainInsn(Rops.opMoveResult(ropRopFor2.getOpcode() == 59 ? ((CstCallSiteRef) auxCst).getReturnType() : ((CstMethodRef) auxCst).getPrototype().getReturnType()), sourcePositionMakeSourcePosistion, localTarget, RegisterSpecList.EMPTY);
        plainInsn = plainInsn2;
        registerSpec = null;
        if (iJopToRopOpcode == 41) {
            ropRopFor = ropRopFor2;
            constantIntern = CstType.intern(ropRopFor2.getResult());
        } else if (auxCst == 0) {
            ropRopFor = ropRopFor2;
            constantIntern = auxCst;
        } else {
            ropRopFor = ropRopFor2;
            constantIntern = auxCst;
        }
        auxCases = getAuxCases();
        initValues = getInitValues();
        zCanThrow = ropRopFor.canThrow();
        this.blockCanThrow |= zCanThrow;
        if (auxCases != null) {
            if (auxCases.size() == 0) {
                plainInsn3 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                this.primarySuccessorIndex = 0;
            } else {
                IntList values2 = auxCases.getValues();
                plainInsn4 = new SwitchInsn(ropRopFor, sourcePositionMakeSourcePosistion, registerSpec, sources, values2);
                this.primarySuccessorIndex = values2.size();
            }
            sourcePosition = sourcePositionMakeSourcePosistion;
            r10 = 1;
            this.insns.add(plainInsn3);
            if (plainInsn != null) {
                this.insns.add(plainInsn);
            }
            if (initValues != null) {
                this.extraBlockCount += r10;
                this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
            }
        }
        if (iJopToRopOpcode == 33) {
            if (sources.size() != 0) {
                i12 = 0;
                registerSpec2 = sources.get(0);
                typeBearer = registerSpec2.getTypeBearer();
                if (registerSpec2.getReg() != 0) {
                    this.insns.add(new PlainInsn(Rops.opMove(typeBearer), sourcePositionMakeSourcePosistion, RegisterSpec.make(0, typeBearer), registerSpec2));
                }
            } else {
                i12 = 0;
            }
            plainInsn4 = new PlainInsn(Rops.GOTO, sourcePositionMakeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
            this.primarySuccessorIndex = i12;
            updateReturnOp(ropRopFor, sourcePositionMakeSourcePosistion);
            this.returns = true;
        } else {
            if (constantIntern != null) {
                if (zCanThrow) {
                    if (ropRopFor.getOpcode() == 58) {
                        z12 = true;
                        sourcePosition2 = sourcePositionMakeSourcePosistion;
                        throwingInsn = makeInvokePolymorphicInsn(ropRopFor, sourcePositionMakeSourcePosistion, sources, this.catches, constantIntern);
                    } else {
                        sourcePosition2 = sourcePositionMakeSourcePosistion;
                        z12 = true;
                        throwingInsn = new ThrowingCstInsn(ropRopFor, sourcePosition2, sources, this.catches, constantIntern);
                    }
                    this.catchesUsed = z12;
                    this.primarySuccessorIndex = this.catches.size();
                    z11 = z12;
                } else {
                    sourcePosition2 = sourcePositionMakeSourcePosistion;
                    z11 = true;
                    throwingInsn = new PlainCstInsn(ropRopFor, sourcePosition2, registerSpec, sources, constantIntern);
                }
                sourcePosition = sourcePosition2;
                z10 = z11;
            } else {
                sourcePosition = sourcePositionMakeSourcePosistion;
                r10 = 1;
                z10 = true;
                z10 = true;
                if (zCanThrow) {
                    throwingInsn = new ThrowingInsn(ropRopFor, sourcePosition, sources, this.catches);
                    this.catchesUsed = true;
                    if (i13 == 191) {
                        this.primarySuccessorIndex = -1;
                    } else {
                        this.primarySuccessorIndex = this.catches.size();
                    }
                } else {
                    plainInsn3 = new PlainInsn(ropRopFor, sourcePosition, registerSpec, sources);
                }
            }
            plainInsn3 = throwingInsn;
            r10 = z10;
        }
        this.insns.add(plainInsn3);
        if (plainInsn != null) {
            this.insns.add(plainInsn);
        }
        if (initValues != null) {
            this.extraBlockCount += r10;
            this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
        }
        plainInsn3 = plainInsn4;
        sourcePosition = sourcePositionMakeSourcePosistion;
        r10 = 1;
        this.insns.add(plainInsn3);
        if (plainInsn != null) {
            this.insns.add(plainInsn);
        }
        if (initValues != null) {
            this.extraBlockCount += r10;
            this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constantIntern));
        }
    }

    public void startBlock(TypeList typeList) {
        this.catches = typeList;
        this.insns.clear();
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = 0;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.hasJsr = false;
        this.returnAddress = null;
    }

    public boolean wereCatchesUsed() {
        return this.catchesUsed;
    }
}
