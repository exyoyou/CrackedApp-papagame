package com.android.dx.cf.code;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Bits;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public final class BytecodeArray {
    public static final Visitor EMPTY_VISITOR = new BaseVisitor();
    private final ByteArray bytes;
    private final ConstantPool pool;

    public static class BaseVisitor implements Visitor {
        private int previousOffset = -1;

        BaseVisitor() {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public int getPreviousOffset() {
            return this.previousOffset;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void setPreviousOffset(int i10) {
            this.previousOffset = i10;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitBranch(int i10, int i11, int i12, int i13) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitInvalid(int i10, int i11, int i12) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNoArgs(int i10, int i11, int i12, Type type) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
        }
    }

    class ConstantParserVisitor extends BaseVisitor {
        Constant cst;
        int length;
        int value;

        ConstantParserVisitor() {
        }

        private void clear() {
            this.length = 0;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public int getPreviousOffset() {
            return -1;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void setPreviousOffset(int i10) {
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitBranch(int i10, int i11, int i12, int i13) {
            clear();
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
            this.cst = constant;
            this.length = i12;
            this.value = i13;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitInvalid(int i10, int i11, int i12) {
            clear();
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
            clear();
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
            clear();
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNoArgs(int i10, int i11, int i12, Type type) {
            clear();
        }

        @Override // com.android.dx.cf.code.BytecodeArray.BaseVisitor, com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
            clear();
        }
    }

    public interface Visitor {
        int getPreviousOffset();

        void setPreviousOffset(int i10);

        void visitBranch(int i10, int i11, int i12, int i13);

        void visitConstant(int i10, int i11, int i12, Constant constant, int i13);

        void visitInvalid(int i10, int i11, int i12);

        void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14);

        void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList);

        void visitNoArgs(int i10, int i11, int i12, Type type);

        void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13);
    }

    public BytecodeArray(ByteArray byteArray, ConstantPool constantPool) {
        if (byteArray == null) {
            throw new NullPointerException("bytes == null");
        }
        if (constantPool == null) {
            throw new NullPointerException("pool == null");
        }
        this.bytes = byteArray;
        this.pool = constantPool;
    }

    private int parseLookupswitch(int i10, Visitor visitor) {
        int i11 = (i10 + 4) & (-4);
        int unsignedByte = 0;
        for (int i12 = i10 + 1; i12 < i11; i12++) {
            unsignedByte = (unsignedByte << 8) | this.bytes.getUnsignedByte(i12);
        }
        int i13 = this.bytes.getInt(i11) + i10;
        int i14 = this.bytes.getInt(i11 + 4);
        int i15 = i11 + 8;
        SwitchList switchList = new SwitchList(i14);
        for (int i16 = 0; i16 < i14; i16++) {
            int i17 = this.bytes.getInt(i15);
            int i18 = this.bytes.getInt(i15 + 4) + i10;
            i15 += 8;
            switchList.add(i17, i18);
        }
        switchList.setDefaultTarget(i13);
        switchList.removeSuperfluousDefaults();
        switchList.setImmutable();
        int i19 = i15 - i10;
        visitor.visitSwitch(171, i10, i19, switchList, unsignedByte);
        return i19;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c8  */
    private int parseNewarray(int i10, Visitor visitor) {
        CstType cstType;
        int i11;
        int unsignedByte = this.bytes.getUnsignedByte(i10 + 1);
        switch (unsignedByte) {
            case 4:
                cstType = CstType.BOOLEAN_ARRAY;
                break;
            case 5:
                cstType = CstType.CHAR_ARRAY;
                break;
            case 6:
                cstType = CstType.FLOAT_ARRAY;
                break;
            case 7:
                cstType = CstType.DOUBLE_ARRAY;
                break;
            case 8:
                cstType = CstType.BYTE_ARRAY;
                break;
            case 9:
                cstType = CstType.SHORT_ARRAY;
                break;
            case 10:
                cstType = CstType.INT_ARRAY;
                break;
            case 11:
                cstType = CstType.LONG_ARRAY;
                break;
            default:
                throw new SimException("bad newarray code " + Hex.u1(unsignedByte));
        }
        int previousOffset = visitor.getPreviousOffset();
        ConstantParserVisitor constantParserVisitor = new ConstantParserVisitor();
        int i12 = 0;
        if (previousOffset >= 0) {
            parseInstruction(previousOffset, constantParserVisitor);
            if ((constantParserVisitor.cst instanceof CstInteger) && constantParserVisitor.length + previousOffset == i10) {
                i11 = constantParserVisitor.value;
            } else {
                i11 = 0;
            }
        } else {
            i11 = 0;
        }
        int i13 = i10 + 2;
        ArrayList<Constant> arrayList = new ArrayList<>();
        if (i11 != 0) {
            int i14 = 0;
            while (true) {
                int i15 = i13 + 1;
                if (this.bytes.getUnsignedByte(i13) == 89) {
                    parseInstruction(i15, constantParserVisitor);
                    int i16 = constantParserVisitor.length;
                    if (i16 != 0 && (constantParserVisitor.cst instanceof CstInteger) && constantParserVisitor.value == i14) {
                        int i17 = i15 + i16;
                        parseInstruction(i17, constantParserVisitor);
                        int i18 = constantParserVisitor.length;
                        if (i18 != 0) {
                            Constant constant = constantParserVisitor.cst;
                            if (constant instanceof CstLiteralBits) {
                                int i19 = i17 + i18;
                                arrayList.add(constant);
                                int i20 = i19 + 1;
                                int unsignedByte2 = this.bytes.getUnsignedByte(i19);
                                boolean z10 = true;
                                switch (unsignedByte) {
                                    case 4:
                                    case 8:
                                        if (unsignedByte2 == 84) {
                                            z10 = false;
                                        }
                                        break;
                                    case 5:
                                        if (unsignedByte2 == 85) {
                                            z10 = false;
                                        }
                                        break;
                                    case 6:
                                        if (unsignedByte2 == 81) {
                                            z10 = false;
                                        }
                                        break;
                                    case 7:
                                        if (unsignedByte2 == 82) {
                                            z10 = false;
                                        }
                                        break;
                                    case 9:
                                        if (unsignedByte2 == 86) {
                                            z10 = false;
                                        }
                                        break;
                                    case 10:
                                        if (unsignedByte2 == 79) {
                                            z10 = false;
                                        }
                                        break;
                                    case 11:
                                        if (unsignedByte2 == 80) {
                                            z10 = false;
                                        }
                                        break;
                                }
                                if (!z10) {
                                    i14++;
                                    i13 = i20;
                                }
                            }
                        }
                    }
                }
            }
            i12 = i14;
        }
        if (i12 < 2 || i12 != i11) {
            visitor.visitNewarray(i10, 2, cstType, null);
            return 2;
        }
        int i21 = i13 - i10;
        visitor.visitNewarray(i10, i21, cstType, arrayList);
        return i21;
    }

    private int parseTableswitch(int i10, Visitor visitor) {
        int i11 = (i10 + 4) & (-4);
        int unsignedByte = 0;
        for (int i12 = i10 + 1; i12 < i11; i12++) {
            unsignedByte = (unsignedByte << 8) | this.bytes.getUnsignedByte(i12);
        }
        int i13 = this.bytes.getInt(i11) + i10;
        int i14 = this.bytes.getInt(i11 + 4);
        int i15 = this.bytes.getInt(i11 + 8);
        int i16 = (i15 - i14) + 1;
        int i17 = i11 + 12;
        if (i14 > i15) {
            throw new SimException("low / high inversion");
        }
        SwitchList switchList = new SwitchList(i16);
        for (int i18 = 0; i18 < i16; i18++) {
            int i19 = this.bytes.getInt(i17) + i10;
            i17 += 4;
            switchList.add(i14 + i18, i19);
        }
        switchList.setDefaultTarget(i13);
        switchList.removeSuperfluousDefaults();
        switchList.setImmutable();
        int i20 = i17 - i10;
        visitor.visitSwitch(171, i10, i20, switchList, unsignedByte);
        return i20;
    }

    private int parseWide(int i10, Visitor visitor) {
        int unsignedByte = this.bytes.getUnsignedByte(i10 + 1);
        int unsignedShort = this.bytes.getUnsignedShort(i10 + 2);
        if (unsignedByte == 132) {
            visitor.visitLocal(unsignedByte, i10, 6, unsignedShort, Type.INT, this.bytes.getShort(i10 + 4));
            return 6;
        }
        if (unsignedByte == 169) {
            visitor.visitLocal(unsignedByte, i10, 4, unsignedShort, Type.RETURN_ADDRESS, 0);
            return 4;
        }
        switch (unsignedByte) {
            case 21:
                visitor.visitLocal(21, i10, 4, unsignedShort, Type.INT, 0);
                return 4;
            case 22:
                visitor.visitLocal(21, i10, 4, unsignedShort, Type.LONG, 0);
                return 4;
            case 23:
                visitor.visitLocal(21, i10, 4, unsignedShort, Type.FLOAT, 0);
                return 4;
            case 24:
                visitor.visitLocal(21, i10, 4, unsignedShort, Type.DOUBLE, 0);
                return 4;
            case 25:
                visitor.visitLocal(21, i10, 4, unsignedShort, Type.OBJECT, 0);
                return 4;
            default:
                switch (unsignedByte) {
                    case 54:
                        visitor.visitLocal(54, i10, 4, unsignedShort, Type.INT, 0);
                        return 4;
                    case 55:
                        visitor.visitLocal(54, i10, 4, unsignedShort, Type.LONG, 0);
                        return 4;
                    case 56:
                        visitor.visitLocal(54, i10, 4, unsignedShort, Type.FLOAT, 0);
                        return 4;
                    case 57:
                        visitor.visitLocal(54, i10, 4, unsignedShort, Type.DOUBLE, 0);
                        return 4;
                    case 58:
                        visitor.visitLocal(54, i10, 4, unsignedShort, Type.OBJECT, 0);
                        return 4;
                    default:
                        visitor.visitInvalid(196, i10, 1);
                        return 1;
                }
        }
    }

    public int byteLength() {
        return this.bytes.size() + 4;
    }

    public void forEach(Visitor visitor) {
        int size = this.bytes.size();
        int instruction = 0;
        while (instruction < size) {
            instruction += parseInstruction(instruction, visitor);
        }
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    public int[] getInstructionOffsets() {
        int size = this.bytes.size();
        int[] iArrMakeBitSet = Bits.makeBitSet(size);
        int instruction = 0;
        while (instruction < size) {
            Bits.set(iArrMakeBitSet, instruction, true);
            instruction += parseInstruction(instruction, null);
        }
        return iArrMakeBitSet;
    }

    public int parseInstruction(int i10, Visitor visitor) {
        if (visitor == null) {
            visitor = EMPTY_VISITOR;
        }
        Visitor visitor2 = visitor;
        try {
            int unsignedByte = this.bytes.getUnsignedByte(i10);
            ByteOps.opInfo(unsignedByte);
            switch (unsignedByte) {
                case 0:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.VOID);
                    return 1;
                case 1:
                    visitor2.visitConstant(18, i10, 1, CstKnownNull.THE_ONE, 0);
                    return 1;
                case 2:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_M1, -1);
                    return 1;
                case 3:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_0, 0);
                    return 1;
                case 4:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_1, 1);
                    return 1;
                case 5:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_2, 2);
                    return 1;
                case 6:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_3, 3);
                    return 1;
                case 7:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_4, 4);
                    return 1;
                case 8:
                    visitor2.visitConstant(18, i10, 1, CstInteger.VALUE_5, 5);
                    return 1;
                case 9:
                    visitor2.visitConstant(18, i10, 1, CstLong.VALUE_0, 0);
                    return 1;
                case 10:
                    visitor2.visitConstant(18, i10, 1, CstLong.VALUE_1, 0);
                    return 1;
                case 11:
                    visitor2.visitConstant(18, i10, 1, CstFloat.VALUE_0, 0);
                    return 1;
                case 12:
                    visitor2.visitConstant(18, i10, 1, CstFloat.VALUE_1, 0);
                    return 1;
                case 13:
                    visitor2.visitConstant(18, i10, 1, CstFloat.VALUE_2, 0);
                    return 1;
                case 14:
                    visitor2.visitConstant(18, i10, 1, CstDouble.VALUE_0, 0);
                    return 1;
                case 15:
                    visitor2.visitConstant(18, i10, 1, CstDouble.VALUE_1, 0);
                    return 1;
                case 16:
                    int i11 = this.bytes.getByte(i10 + 1);
                    visitor2.visitConstant(18, i10, 2, CstInteger.make(i11), i11);
                    return 2;
                case 17:
                    int i12 = this.bytes.getShort(i10 + 1);
                    visitor2.visitConstant(18, i10, 3, CstInteger.make(i12), i12);
                    return 3;
                case 18:
                    Constant constant = this.pool.get(this.bytes.getUnsignedByte(i10 + 1));
                    visitor2.visitConstant(18, i10, 2, constant, constant instanceof CstInteger ? ((CstInteger) constant).getValue() : 0);
                    return 2;
                case 19:
                    Constant constant2 = this.pool.get(this.bytes.getUnsignedShort(i10 + 1));
                    visitor2.visitConstant(18, i10, 3, constant2, constant2 instanceof CstInteger ? ((CstInteger) constant2).getValue() : 0);
                    return 3;
                case 20:
                    visitor2.visitConstant(20, i10, 3, this.pool.get(this.bytes.getUnsignedShort(i10 + 1)), 0);
                    return 3;
                case 21:
                    visitor2.visitLocal(21, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.INT, 0);
                    return 2;
                case 22:
                    visitor2.visitLocal(21, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.LONG, 0);
                    return 2;
                case 23:
                    visitor2.visitLocal(21, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.FLOAT, 0);
                    return 2;
                case 24:
                    visitor2.visitLocal(21, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.DOUBLE, 0);
                    return 2;
                case 25:
                    visitor2.visitLocal(21, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.OBJECT, 0);
                    return 2;
                case 26:
                case 27:
                case 28:
                case 29:
                    visitor2.visitLocal(21, i10, 1, unsignedByte - 26, Type.INT, 0);
                    return 1;
                case 30:
                case 31:
                case 32:
                case 33:
                    visitor2.visitLocal(21, i10, 1, unsignedByte - 30, Type.LONG, 0);
                    return 1;
                case 34:
                case 35:
                case 36:
                case 37:
                    visitor2.visitLocal(21, i10, 1, unsignedByte - 34, Type.FLOAT, 0);
                    return 1;
                case 38:
                case 39:
                case 40:
                case 41:
                    visitor2.visitLocal(21, i10, 1, unsignedByte - 38, Type.DOUBLE, 0);
                    return 1;
                case 42:
                case 43:
                case 44:
                case 45:
                    visitor2.visitLocal(21, i10, 1, unsignedByte - 42, Type.OBJECT, 0);
                    return 1;
                case 46:
                    visitor2.visitNoArgs(46, i10, 1, Type.INT);
                    return 1;
                case 47:
                    visitor2.visitNoArgs(46, i10, 1, Type.LONG);
                    return 1;
                case 48:
                    visitor2.visitNoArgs(46, i10, 1, Type.FLOAT);
                    return 1;
                case 49:
                    visitor2.visitNoArgs(46, i10, 1, Type.DOUBLE);
                    return 1;
                case 50:
                    visitor2.visitNoArgs(46, i10, 1, Type.OBJECT);
                    return 1;
                case 51:
                    visitor2.visitNoArgs(46, i10, 1, Type.BYTE);
                    return 1;
                case 52:
                    visitor2.visitNoArgs(46, i10, 1, Type.CHAR);
                    return 1;
                case 53:
                    visitor2.visitNoArgs(46, i10, 1, Type.SHORT);
                    return 1;
                case 54:
                    visitor2.visitLocal(54, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.INT, 0);
                    return 2;
                case 55:
                    visitor2.visitLocal(54, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.LONG, 0);
                    return 2;
                case 56:
                    visitor2.visitLocal(54, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.FLOAT, 0);
                    return 2;
                case 57:
                    visitor2.visitLocal(54, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.DOUBLE, 0);
                    return 2;
                case 58:
                    visitor2.visitLocal(54, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.OBJECT, 0);
                    return 2;
                case 59:
                case 60:
                case 61:
                case 62:
                    visitor2.visitLocal(54, i10, 1, unsignedByte - 59, Type.INT, 0);
                    return 1;
                case 63:
                case 64:
                case 65:
                case 66:
                    visitor2.visitLocal(54, i10, 1, unsignedByte - 63, Type.LONG, 0);
                    return 1;
                case 67:
                case 68:
                case 69:
                case 70:
                    visitor2.visitLocal(54, i10, 1, unsignedByte - 67, Type.FLOAT, 0);
                    return 1;
                case 71:
                case 72:
                case 73:
                case 74:
                    visitor2.visitLocal(54, i10, 1, unsignedByte - 71, Type.DOUBLE, 0);
                    return 1;
                case 75:
                case 76:
                case 77:
                case 78:
                    visitor2.visitLocal(54, i10, 1, unsignedByte - 75, Type.OBJECT, 0);
                    return 1;
                case 79:
                    visitor2.visitNoArgs(79, i10, 1, Type.INT);
                    return 1;
                case 80:
                    visitor2.visitNoArgs(79, i10, 1, Type.LONG);
                    return 1;
                case 81:
                    visitor2.visitNoArgs(79, i10, 1, Type.FLOAT);
                    return 1;
                case 82:
                    visitor2.visitNoArgs(79, i10, 1, Type.DOUBLE);
                    return 1;
                case 83:
                    visitor2.visitNoArgs(79, i10, 1, Type.OBJECT);
                    return 1;
                case 84:
                    visitor2.visitNoArgs(79, i10, 1, Type.BYTE);
                    return 1;
                case 85:
                    visitor2.visitNoArgs(79, i10, 1, Type.CHAR);
                    return 1;
                case 86:
                    visitor2.visitNoArgs(79, i10, 1, Type.SHORT);
                    return 1;
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                case 93:
                case 94:
                case 95:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.VOID);
                    return 1;
                case 96:
                case 100:
                case 104:
                case 108:
                case 112:
                case 116:
                case 120:
                case 122:
                case 124:
                case 126:
                case 128:
                case 130:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.INT);
                    return 1;
                case 97:
                case 101:
                case 105:
                case 109:
                case 113:
                case 117:
                case 121:
                case 123:
                case 125:
                case 127:
                case 129:
                case 131:
                    visitor2.visitNoArgs(unsignedByte - 1, i10, 1, Type.LONG);
                    return 1;
                case 98:
                case 102:
                case 106:
                case 110:
                case 114:
                case 118:
                    visitor2.visitNoArgs(unsignedByte - 2, i10, 1, Type.FLOAT);
                    return 1;
                case 99:
                case 103:
                case 107:
                case 111:
                case 115:
                case 119:
                    visitor2.visitNoArgs(unsignedByte - 3, i10, 1, Type.DOUBLE);
                    return 1;
                case 132:
                    visitor2.visitLocal(unsignedByte, i10, 3, this.bytes.getUnsignedByte(i10 + 1), Type.INT, this.bytes.getByte(i10 + 2));
                    return 3;
                case 133:
                case 140:
                case 143:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.LONG);
                    return 1;
                case 134:
                case 137:
                case 144:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.FLOAT);
                    return 1;
                case 135:
                case 138:
                case 141:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.DOUBLE);
                    return 1;
                case 136:
                case 139:
                case 142:
                case 145:
                case 146:
                case 147:
                case 148:
                case 149:
                case 150:
                case 151:
                case 152:
                case 190:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.INT);
                    return 1;
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                case 168:
                case 198:
                case 199:
                    visitor2.visitBranch(unsignedByte, i10, 3, this.bytes.getShort(i10 + 1) + i10);
                    return 3;
                case 169:
                    visitor2.visitLocal(unsignedByte, i10, 2, this.bytes.getUnsignedByte(i10 + 1), Type.RETURN_ADDRESS, 0);
                    return 2;
                case 170:
                    return parseTableswitch(i10, visitor2);
                case 171:
                    return parseLookupswitch(i10, visitor2);
                case 172:
                    visitor2.visitNoArgs(172, i10, 1, Type.INT);
                    return 1;
                case 173:
                    visitor2.visitNoArgs(172, i10, 1, Type.LONG);
                    return 1;
                case 174:
                    visitor2.visitNoArgs(172, i10, 1, Type.FLOAT);
                    return 1;
                case 175:
                    visitor2.visitNoArgs(172, i10, 1, Type.DOUBLE);
                    return 1;
                case 176:
                    visitor2.visitNoArgs(172, i10, 1, Type.OBJECT);
                    return 1;
                case 177:
                case 191:
                case 194:
                case 195:
                    visitor2.visitNoArgs(unsignedByte, i10, 1, Type.VOID);
                    return 1;
                case 178:
                case 179:
                case 180:
                case 181:
                case 182:
                case 183:
                case 184:
                case 187:
                case 189:
                case 192:
                case 193:
                    visitor2.visitConstant(unsignedByte, i10, 3, this.pool.get(this.bytes.getUnsignedShort(i10 + 1)), 0);
                    return 3;
                case 185:
                    visitor2.visitConstant(unsignedByte, i10, 5, this.pool.get(this.bytes.getUnsignedShort(i10 + 1)), this.bytes.getUnsignedByte(i10 + 3) | (this.bytes.getUnsignedByte(i10 + 4) << 8));
                    return 5;
                case 186:
                    visitor2.visitConstant(unsignedByte, i10, 5, (CstInvokeDynamic) this.pool.get(this.bytes.getUnsignedShort(i10 + 1)), 0);
                    return 5;
                case 188:
                    return parseNewarray(i10, visitor2);
                case 196:
                    return parseWide(i10, visitor2);
                case 197:
                    visitor2.visitConstant(unsignedByte, i10, 4, this.pool.get(this.bytes.getUnsignedShort(i10 + 1)), this.bytes.getUnsignedByte(i10 + 3));
                    return 4;
                case 200:
                case 201:
                    visitor2.visitBranch(unsignedByte == 200 ? 167 : 168, i10, 5, this.bytes.getInt(i10 + 1) + i10);
                    return 5;
                default:
                    visitor2.visitInvalid(unsignedByte, i10, 1);
                    return 1;
            }
        } catch (SimException e10) {
            e10.addContext("...at bytecode offset " + Hex.u4(i10));
            throw e10;
        } catch (RuntimeException e11) {
            SimException simException = new SimException(e11);
            simException.addContext("...at bytecode offset " + Hex.u4(i10));
            throw simException;
        }
    }

    public void processWorkSet(int[] iArr, Visitor visitor) {
        if (visitor == null) {
            throw new NullPointerException("visitor == null");
        }
        while (true) {
            int iFindFirst = Bits.findFirst(iArr, 0);
            if (iFindFirst < 0) {
                return;
            }
            Bits.clear(iArr, iFindFirst);
            parseInstruction(iFindFirst, visitor);
            visitor.setPreviousOffset(iFindFirst);
        }
    }

    public int size() {
        return this.bytes.size();
    }
}
