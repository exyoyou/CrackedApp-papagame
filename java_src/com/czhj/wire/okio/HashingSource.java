package com.czhj.wire.okio;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes9.dex */
public final class HashingSource extends ForwardingSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MessageDigest f25951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Mac f25952b;

    private HashingSource(Source source, ByteString byteString, String str) {
        super(source);
        try {
            Mac mac = Mac.getInstance(str);
            this.f25952b = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.f25951a = null;
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static HashingSource hmacSha1(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, c.f7275a);
    }

    public static HashingSource hmacSha256(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, "HmacSHA256");
    }

    public static HashingSource md5(Source source) {
        return new HashingSource(source, "MD5");
    }

    public static HashingSource sha1(Source source) {
        return new HashingSource(source, "SHA-1");
    }

    public static HashingSource sha256(Source source) {
        return new HashingSource(source, "SHA-256");
    }

    public final ByteString hash() {
        MessageDigest messageDigest = this.f25951a;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.f25952b.doFinal());
    }

    @Override // com.czhj.wire.okio.ForwardingSource, com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        long j11 = super.read(buffer, j10);
        if (j11 != -1) {
            long j12 = buffer.f25917c;
            long j13 = j12 - j11;
            Segment segment = buffer.f25916b;
            while (j12 > j13) {
                segment = segment.f25998i;
                j12 -= (long) (segment.f25994e - segment.f25993d);
            }
            while (j12 < buffer.f25917c) {
                int i10 = (int) ((((long) segment.f25993d) + j13) - j12);
                MessageDigest messageDigest = this.f25951a;
                if (messageDigest != null) {
                    messageDigest.update(segment.f25992c, i10, segment.f25994e - i10);
                } else {
                    this.f25952b.update(segment.f25992c, i10, segment.f25994e - i10);
                }
                j13 = ((long) (segment.f25994e - segment.f25993d)) + j12;
                segment = segment.f25997h;
                j12 = j13;
            }
        }
        return j11;
    }

    private HashingSource(Source source, String str) {
        super(source);
        try {
            this.f25951a = MessageDigest.getInstance(str);
            this.f25952b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
