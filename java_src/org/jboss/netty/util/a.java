package org.jboss.netty.util;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f95697a = Charset.forName("UTF-16");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f95698b = Charset.forName("UTF-16BE");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f95699c = Charset.forName("UTF-16LE");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Charset f95700d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f95701e = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f95702f = Charset.forName(com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ThreadLocal<Map<Charset, CharsetEncoder>> f95703g = new C1230a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ThreadLocal<Map<Charset, CharsetDecoder>> f95704h = new b();

    /* JADX INFO: renamed from: org.jboss.netty.util.a$a, reason: collision with other inner class name */
    static class C1230a extends ThreadLocal<Map<Charset, CharsetEncoder>> {
        C1230a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Charset, CharsetEncoder> initialValue() {
            return new IdentityHashMap();
        }
    }

    static class b extends ThreadLocal<Map<Charset, CharsetDecoder>> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Charset, CharsetDecoder> initialValue() {
            return new IdentityHashMap();
        }
    }

    private a() {
    }

    public static CharsetDecoder a(Charset charset) {
        if (charset == null) {
            throw new NullPointerException("charset");
        }
        Map<Charset, CharsetDecoder> map = f95704h.get();
        CharsetDecoder charsetDecoder = map.get(charset);
        if (charsetDecoder != null) {
            charsetDecoder.reset();
            charsetDecoder.onMalformedInput(CodingErrorAction.REPLACE);
            charsetDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return charsetDecoder;
        }
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        charsetDecoderNewDecoder.onMalformedInput(CodingErrorAction.REPLACE);
        charsetDecoderNewDecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, charsetDecoderNewDecoder);
        return charsetDecoderNewDecoder;
    }

    public static CharsetEncoder b(Charset charset) {
        if (charset == null) {
            throw new NullPointerException("charset");
        }
        Map<Charset, CharsetEncoder> map = f95703g.get();
        CharsetEncoder charsetEncoder = map.get(charset);
        if (charsetEncoder != null) {
            charsetEncoder.reset();
            charsetEncoder.onMalformedInput(CodingErrorAction.REPLACE);
            charsetEncoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return charsetEncoder;
        }
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPLACE);
        charsetEncoderNewEncoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        map.put(charset, charsetEncoderNewEncoder);
        return charsetEncoderNewEncoder;
    }
}
