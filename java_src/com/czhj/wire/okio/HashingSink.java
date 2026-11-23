package com.czhj.wire.okio;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes9.dex */
public final class HashingSink extends ForwardingSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MessageDigest f25949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Mac f25950b;

    private HashingSink(Sink sink, ByteString byteString, String str) {
        super(sink);
        try {
            Mac mac = Mac.getInstance(str);
            this.f25950b = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.f25949a = null;
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static HashingSink hmacSha1(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, c.f7275a);
    }

    public static HashingSink hmacSha256(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA256");
    }

    public static HashingSink hmacSha512(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA512");
    }

    public static HashingSink md5(Sink sink) {
        return new HashingSink(sink, "MD5");
    }

    public static HashingSink sha1(Sink sink) {
        return new HashingSink(sink, "SHA-1");
    }

    public static HashingSink sha256(Sink sink) {
        return new HashingSink(sink, "SHA-256");
    }

    public static HashingSink sha512(Sink sink) {
        return new HashingSink(sink, "SHA-512");
    }

    public final ByteString hash() {
        MessageDigest messageDigest = this.f25949a;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.f25950b.doFinal());
    }

    @Override // com.czhj.wire.okio.ForwardingSink, com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        Util.checkOffsetAndCount(buffer.f25917c, 0L, j10);
        Segment segment = buffer.f25916b;
        long j11 = 0;
        while (j11 < j10) {
            int iMin = (int) Math.min(j10 - j11, segment.f25994e - segment.f25993d);
            MessageDigest messageDigest = this.f25949a;
            if (messageDigest != null) {
                messageDigest.update(segment.f25992c, segment.f25993d, iMin);
            } else {
                this.f25950b.update(segment.f25992c, segment.f25993d, iMin);
            }
            j11 += (long) iMin;
            segment = segment.f25997h;
        }
        super.write(buffer, j10);
    }

    private HashingSink(Sink sink, String str) {
        super(sink);
        try {
            this.f25949a = MessageDigest.getInstance(str);
            this.f25950b = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
