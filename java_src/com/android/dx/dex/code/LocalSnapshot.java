package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;

/* JADX INFO: loaded from: classes7.dex */
public final class LocalSnapshot extends ZeroSizeInsn {
    private final RegisterSpecSet locals;

    public LocalSnapshot(SourcePosition sourcePosition, RegisterSpecSet registerSpecSet) {
        super(sourcePosition);
        if (registerSpecSet == null) {
            throw new NullPointerException("locals == null");
        }
        this.locals = registerSpecSet;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        return this.locals.toString();
    }

    public RegisterSpecSet getLocals() {
        return this.locals;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String listingString0(boolean z10) {
        int size = this.locals.size();
        int maxSize = this.locals.getMaxSize();
        StringBuilder sb2 = new StringBuilder((size * 40) + 100);
        sb2.append("local-snapshot");
        for (int i10 = 0; i10 < maxSize; i10++) {
            RegisterSpec registerSpec = this.locals.get(i10);
            if (registerSpec != null) {
                sb2.append("\n  ");
                sb2.append(LocalStart.localString(registerSpec));
            }
        }
        return sb2.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return new LocalSnapshot(getPosition(), registerMapper.map(this.locals));
    }

    @Override // com.android.dx.dex.code.ZeroSizeInsn, com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i10) {
        return new LocalSnapshot(getPosition(), this.locals.withOffset(i10));
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new LocalSnapshot(getPosition(), this.locals);
    }
}
