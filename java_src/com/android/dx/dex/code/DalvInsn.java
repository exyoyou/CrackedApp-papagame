package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.TwoColumnOutput;
import io.netty.util.internal.StringUtil;
import java.util.BitSet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class DalvInsn {
    private int address;
    private final Dop opcode;
    private final SourcePosition position;
    private final RegisterSpecList registers;

    public DalvInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        if (dop == null) {
            throw new NullPointerException("opcode == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("position == null");
        }
        if (registerSpecList == null) {
            throw new NullPointerException("registers == null");
        }
        this.address = -1;
        this.opcode = dop;
        this.position = sourcePosition;
        this.registers = registerSpecList;
    }

    public static SimpleInsn makeMove(SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpec registerSpec2) {
        Dop dop;
        boolean z10 = registerSpec.getCategory() == 1;
        boolean zIsReference = registerSpec.getType().isReference();
        int reg = registerSpec.getReg();
        if ((registerSpec2.getReg() | reg) < 16) {
            if (zIsReference) {
                dop = Dops.MOVE_OBJECT;
            } else {
                dop = z10 ? Dops.MOVE : Dops.MOVE_WIDE;
            }
        } else if (reg < 256) {
            if (zIsReference) {
                dop = Dops.MOVE_OBJECT_FROM16;
            } else {
                dop = z10 ? Dops.MOVE_FROM16 : Dops.MOVE_WIDE_FROM16;
            }
        } else if (zIsReference) {
            dop = Dops.MOVE_OBJECT_16;
        } else {
            dop = z10 ? Dops.MOVE_16 : Dops.MOVE_WIDE_16;
        }
        return new SimpleInsn(dop, sourcePosition, RegisterSpecList.make(registerSpec, registerSpec2));
    }

    protected abstract String argString();

    public abstract int codeSize();

    public String cstComment() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String cstString() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public DalvInsn expandedPrefix(BitSet bitSet) {
        RegisterSpecList registerSpecList = this.registers;
        boolean z10 = bitSet.get(0);
        if (hasResult()) {
            bitSet.set(0);
        }
        RegisterSpecList registerSpecListSubset = registerSpecList.subset(bitSet);
        if (hasResult()) {
            bitSet.set(0, z10);
        }
        if (registerSpecListSubset.size() == 0) {
            return null;
        }
        return new HighRegisterPrefix(this.position, registerSpecListSubset);
    }

    public DalvInsn expandedSuffix(BitSet bitSet) {
        if (!hasResult() || bitSet.get(0)) {
            return null;
        }
        RegisterSpec registerSpec = this.registers.get(0);
        return makeMove(this.position, registerSpec, registerSpec.withReg(0));
    }

    public DalvInsn expandedVersion(BitSet bitSet) {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), bitSet));
    }

    public final int getAddress() {
        int i10 = this.address;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("address not yet known");
    }

    public DalvInsn getLowRegVersion() {
        return withRegisters(this.registers.withExpandedRegisters(0, hasResult(), null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.dx.rop.code.RegisterSpecList] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.BitSet] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final int getMinimumRegisterRequirement(BitSet bitSet) {
        ?? HasResult = hasResult();
        int size = this.registers.size();
        int category = 0;
        int category2 = (HasResult == 0 || bitSet.get(0)) ? 0 : this.registers.get(0).getCategory();
        while (HasResult < size) {
            if (!bitSet.get(HasResult)) {
                category += this.registers.get(HasResult).getCategory();
            }
            HasResult++;
        }
        return Math.max(category, category2);
    }

    public final int getNextAddress() {
        return getAddress() + codeSize();
    }

    public final Dop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpecList getRegisters() {
        return this.registers;
    }

    public final boolean hasAddress() {
        return this.address >= 0;
    }

    public final boolean hasResult() {
        return this.opcode.hasResult();
    }

    public final String identifierString() {
        int i10 = this.address;
        return i10 != -1 ? String.format("%04x", Integer.valueOf(i10)) : Hex.u4(System.identityHashCode(this));
    }

    public final String listingString(String str, int i10, boolean z10) {
        String strListingString0 = listingString0(z10);
        if (strListingString0 == null) {
            return null;
        }
        String str2 = str + identifierString() + ": ";
        int length = str2.length();
        return TwoColumnOutput.toString(str2, length, "", strListingString0, i10 == 0 ? strListingString0.length() : i10 - length);
    }

    protected abstract String listingString0(boolean z10);

    public final void setAddress(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("address < 0");
        }
        this.address = i10;
    }

    public final String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(identifierString());
        sb2.append(' ');
        sb2.append(this.position);
        sb2.append(": ");
        sb2.append(this.opcode.getName());
        if (this.registers.size() != 0) {
            sb2.append(this.registers.toHuman(" ", ", ", null));
            z10 = true;
        } else {
            z10 = false;
        }
        String strArgString = argString();
        if (strArgString != null) {
            if (z10) {
                sb2.append(StringUtil.COMMA);
            }
            sb2.append(' ');
            sb2.append(strArgString);
        }
        return sb2.toString();
    }

    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return withRegisters(registerMapper.map(getRegisters()));
    }

    public abstract DalvInsn withOpcode(Dop dop);

    public abstract DalvInsn withRegisterOffset(int i10);

    public abstract DalvInsn withRegisters(RegisterSpecList registerSpecList);

    public abstract void writeTo(AnnotatedOutput annotatedOutput);
}
