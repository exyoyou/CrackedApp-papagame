package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: loaded from: classes7.dex */
public class s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharsetEncoder f6742a;

    public s1(Charset charset) {
        this(charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE));
    }

    private static int d(int i10, float f10) {
        return (int) (((double) i10) * ((double) f10));
    }

    public byte[] a(char[] cArr, int i10, int i11) {
        if (i11 == 0) {
            return new byte[0];
        }
        this.f6742a.reset();
        return b(cArr, i10, i11, com.alibaba.fastjson.util.j.f(d(i11, this.f6742a.maxBytesPerChar())));
    }

    public byte[] b(char[] cArr, int i10, int i11, byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        try {
            CoderResult coderResultEncode = this.f6742a.encode(CharBuffer.wrap(cArr, i10, i11), byteBufferWrap, true);
            if (!coderResultEncode.isUnderflow()) {
                coderResultEncode.throwException();
            }
            CoderResult coderResultFlush = this.f6742a.flush(byteBufferWrap);
            if (!coderResultFlush.isUnderflow()) {
                coderResultFlush.throwException();
            }
            int iPosition = byteBufferWrap.position();
            byte[] bArr2 = new byte[iPosition];
            System.arraycopy(bArr, 0, bArr2, 0, iPosition);
            return bArr2;
        } catch (CharacterCodingException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public CharsetEncoder c() {
        return this.f6742a;
    }

    public s1(CharsetEncoder charsetEncoder) {
        this.f6742a = charsetEncoder;
    }
}
