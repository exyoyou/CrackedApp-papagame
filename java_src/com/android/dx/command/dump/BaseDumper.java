package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.dex.DexOptions;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IndentingWriter;
import com.android.dx.util.TwoColumnOutput;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseDumper implements ParseObserver {
    protected Args args;
    private final byte[] bytes;
    protected final DexOptions dexOptions;
    private final String filePath;
    private final int hexCols;
    private int indent;
    private final PrintStream out;
    private final boolean rawBytes;
    private int readBytes;
    private String separator;
    private final boolean strictParse;
    private final int width;

    public BaseDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        this.bytes = bArr;
        boolean z10 = args.rawBytes;
        this.rawBytes = z10;
        this.out = printStream;
        int i10 = args.width;
        i10 = i10 <= 0 ? 79 : i10;
        this.width = i10;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.indent = 0;
        this.separator = z10 ? "|" : "";
        this.readBytes = 0;
        this.args = args;
        this.dexOptions = new DexOptions();
        int i11 = (((i10 - 5) / 15) + 1) & (-2);
        if (i11 < 6) {
            i11 = 6;
        } else if (i11 > 10) {
            i11 = 10;
        }
        this.hexCols = i11;
    }

    static int computeParamWidth(ConcreteMethod concreteMethod, boolean z10) {
        return concreteMethod.getEffectiveDescriptor().getParameterTypes().getWordCount();
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void changeIndent(int i10) {
        this.indent += i10;
        this.separator = this.rawBytes ? "|" : "";
        for (int i11 = 0; i11 < this.indent; i11++) {
            this.separator += "  ";
        }
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
    }

    protected final byte[] getBytes() {
        return this.bytes;
    }

    protected final String getFilePath() {
        return this.filePath;
    }

    protected final boolean getRawBytes() {
        return this.rawBytes;
    }

    protected final int getReadBytes() {
        return this.readBytes;
    }

    protected final boolean getStrictParse() {
        return this.strictParse;
    }

    protected final int getWidth1() {
        if (!this.rawBytes) {
            return 0;
        }
        int i10 = this.hexCols;
        return (i10 * 2) + 5 + (i10 / 2);
    }

    protected final int getWidth2() {
        return (this.width - (this.rawBytes ? getWidth1() + 1 : 0)) - (this.indent * 2);
    }

    protected final String hexDump(int i10, int i11) {
        return Hex.dump(this.bytes, i10, i11, i10, this.hexCols, 4);
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void parsed(ByteArray byteArray, int i10, int i11, String str) {
        print(twoColumns(getRawBytes() ? hexDump(byteArray.underlyingOffset(i10), i11) : "", str));
        this.readBytes += i11;
    }

    protected final void print(String str) {
        this.out.print(str);
    }

    protected final void println(String str) {
        this.out.println(str);
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void startParsingMember(ByteArray byteArray, int i10, String str, String str2) {
    }

    protected final String twoColumns(String str, String str2) {
        int width1 = getWidth1();
        int width2 = getWidth2();
        try {
            if (width1 != 0) {
                return TwoColumnOutput.toString(str, width1, this.separator, str2, width2);
            }
            int length = str2.length();
            StringWriter stringWriter = new StringWriter(length * 2);
            IndentingWriter indentingWriter = new IndentingWriter(stringWriter, width2, this.separator);
            indentingWriter.write(str2);
            if (length == 0 || str2.charAt(length - 1) != '\n') {
                indentingWriter.write(10);
            }
            indentingWriter.flush();
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
