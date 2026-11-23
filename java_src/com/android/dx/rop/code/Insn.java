package com.android.dx.rop.code;

import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.ToHuman;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Insn implements ToHuman {
    private final Rop opcode;
    private final SourcePosition position;
    private final RegisterSpec result;
    private final RegisterSpecList sources;

    public static class BaseVisitor implements Visitor {
        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainCstInsn(PlainCstInsn plainCstInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitPlainInsn(PlainInsn plainInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitSwitchInsn(SwitchInsn switchInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn) {
        }

        @Override // com.android.dx.rop.code.Insn.Visitor
        public void visitThrowingInsn(ThrowingInsn throwingInsn) {
        }
    }

    public interface Visitor {
        void visitFillArrayDataInsn(FillArrayDataInsn fillArrayDataInsn);

        void visitInvokePolymorphicInsn(InvokePolymorphicInsn invokePolymorphicInsn);

        void visitPlainCstInsn(PlainCstInsn plainCstInsn);

        void visitPlainInsn(PlainInsn plainInsn);

        void visitSwitchInsn(SwitchInsn switchInsn);

        void visitThrowingCstInsn(ThrowingCstInsn throwingCstInsn);

        void visitThrowingInsn(ThrowingInsn throwingInsn);
    }

    public Insn(Rop rop, SourcePosition sourcePosition, RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        if (rop == null) {
            throw new NullPointerException("opcode == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("position == null");
        }
        if (registerSpecList == null) {
            throw new NullPointerException("sources == null");
        }
        this.opcode = rop;
        this.position = sourcePosition;
        this.result = registerSpec;
        this.sources = registerSpecList;
    }

    private static boolean equalsHandleNulls(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public abstract void accept(Visitor visitor);

    public final boolean canThrow() {
        return this.opcode.canThrow();
    }

    public boolean contentEquals(Insn insn) {
        return this.opcode == insn.getOpcode() && this.position.equals(insn.getPosition()) && getClass() == insn.getClass() && equalsHandleNulls(this.result, insn.getResult()) && equalsHandleNulls(this.sources, insn.getSources()) && StdTypeList.equalContents(getCatches(), insn.getCatches());
    }

    public Insn copy() {
        return withRegisterOffset(0);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract TypeList getCatches();

    public String getInlineString() {
        return null;
    }

    public final RegisterSpec getLocalAssignment() {
        RegisterSpec registerSpec = this.opcode.getOpcode() == 54 ? this.sources.get(0) : this.result;
        if (registerSpec == null || registerSpec.getLocalItem() == null) {
            return null;
        }
        return registerSpec;
    }

    public final Rop getOpcode() {
        return this.opcode;
    }

    public final SourcePosition getPosition() {
        return this.position;
    }

    public final RegisterSpec getResult() {
        return this.result;
    }

    public final RegisterSpecList getSources() {
        return this.sources;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toHumanWithInline(getInlineString());
    }

    protected final String toHumanWithInline(String str) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(this.position);
        sb2.append(": ");
        sb2.append(this.opcode.getNickname());
        if (str != null) {
            sb2.append("(");
            sb2.append(str);
            sb2.append(")");
        }
        if (this.result == null) {
            sb2.append(" .");
        } else {
            sb2.append(" ");
            sb2.append(this.result.toHuman());
        }
        sb2.append(" <-");
        int size = this.sources.size();
        if (size == 0) {
            sb2.append(" .");
        } else {
            for (int i10 = 0; i10 < size; i10++) {
                sb2.append(" ");
                sb2.append(this.sources.get(i10).toHuman());
            }
        }
        return sb2.toString();
    }

    public String toString() {
        return toStringWithInline(getInlineString());
    }

    protected final String toStringWithInline(String str) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("Insn{");
        sb2.append(this.position);
        sb2.append(' ');
        sb2.append(this.opcode);
        if (str != null) {
            sb2.append(' ');
            sb2.append(str);
        }
        sb2.append(" :: ");
        RegisterSpec registerSpec = this.result;
        if (registerSpec != null) {
            sb2.append(registerSpec);
            sb2.append(" <- ");
        }
        sb2.append(this.sources);
        sb2.append('}');
        return sb2.toString();
    }

    public abstract Insn withAddedCatch(Type type);

    public abstract Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList);

    public abstract Insn withRegisterOffset(int i10);

    public Insn withSourceLiteral() {
        return this;
    }
}
