package com.android.dx.cf.direct;

import com.android.dx.cf.code.ByteOps;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.SwitchList;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class CodeObserver implements BytecodeArray.Visitor {
    private final ByteArray bytes;
    private final ParseObserver observer;

    public CodeObserver(ByteArray byteArray, ParseObserver parseObserver) {
        if (byteArray == null) {
            throw new NullPointerException("bytes == null");
        }
        if (parseObserver == null) {
            throw new NullPointerException("observer == null");
        }
        this.bytes = byteArray;
        this.observer = parseObserver;
    }

    private String header(int i10) {
        int unsignedByte = this.bytes.getUnsignedByte(i10);
        String strOpName = ByteOps.opName(unsignedByte);
        if (unsignedByte == 196) {
            strOpName = strOpName + " " + ByteOps.opName(this.bytes.getUnsignedByte(i10 + 1));
        }
        return Hex.u2(i10) + ": " + strOpName;
    }

    private void visitLiteralDouble(int i10, int i11, int i12, long j10) {
        String str;
        if (i12 != 1) {
            str = " #" + Hex.u8(j10);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + " // " + Double.longBitsToDouble(j10));
    }

    private void visitLiteralFloat(int i10, int i11, int i12, int i13) {
        String str;
        if (i12 != 1) {
            str = " #" + Hex.u4(i13);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + " // " + Float.intBitsToFloat(i13));
    }

    private void visitLiteralInt(int i10, int i11, int i12, int i13) {
        String str;
        String str2 = i12 == 1 ? " // " : " ";
        int unsignedByte = this.bytes.getUnsignedByte(i11);
        if (i12 == 1 || unsignedByte == 16) {
            str = "#" + Hex.s1(i13);
        } else if (unsignedByte == 17) {
            str = "#" + Hex.s2(i13);
        } else {
            str = "#" + Hex.s4(i13);
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str2 + str);
    }

    private void visitLiteralLong(int i10, int i11, int i12, long j10) {
        String str = i12 == 1 ? " // " : " #";
        String strS1 = i12 == 1 ? Hex.s1((int) j10) : Hex.s8(j10);
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + strS1);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public int getPreviousOffset() {
        return -1;
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void setPreviousOffset(int i10) {
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitBranch(int i10, int i11, int i12, int i13) {
        String strU2 = i12 <= 3 ? Hex.u2(i13) : Hex.u4(i13);
        this.observer.parsed(this.bytes, i11, i12, header(i11) + " " + strU2);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
        String str;
        if (constant instanceof CstKnownNull) {
            visitNoArgs(i10, i11, i12, null);
            return;
        }
        if (constant instanceof CstInteger) {
            visitLiteralInt(i10, i11, i12, i13);
            return;
        }
        if (constant instanceof CstLong) {
            visitLiteralLong(i10, i11, i12, ((CstLong) constant).getValue());
            return;
        }
        if (constant instanceof CstFloat) {
            visitLiteralFloat(i10, i11, i12, ((CstFloat) constant).getIntBits());
            return;
        }
        if (constant instanceof CstDouble) {
            visitLiteralDouble(i10, i11, i12, ((CstDouble) constant).getLongBits());
            return;
        }
        if (i13 == 0) {
            str = "";
        } else if (i10 == 197) {
            str = ", " + Hex.u1(i13);
        } else {
            str = ", " + Hex.u2(i13);
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + " " + constant + str);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitInvalid(int i10, int i11, int i12) {
        this.observer.parsed(this.bytes, i11, i12, header(i11));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
        String string;
        String strU1 = i12 <= 3 ? Hex.u1(i13) : Hex.u2(i13);
        boolean z10 = i12 == 1;
        String string2 = "";
        if (i10 == 132) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(", #");
            sb2.append(i12 <= 3 ? Hex.s1(i14) : Hex.s2(i14));
            string = sb2.toString();
        } else {
            string = "";
        }
        if (type.isCategory2()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(z10 ? "," : " //");
            sb3.append(" category-2");
            string2 = sb3.toString();
        }
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(header(i11));
        sb4.append(z10 ? " // " : " ");
        sb4.append(strU1);
        sb4.append(string);
        sb4.append(string2);
        parseObserver.parsed(byteArray, i11, i12, sb4.toString());
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
        String str = i11 == 1 ? " // " : " ";
        String human = cstType.getClassType().getComponentType().toHuman();
        this.observer.parsed(this.bytes, i10, i11, header(i10) + str + human);
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitNoArgs(int i10, int i11, int i12, Type type) {
        this.observer.parsed(this.bytes, i11, i12, header(i11));
    }

    @Override // com.android.dx.cf.code.BytecodeArray.Visitor
    public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
        int size = switchList.size();
        StringBuilder sb2 = new StringBuilder((size * 20) + 100);
        sb2.append(header(i11));
        if (i13 != 0) {
            sb2.append(" // padding: " + Hex.u4(i13));
        }
        sb2.append('\n');
        for (int i14 = 0; i14 < size; i14++) {
            sb2.append("  ");
            sb2.append(Hex.s4(switchList.getValue(i14)));
            sb2.append(": ");
            sb2.append(Hex.u2(switchList.getTarget(i14)));
            sb2.append('\n');
        }
        sb2.append("  default: ");
        sb2.append(Hex.u2(switchList.getDefaultTarget()));
        this.observer.parsed(this.bytes, i11, i12, sb2.toString());
    }
}
