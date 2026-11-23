package org.jboss.netty.buffer;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.ArrayList;
import java.util.List;
import kotlin.UShort;

/* JADX INFO: loaded from: classes10.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteOrder f95464a = ByteOrder.BIG_ENDIAN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ByteOrder f95465b = ByteOrder.LITTLE_ENDIAN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f95466c = new c(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f95467d = new char[1024];

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        for (int i10 = 0; i10 < 256; i10++) {
            char[] cArr = f95467d;
            int i11 = i10 << 1;
            cArr[i11] = charArray[(i10 >>> 4) & 15];
            cArr[i11 + 1] = charArray[i10 & 15];
        }
    }

    private h() {
    }

    public static e A(int i10) {
        return B(f95464a, i10);
    }

    public static e B(ByteOrder byteOrder, int i10) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        }
        if (i10 == 0) {
            return f95466c;
        }
        d dVar = new d(ByteBuffer.allocateDirect(i10).order(byteOrder));
        dVar.clear();
        return dVar;
    }

    public static e C() {
        return F(f95464a, 256);
    }

    public static e D(int i10) {
        return F(f95464a, i10);
    }

    public static e E(int i10, f fVar) {
        if (fVar != null) {
            return new l(fVar.e(), i10, fVar);
        }
        throw new NullPointerException("factory");
    }

    public static e F(ByteOrder byteOrder, int i10) {
        return new l(byteOrder, i10);
    }

    public static e G(ByteOrder byteOrder, int i10, f fVar) {
        return new l(byteOrder, i10, fVar);
    }

    public static e H(f fVar) {
        if (fVar != null) {
            return new l(fVar.e(), 256, fVar);
        }
        throw new NullPointerException("factory");
    }

    static ByteBuffer I(CharBuffer charBuffer, Charset charset) {
        CharsetEncoder charsetEncoderB = org.jboss.netty.util.a.b(charset);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) (((double) charBuffer.remaining()) * ((double) charsetEncoderB.maxBytesPerChar())));
        try {
            CoderResult coderResultEncode = charsetEncoderB.encode(charBuffer, byteBufferAllocate, true);
            if (!coderResultEncode.isUnderflow()) {
                coderResultEncode.throwException();
            }
            CoderResult coderResultFlush = charsetEncoderB.flush(byteBufferAllocate);
            if (!coderResultFlush.isUnderflow()) {
                coderResultFlush.throwException();
            }
            byteBufferAllocate.flip();
            return byteBufferAllocate;
        } catch (CharacterCodingException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static boolean J(e eVar, e eVar2) {
        int i10 = eVar.readableBytes();
        if (i10 != eVar2.readableBytes()) {
            return false;
        }
        int i11 = i10 >>> 3;
        int i12 = eVar.readerIndex();
        int i13 = eVar2.readerIndex();
        if (eVar.order() == eVar2.order()) {
            while (i11 > 0) {
                if (eVar.getLong(i12) != eVar2.getLong(i13)) {
                    return false;
                }
                i12 += 8;
                i13 += 8;
                i11--;
            }
        } else {
            while (i11 > 0) {
                if (eVar.getLong(i12) != V(eVar2.getLong(i13))) {
                    return false;
                }
                i12 += 8;
                i13 += 8;
                i11--;
            }
        }
        for (int i14 = i10 & 7; i14 > 0; i14--) {
            if (eVar.getByte(i12) != eVar2.getByte(i13)) {
                return false;
            }
            i12++;
            i13++;
        }
        return true;
    }

    private static int K(e eVar, int i10, int i11, byte b10) {
        int iMax = Math.max(i10, 0);
        if (iMax < i11 && eVar.capacity() != 0) {
            while (iMax < i11) {
                if (eVar.getByte(iMax) == b10) {
                    return iMax;
                }
                iMax++;
            }
        }
        return -1;
    }

    private static int L(e eVar, int i10, int i11, g gVar) {
        int iMax = Math.max(i10, 0);
        if (iMax < i11 && eVar.capacity() != 0) {
            while (iMax < i11) {
                if (gVar.a(eVar, iMax)) {
                    return iMax;
                }
                iMax++;
            }
        }
        return -1;
    }

    public static int M(e eVar) {
        int iU;
        int i10 = eVar.readableBytes();
        int i11 = i10 >>> 2;
        int i12 = i10 & 3;
        int i13 = eVar.readerIndex();
        if (eVar.order() == f95464a) {
            iU = 1;
            while (i11 > 0) {
                iU = (iU * 31) + eVar.getInt(i13);
                i13 += 4;
                i11--;
            }
        } else {
            iU = 1;
            while (i11 > 0) {
                iU = (iU * 31) + U(eVar.getInt(i13));
                i13 += 4;
                i11--;
            }
        }
        while (i12 > 0) {
            iU = (iU * 31) + eVar.getByte(i13);
            i12--;
            i13++;
        }
        if (iU == 0) {
            return 1;
        }
        return iU;
    }

    public static String N(e eVar) {
        return O(eVar, eVar.readerIndex(), eVar.readableBytes());
    }

    public static String O(e eVar, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("length: " + i11);
        }
        if (i11 == 0) {
            return "";
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11 << 1];
        int i13 = 0;
        while (i10 < i12) {
            System.arraycopy(f95467d, eVar.getUnsignedByte(i10) << 1, cArr, i13, 2);
            i10++;
            i13 += 2;
        }
        return new String(cArr);
    }

    public static e P(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return g0(bArr);
    }

    public static int Q(e eVar, int i10, int i11, byte b10) {
        return i10 <= i11 ? K(eVar, i10, i11, b10) : S(eVar, i10, i11, b10);
    }

    public static int R(e eVar, int i10, int i11, g gVar) {
        return i10 <= i11 ? L(eVar, i10, i11, gVar) : T(eVar, i10, i11, gVar);
    }

    private static int S(e eVar, int i10, int i11, byte b10) {
        int iMin = Math.min(i10, eVar.capacity());
        if (iMin >= 0 && eVar.capacity() != 0) {
            for (int i12 = iMin - 1; i12 >= i11; i12--) {
                if (eVar.getByte(i12) == b10) {
                    return i12;
                }
            }
        }
        return -1;
    }

    private static int T(e eVar, int i10, int i11, g gVar) {
        int iMin = Math.min(i10, eVar.capacity());
        if (iMin >= 0 && eVar.capacity() != 0) {
            for (int i12 = iMin - 1; i12 >= i11; i12--) {
                if (gVar.a(eVar, i12)) {
                    return i12;
                }
            }
        }
        return -1;
    }

    public static int U(int i10) {
        return (X((short) (i10 >>> 16)) & UShort.MAX_VALUE) | (X((short) i10) << 16);
    }

    public static long V(long j10) {
        return (((long) U((int) (j10 >>> 32))) & 4294967295L) | (((long) U((int) j10)) << 32);
    }

    public static int W(int i10) {
        return ((i10 >>> 16) & 255) | ((i10 << 16) & 16711680) | (65280 & i10);
    }

    public static short X(short s10) {
        return (short) (((s10 >>> 8) & 255) | (s10 << 8));
    }

    public static e Y(e eVar) {
        if (eVar instanceof p) {
            eVar = ((p) eVar).H0();
        }
        return new p(eVar);
    }

    public static e Z(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.hasArray() ? b0(byteBuffer.order(), byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) : new d(byteBuffer);
        }
        return f95466c;
    }

    public static e a(int i10) {
        return b(f95464a, i10);
    }

    public static e a0(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == f95464a) {
            return bArr.length == 0 ? f95466c : new c(bArr);
        }
        if (byteOrder == f95465b) {
            return bArr.length == 0 ? f95466c : new o(bArr);
        }
        throw new NullPointerException("endianness");
    }

    public static e b(ByteOrder byteOrder, int i10) {
        if (byteOrder == f95464a) {
            return i10 == 0 ? f95466c : new c(i10);
        }
        if (byteOrder == f95465b) {
            return i10 == 0 ? f95466c : new o(i10);
        }
        throw new NullPointerException("endianness");
    }

    public static e b0(ByteOrder byteOrder, byte[] bArr, int i10, int i11) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        }
        if (i10 != 0) {
            return i11 == 0 ? f95466c : new q(a0(byteOrder, bArr), i10, i11);
        }
        if (i11 == bArr.length) {
            return a0(byteOrder, bArr);
        }
        return i11 == 0 ? f95466c : new r(a0(byteOrder, bArr), i11);
    }

    public static int c(e eVar, e eVar2) {
        int i10 = eVar.readableBytes();
        int i11 = eVar2.readableBytes();
        int iMin = Math.min(i10, i11);
        int i12 = iMin >>> 2;
        int i13 = eVar.readerIndex();
        int i14 = eVar2.readerIndex();
        if (eVar.order() == eVar2.order()) {
            while (i12 > 0) {
                long unsignedInt = eVar.getUnsignedInt(i13);
                long unsignedInt2 = eVar2.getUnsignedInt(i14);
                if (unsignedInt > unsignedInt2) {
                    return 1;
                }
                if (unsignedInt < unsignedInt2) {
                    return -1;
                }
                i13 += 4;
                i14 += 4;
                i12--;
            }
        } else {
            while (i12 > 0) {
                long unsignedInt3 = eVar.getUnsignedInt(i13);
                long jU = ((long) U(eVar2.getInt(i14))) & 4294967295L;
                if (unsignedInt3 > jU) {
                    return 1;
                }
                if (unsignedInt3 < jU) {
                    return -1;
                }
                i13 += 4;
                i14 += 4;
                i12--;
            }
        }
        for (int i15 = iMin & 3; i15 > 0; i15--) {
            short unsignedByte = eVar.getUnsignedByte(i13);
            short unsignedByte2 = eVar2.getUnsignedByte(i14);
            if (unsignedByte > unsignedByte2) {
                return 1;
            }
            if (unsignedByte < unsignedByte2) {
                return -1;
            }
            i13++;
            i14++;
        }
        return i10 - i11;
    }

    public static e c0(ByteOrder byteOrder, byte[]... bArr) {
        int length = bArr.length;
        if (length != 0) {
            if (length != 1) {
                ArrayList arrayList = new ArrayList(bArr.length);
                for (byte[] bArr2 : bArr) {
                    if (bArr2 == null) {
                        break;
                    }
                    if (bArr2.length > 0) {
                        arrayList.add(a0(byteOrder, bArr2));
                    }
                }
                return d(byteOrder, arrayList, false);
            }
            byte[] bArr3 = bArr[0];
            if (bArr3.length != 0) {
                return a0(byteOrder, bArr3);
            }
        }
        return f95466c;
    }

    private static e d(ByteOrder byteOrder, List<e> list, boolean z10) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new i(byteOrder, list, z10) : list.get(0);
        }
        return f95466c;
    }

    public static e d0(e eVar) {
        return eVar.z0() ? eVar.y0() : f95466c;
    }

    public static e e(CharSequence charSequence, int i10, int i11, Charset charset) {
        return i(f95464a, charSequence, i10, i11, charset);
    }

    public static e e0(boolean z10, ByteBuffer... byteBufferArr) {
        int length = byteBufferArr.length;
        if (length != 0) {
            if (length != 1) {
                ArrayList arrayList = new ArrayList(byteBufferArr.length);
                ByteOrder byteOrderOrder = null;
                for (ByteBuffer byteBuffer : byteBufferArr) {
                    if (byteBuffer == null) {
                        break;
                    }
                    if (byteBuffer.hasRemaining()) {
                        if (byteOrderOrder == null) {
                            byteOrderOrder = byteBuffer.order();
                        } else if (!byteOrderOrder.equals(byteBuffer.order())) {
                            throw new IllegalArgumentException("inconsistent byte order");
                        }
                        arrayList.add(Z(byteBuffer));
                    }
                }
                return d(byteOrderOrder, arrayList, z10);
            }
            if (byteBufferArr[0].hasRemaining()) {
                return Z(byteBufferArr[0]);
            }
        }
        return f95466c;
    }

    public static e f(CharSequence charSequence, Charset charset) {
        return j(f95464a, charSequence, charset);
    }

    public static e f0(boolean z10, e... eVarArr) {
        int length = eVarArr.length;
        if (length != 0) {
            if (length != 1) {
                ArrayList arrayList = new ArrayList(eVarArr.length);
                ByteOrder byteOrderOrder = null;
                for (e eVar : eVarArr) {
                    if (eVar == null) {
                        break;
                    }
                    if (eVar.z0()) {
                        if (byteOrderOrder == null) {
                            byteOrderOrder = eVar.order();
                        } else if (!byteOrderOrder.equals(eVar.order())) {
                            throw new IllegalArgumentException("inconsistent byte order");
                        }
                        if (eVar instanceof i) {
                            arrayList.addAll(((i) eVar).g(eVar.readerIndex(), eVar.readableBytes()));
                        } else {
                            arrayList.add(eVar.y0());
                        }
                    }
                }
                return d(byteOrderOrder, arrayList, z10);
            }
            if (eVarArr[0].z0()) {
                return d0(eVarArr[0]);
            }
        }
        return f95466c;
    }

    @Deprecated
    public static e g(String str, String str2) {
        return f(str, Charset.forName(str2));
    }

    public static e g0(byte[] bArr) {
        return a0(f95464a, bArr);
    }

    public static e h(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining == 0) {
            return f95466c;
        }
        byte[] bArr = new byte[iRemaining];
        int iPosition = byteBuffer.position();
        try {
            byteBuffer.get(bArr);
            return a0(byteBuffer.order(), bArr);
        } finally {
            byteBuffer.position(iPosition);
        }
    }

    public static e h0(byte[] bArr, int i10, int i11) {
        return b0(f95464a, bArr, i10, i11);
    }

    public static e i(ByteOrder byteOrder, CharSequence charSequence, int i10, int i11, Charset charset) {
        if (charSequence == null) {
            throw new NullPointerException(TypedValues.Custom.S_STRING);
        }
        if (i11 == 0) {
            return f95466c;
        }
        if (!(charSequence instanceof CharBuffer)) {
            return l(byteOrder, CharBuffer.wrap(charSequence, i10, i11 + i10), charset);
        }
        CharBuffer charBuffer = (CharBuffer) charSequence;
        if (charBuffer.hasArray()) {
            return o(byteOrder, charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position() + i10, i11, charset);
        }
        CharBuffer charBufferSlice = charBuffer.slice();
        charBufferSlice.limit(i11);
        charBufferSlice.position(i10);
        return l(byteOrder, charBufferSlice, charset);
    }

    public static e i0(ByteBuffer... byteBufferArr) {
        return e0(false, byteBufferArr);
    }

    public static e j(ByteOrder byteOrder, CharSequence charSequence, Charset charset) {
        if (charSequence != null) {
            return charSequence instanceof CharBuffer ? l(byteOrder, (CharBuffer) charSequence, charset) : l(byteOrder, CharBuffer.wrap(charSequence), charset);
        }
        throw new NullPointerException(TypedValues.Custom.S_STRING);
    }

    public static e j0(e... eVarArr) {
        return f0(false, eVarArr);
    }

    @Deprecated
    public static e k(ByteOrder byteOrder, String str, String str2) {
        return j(byteOrder, str, Charset.forName(str2));
    }

    public static e k0(byte[]... bArr) {
        return c0(f95464a, bArr);
    }

    private static e l(ByteOrder byteOrder, CharBuffer charBuffer, Charset charset) {
        ByteBuffer byteBufferI = I(charBuffer, charset);
        e eVarA0 = a0(byteOrder, byteBufferI.array());
        eVarA0.u0(byteBufferI.remaining());
        return eVarA0;
    }

    public static e m(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == f95464a) {
            return bArr.length == 0 ? f95466c : new c((byte[]) bArr.clone());
        }
        if (byteOrder == f95465b) {
            return bArr.length == 0 ? f95466c : new o((byte[]) bArr.clone());
        }
        throw new NullPointerException("endianness");
    }

    public static e n(ByteOrder byteOrder, byte[] bArr, int i10, int i11) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        }
        if (i11 == 0) {
            return f95466c;
        }
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return a0(byteOrder, bArr2);
    }

    public static e o(ByteOrder byteOrder, char[] cArr, int i10, int i11, Charset charset) {
        if (cArr != null) {
            return i11 == 0 ? f95466c : l(byteOrder, CharBuffer.wrap(cArr, i10, i11), charset);
        }
        throw new NullPointerException("array");
    }

    public static e p(ByteOrder byteOrder, char[] cArr, Charset charset) {
        return o(byteOrder, cArr, 0, cArr.length, charset);
    }

    public static e q(ByteOrder byteOrder, byte[]... bArr) {
        int length = bArr.length;
        if (length == 0) {
            return f95466c;
        }
        if (length == 1) {
            byte[] bArr2 = bArr[0];
            return bArr2.length == 0 ? f95466c : m(byteOrder, bArr2);
        }
        int length2 = 0;
        for (byte[] bArr3 : bArr) {
            if (Integer.MAX_VALUE - length2 < bArr3.length) {
                throw new IllegalArgumentException("The total length of the specified arrays is too big.");
            }
            length2 += bArr3.length;
        }
        if (length2 == 0) {
            return f95466c;
        }
        byte[] bArr4 = new byte[length2];
        int length3 = 0;
        for (byte[] bArr5 : bArr) {
            System.arraycopy(bArr5, 0, bArr4, length3, bArr5.length);
            length3 += bArr5.length;
        }
        return a0(byteOrder, bArr4);
    }

    public static e r(e eVar) {
        return eVar.z0() ? eVar.copy() : f95466c;
    }

    public static e s(byte[] bArr) {
        return m(f95464a, bArr);
    }

    public static e t(byte[] bArr, int i10, int i11) {
        return n(f95464a, bArr, i10, i11);
    }

    public static e u(char[] cArr, int i10, int i11, Charset charset) {
        return o(f95464a, cArr, i10, i11, charset);
    }

    public static e v(char[] cArr, Charset charset) {
        return o(f95464a, cArr, 0, cArr.length, charset);
    }

    public static e w(ByteBuffer... byteBufferArr) {
        int length = byteBufferArr.length;
        if (length == 0) {
            return f95466c;
        }
        if (length == 1) {
            return h(byteBufferArr[0]);
        }
        e[] eVarArr = new e[byteBufferArr.length];
        for (int i10 = 0; i10 < byteBufferArr.length; i10++) {
            eVarArr[i10] = h(byteBufferArr[i10]);
        }
        return f0(false, eVarArr);
    }

    public static e x(e... eVarArr) {
        int length = eVarArr.length;
        if (length == 0) {
            return f95466c;
        }
        if (length == 1) {
            return r(eVarArr[0]);
        }
        e[] eVarArr2 = new e[eVarArr.length];
        for (int i10 = 0; i10 < eVarArr.length; i10++) {
            eVarArr2[i10] = r(eVarArr[i10]);
        }
        return f0(false, eVarArr2);
    }

    public static e y(byte[]... bArr) {
        return q(f95464a, bArr);
    }

    static String z(ByteBuffer byteBuffer, Charset charset) {
        CharsetDecoder charsetDecoderA = org.jboss.netty.util.a.a(charset);
        CharBuffer charBufferAllocate = CharBuffer.allocate((int) (((double) byteBuffer.remaining()) * ((double) charsetDecoderA.maxCharsPerByte())));
        try {
            CoderResult coderResultDecode = charsetDecoderA.decode(byteBuffer, charBufferAllocate, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoderA.flush(charBufferAllocate);
            if (!coderResultFlush.isUnderflow()) {
                coderResultFlush.throwException();
            }
            return charBufferAllocate.flip().toString();
        } catch (CharacterCodingException e10) {
            throw new IllegalStateException(e10);
        }
    }
}
