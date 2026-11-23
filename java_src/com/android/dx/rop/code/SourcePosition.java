package com.android.dx.rop.code;

import com.android.dx.rop.cst.CstString;
import com.android.dx.util.Hex;

/* JADX INFO: loaded from: classes7.dex */
public final class SourcePosition {
    public static final SourcePosition NO_INFO = new SourcePosition(null, -1, -1);
    private final int address;
    private final int line;
    private final CstString sourceFile;

    public SourcePosition(CstString cstString, int i10, int i11) {
        if (i10 < -1) {
            throw new IllegalArgumentException("address < -1");
        }
        if (i11 < -1) {
            throw new IllegalArgumentException("line < -1");
        }
        this.sourceFile = cstString;
        this.address = i10;
        this.line = i11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SourcePosition)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        SourcePosition sourcePosition = (SourcePosition) obj;
        return this.address == sourcePosition.address && sameLineAndFile(sourcePosition);
    }

    public int getAddress() {
        return this.address;
    }

    public int getLine() {
        return this.line;
    }

    public CstString getSourceFile() {
        return this.sourceFile;
    }

    public int hashCode() {
        return this.sourceFile.hashCode() + this.address + this.line;
    }

    public boolean sameLine(SourcePosition sourcePosition) {
        return this.line == sourcePosition.line;
    }

    public boolean sameLineAndFile(SourcePosition sourcePosition) {
        CstString cstString;
        CstString cstString2;
        return this.line == sourcePosition.line && ((cstString = this.sourceFile) == (cstString2 = sourcePosition.sourceFile) || (cstString != null && cstString.equals(cstString2)));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(50);
        CstString cstString = this.sourceFile;
        if (cstString != null) {
            sb2.append(cstString.toHuman());
            sb2.append(":");
        }
        int i10 = this.line;
        if (i10 >= 0) {
            sb2.append(i10);
        }
        sb2.append('@');
        int i11 = this.address;
        if (i11 < 0) {
            sb2.append("????");
        } else {
            sb2.append(Hex.u2(i11));
        }
        return sb2.toString();
    }
}
