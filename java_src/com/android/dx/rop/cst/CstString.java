package com.android.dx.rop.cst;

import com.android.dx.io.Opcodes;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes7.dex */
public final class CstString extends TypedConstant {
    public static final CstString EMPTY_STRING = new CstString("");
    private final ByteArray bytes;
    private final String string;

    public CstString(String str) {
        if (str == null) {
            throw new NullPointerException("string == null");
        }
        this.string = str.intern();
        this.bytes = new ByteArray(stringToUtf8Bytes(str));
    }

    public static byte[] stringToUtf8Bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i10] = (byte) cCharAt;
                i10++;
            } else if (cCharAt < 2048) {
                bArr[i10] = (byte) (((cCharAt >> 6) & 31) | 192);
                bArr[i10 + 1] = (byte) ((cCharAt & '?') | 128);
                i10 += 2;
            } else {
                bArr[i10] = (byte) (((cCharAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                bArr[i10 + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                bArr[i10 + 2] = (byte) ((cCharAt & '?') | 128);
                i10 += 3;
            }
        }
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    private static String throwBadUtf8(int i10, int i11) {
        throw new IllegalArgumentException("bad utf-8 byte " + Hex.u1(i10) + " at offset " + Hex.u4(i11));
    }

    public static String utf8BytesToString(ByteArray byteArray) {
        char c10;
        int size = byteArray.size();
        char[] cArr = new char[size];
        int i10 = 0;
        int i11 = 0;
        while (size > 0) {
            int unsignedByte = byteArray.getUnsignedByte(i11);
            switch (unsignedByte >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    size--;
                    if (unsignedByte == 0) {
                        return throwBadUtf8(unsignedByte, i11);
                    }
                    c10 = (char) unsignedByte;
                    i11++;
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(unsignedByte, i11);
                case 12:
                case 13:
                    size -= 2;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i11);
                    }
                    int i12 = i11 + 1;
                    int unsignedByte2 = byteArray.getUnsignedByte(i12);
                    if ((unsignedByte2 & 192) != 128) {
                        return throwBadUtf8(unsignedByte2, i12);
                    }
                    int i13 = ((unsignedByte & 31) << 6) | (unsignedByte2 & 63);
                    if (i13 != 0 && i13 < 128) {
                        return throwBadUtf8(unsignedByte2, i12);
                    }
                    c10 = (char) i13;
                    i11 += 2;
                    break;
                    break;
                case 14:
                    size -= 3;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i11);
                    }
                    int i14 = i11 + 1;
                    int unsignedByte3 = byteArray.getUnsignedByte(i14);
                    int i15 = unsignedByte3 & 192;
                    if (i15 != 128) {
                        return throwBadUtf8(unsignedByte3, i14);
                    }
                    int i16 = i11 + 2;
                    int unsignedByte4 = byteArray.getUnsignedByte(i16);
                    if (i15 != 128) {
                        return throwBadUtf8(unsignedByte4, i16);
                    }
                    int i17 = ((unsignedByte & 15) << 12) | ((unsignedByte3 & 63) << 6) | (unsignedByte4 & 63);
                    if (i17 < 2048) {
                        return throwBadUtf8(unsignedByte4, i16);
                    }
                    c10 = (char) i17;
                    i11 += 3;
                    break;
            }
            cArr[i10] = c10;
            i10++;
        }
        return new String(cArr, 0, i10);
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.string.compareTo(((CstString) constant).string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstString) {
            return this.string.equals(((CstString) obj).string);
        }
        return false;
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    public String getString() {
        return this.string;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.STRING;
    }

    public int getUtf16Size() {
        return this.string.length();
    }

    public int getUtf8Size() {
        return this.bytes.size();
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        int length = this.string.length();
        StringBuilder sb2 = new StringBuilder((length * 3) / 2);
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = this.string.charAt(i10);
            if (cCharAt >= ' ' && cCharAt < 127) {
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                    sb2.append(TokenParser.ESCAPE);
                }
                sb2.append(cCharAt);
            } else if (cCharAt > 127) {
                sb2.append("\\u");
                sb2.append(Character.forDigit(cCharAt >> '\f', 16));
                sb2.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                sb2.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                sb2.append(Character.forDigit(cCharAt & 15, 16));
            } else if (cCharAt == '\t') {
                sb2.append("\\t");
            } else if (cCharAt == '\n') {
                sb2.append("\\n");
            } else if (cCharAt != '\r') {
                char cCharAt2 = i10 < length + (-1) ? this.string.charAt(i10 + 1) : (char) 0;
                boolean z10 = cCharAt2 >= '0' && cCharAt2 <= '7';
                sb2.append(TokenParser.ESCAPE);
                for (int i11 = 6; i11 >= 0; i11 -= 3) {
                    char c10 = (char) (((cCharAt >> i11) & 7) + 48);
                    if (c10 != '0' || z10) {
                        sb2.append(c10);
                        z10 = true;
                    }
                }
                if (!z10) {
                    sb2.append('0');
                }
            } else {
                sb2.append("\\r");
            }
            i10++;
        }
        return sb2.toString();
    }

    public String toQuoted() {
        return '\"' + toHuman() + '\"';
    }

    public String toString() {
        return "string{\"" + toHuman() + "\"}";
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "utf8";
    }

    public String toQuoted(int i10) {
        String str;
        String human = toHuman();
        if (human.length() <= i10 - 2) {
            str = "";
        } else {
            human = human.substring(0, i10 - 5);
            str = "...";
        }
        return '\"' + human + str + '\"';
    }

    public CstString(ByteArray byteArray) {
        if (byteArray != null) {
            this.bytes = byteArray;
            this.string = utf8BytesToString(byteArray).intern();
            return;
        }
        throw new NullPointerException("bytes == null");
    }
}
