package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLiteral64;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.BitSet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class InsnFormat {
    public static final boolean ALLOW_EXTENDED_OPCODES = true;

    protected static int argIndex(DalvInsn dalvInsn) {
        int value = ((CstInteger) ((CstInsn) dalvInsn).getConstant()).getValue();
        if (value >= 0) {
            return value;
        }
        throw new IllegalArgumentException("bogus insn");
    }

    protected static String branchComment(DalvInsn dalvInsn) {
        int targetOffset = ((TargetInsn) dalvInsn).getTargetOffset();
        return targetOffset == ((short) targetOffset) ? Hex.s2(targetOffset) : Hex.s4(targetOffset);
    }

    protected static String branchString(DalvInsn dalvInsn) {
        int targetAddress = ((TargetInsn) dalvInsn).getTargetAddress();
        return targetAddress == ((char) targetAddress) ? Hex.u2(targetAddress) : Hex.u4(targetAddress);
    }

    protected static short codeUnit(int i10, int i11) {
        if ((i10 & 255) != i10) {
            throw new IllegalArgumentException("low out of range 0..255");
        }
        if ((i11 & 255) == i11) {
            return (short) (i10 | (i11 << 8));
        }
        throw new IllegalArgumentException("high out of range 0..255");
    }

    protected static boolean isRegListSequential(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size < 2) {
            return true;
        }
        int reg = registerSpecList.get(0).getReg();
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec registerSpec = registerSpecList.get(i10);
            if (registerSpec.getReg() != reg) {
                return false;
            }
            reg += registerSpec.getCategory();
        }
        return true;
    }

    protected static String literalBitsComment(CstLiteralBits cstLiteralBits, int i10) {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("#");
        long longBits = cstLiteralBits instanceof CstLiteral64 ? ((CstLiteral64) cstLiteralBits).getLongBits() : cstLiteralBits.getIntBits();
        if (i10 == 4) {
            sb2.append(Hex.uNibble((int) longBits));
        } else if (i10 == 8) {
            sb2.append(Hex.u1((int) longBits));
        } else if (i10 == 16) {
            sb2.append(Hex.u2((int) longBits));
        } else if (i10 == 32) {
            sb2.append(Hex.u4((int) longBits));
        } else {
            if (i10 != 64) {
                throw new RuntimeException("shouldn't happen");
            }
            sb2.append(Hex.u8(longBits));
        }
        return sb2.toString();
    }

    protected static String literalBitsString(CstLiteralBits cstLiteralBits) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append('#');
        if (cstLiteralBits instanceof CstKnownNull) {
            sb2.append("null");
        } else {
            sb2.append(cstLiteralBits.typeName());
            sb2.append(' ');
            sb2.append(cstLiteralBits.toHuman());
        }
        return sb2.toString();
    }

    protected static int makeByte(int i10, int i11) {
        if ((i10 & 15) != i10) {
            throw new IllegalArgumentException("low out of range 0..15");
        }
        if ((i11 & 15) == i11) {
            return i10 | (i11 << 4);
        }
        throw new IllegalArgumentException("high out of range 0..15");
    }

    protected static short opcodeUnit(DalvInsn dalvInsn, int i10) {
        if ((i10 & 255) != i10) {
            throw new IllegalArgumentException("arg out of range 0..255");
        }
        int opcode = dalvInsn.getOpcode().getOpcode();
        if ((opcode & 255) == opcode) {
            return (short) (opcode | (i10 << 8));
        }
        throw new IllegalArgumentException("opcode out of range 0..255");
    }

    protected static String regListString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuilder sb2 = new StringBuilder((size * 5) + 2);
        sb2.append('{');
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(registerSpecList.get(i10).regString());
        }
        sb2.append('}');
        return sb2.toString();
    }

    protected static String regRangeString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append("{");
        if (size != 0) {
            if (size != 1) {
                RegisterSpec registerSpecWithOffset = registerSpecList.get(size - 1);
                if (registerSpecWithOffset.getCategory() == 2) {
                    registerSpecWithOffset = registerSpecWithOffset.withOffset(1);
                }
                sb2.append(registerSpecList.get(0).regString());
                sb2.append("..");
                sb2.append(registerSpecWithOffset.regString());
            } else {
                sb2.append(registerSpecList.get(0).regString());
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    protected static boolean signedFitsInByte(int i10) {
        return ((byte) i10) == i10;
    }

    protected static boolean signedFitsInNibble(int i10) {
        return i10 >= -8 && i10 <= 7;
    }

    protected static boolean signedFitsInShort(int i10) {
        return ((short) i10) == i10;
    }

    protected static boolean unsignedFitsInByte(int i10) {
        return i10 == (i10 & 255);
    }

    protected static boolean unsignedFitsInNibble(int i10) {
        return i10 == (i10 & 15);
    }

    protected static boolean unsignedFitsInShort(int i10) {
        return i10 == (65535 & i10);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10) {
        annotatedOutput.writeShort(s10);
    }

    public boolean branchFits(TargetInsn targetInsn) {
        return false;
    }

    public abstract int codeSize();

    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        return new BitSet();
    }

    public abstract String insnArgString(DalvInsn dalvInsn);

    public abstract String insnCommentString(DalvInsn dalvInsn, boolean z10);

    public abstract boolean isCompatible(DalvInsn dalvInsn);

    public final String listingString(DalvInsn dalvInsn, boolean z10) {
        String name = dalvInsn.getOpcode().getName();
        String strInsnArgString = insnArgString(dalvInsn);
        String strInsnCommentString = insnCommentString(dalvInsn, z10);
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(name);
        if (strInsnArgString.length() != 0) {
            sb2.append(' ');
            sb2.append(strInsnArgString);
        }
        if (strInsnCommentString.length() != 0) {
            sb2.append(" // ");
            sb2.append(strInsnCommentString);
        }
        return sb2.toString();
    }

    public abstract void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn);

    protected static void write(AnnotatedOutput annotatedOutput, short s10, short s11) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
    }

    protected static short codeUnit(int i10, int i11, int i12, int i13) {
        if ((i10 & 15) != i10) {
            throw new IllegalArgumentException("n0 out of range 0..15");
        }
        if ((i11 & 15) != i11) {
            throw new IllegalArgumentException("n1 out of range 0..15");
        }
        if ((i12 & 15) != i12) {
            throw new IllegalArgumentException("n2 out of range 0..15");
        }
        if ((i13 & 15) == i13) {
            return (short) (i10 | (i11 << 4) | (i12 << 8) | (i13 << 12));
        }
        throw new IllegalArgumentException("n3 out of range 0..15");
    }

    protected static short opcodeUnit(DalvInsn dalvInsn) {
        int opcode = dalvInsn.getOpcode().getOpcode();
        if (opcode < 256 || opcode > 65535) {
            throw new IllegalArgumentException("opcode out of range 0..65535");
        }
        return (short) opcode;
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12, short s13) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
        annotatedOutput.writeShort(s13);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12, short s13, short s14) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
        annotatedOutput.writeShort(s13);
        annotatedOutput.writeShort(s14);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, int i10) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16));
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, int i10, short s11) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16), s11);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, int i10, short s11, short s12) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16), s11, s12);
    }

    protected static void write(AnnotatedOutput annotatedOutput, short s10, long j10) {
        write(annotatedOutput, s10, (short) j10, (short) (j10 >> 16), (short) (j10 >> 32), (short) (j10 >> 48));
    }
}
