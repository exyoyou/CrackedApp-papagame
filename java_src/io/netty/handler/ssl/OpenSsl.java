package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.UnpooledByteBufAllocator;
import io.netty.internal.tcnative.Buffer;
import io.netty.internal.tcnative.CertificateCallback;
import io.netty.internal.tcnative.Library;
import io.netty.internal.tcnative.SSL;
import io.netty.internal.tcnative.SSLContext;
import io.netty.util.CharsetUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class OpenSsl {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final Set<String> AVAILABLE_CIPHER_SUITES;
    private static final Set<String> AVAILABLE_JAVA_CIPHER_SUITES;
    private static final Set<String> AVAILABLE_OPENSSL_CIPHER_SUITES;
    private static final String CERT = "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----";
    static final List<String> DEFAULT_CIPHERS;
    private static final boolean IS_BORINGSSL;
    private static final String KEY = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----";
    static final Set<String> SUPPORTED_PROTOCOLS_SET;
    private static final boolean SUPPORTS_KEYMANAGER_FACTORY;
    private static final boolean SUPPORTS_OCSP;
    private static final boolean TLSV13_SUPPORTED;
    private static final Throwable UNAVAILABILITY_CAUSE;
    private static final boolean USE_KEYMANAGER_FACTORY;
    private static final InternalLogger logger;

    /* JADX WARN: Code duplicated, block: B:114:0x026a A[Catch: all -> 0x02b8, TryCatch #9 {all -> 0x02b8, blocks: (B:112:0x0263, B:114:0x026a, B:117:0x0271, B:120:0x0278, B:123:0x027f, B:133:0x0298, B:135:0x029f, B:138:0x02a6, B:141:0x02ad, B:144:0x02b4, B:145:0x02b7), top: B:199:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0271 A[Catch: all -> 0x02b8, TryCatch #9 {all -> 0x02b8, blocks: (B:112:0x0263, B:114:0x026a, B:117:0x0271, B:120:0x0278, B:123:0x027f, B:133:0x0298, B:135:0x029f, B:138:0x02a6, B:141:0x02ad, B:144:0x02b4, B:145:0x02b7), top: B:199:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0278 A[Catch: all -> 0x02b8, TryCatch #9 {all -> 0x02b8, blocks: (B:112:0x0263, B:114:0x026a, B:117:0x0271, B:120:0x0278, B:123:0x027f, B:133:0x0298, B:135:0x029f, B:138:0x02a6, B:141:0x02ad, B:144:0x02b4, B:145:0x02b7), top: B:199:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x027f A[Catch: all -> 0x02b8, TRY_LEAVE, TryCatch #9 {all -> 0x02b8, blocks: (B:112:0x0263, B:114:0x026a, B:117:0x0271, B:120:0x0278, B:123:0x027f, B:133:0x0298, B:135:0x029f, B:138:0x02a6, B:141:0x02ad, B:144:0x02b4, B:145:0x02b7), top: B:199:0x0152 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:166:0x0353  */
    /* JADX WARN: Code duplicated, block: B:169:0x0360  */
    /* JADX WARN: Code duplicated, block: B:172:0x036d  */
    /* JADX WARN: Code duplicated, block: B:175:0x037c  */
    /* JADX WARN: Code duplicated, block: B:178:0x038b  */
    /* JADX WARN: Code duplicated, block: B:180:0x0392  */
    /* JADX WARN: Code duplicated, block: B:183:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:186:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:237:0x0308 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    static {
        Throwable th;
        boolean z10;
        boolean z11;
        LinkedHashSet linkedHashSet;
        List<String> listUnmodifiableList;
        LinkedHashSet linkedHashSet2;
        Set<String> setUnmodifiableSet;
        InternalLogger internalLogger;
        long j10;
        long bio;
        long x509Chain;
        long privateKey;
        long j11;
        long bio2;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        String str = "io.netty.handler.ssl.openssl.useKeyManagerFactory";
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) OpenSsl.class);
        logger = internalLoggerFactory;
        boolean z18 = false;
        if (SystemPropertyUtil.getBoolean("io.netty.handler.ssl.noOpenSsl", false)) {
            e = new UnsupportedOperationException("OpenSSL was explicit disabled with -Dio.netty.handler.ssl.noOpenSsl=true");
            internalLoggerFactory.debug("netty-tcnative explicit disabled; " + OpenSslEngine.class.getSimpleName() + " will be unavailable.", e);
        } else {
            try {
                Class.forName("io.netty.internal.tcnative.SSL", false, OpenSsl.class.getClassLoader());
                e = null;
            } catch (ClassNotFoundException e10) {
                e = e10;
                logger.debug("netty-tcnative not in the classpath; " + OpenSslEngine.class.getSimpleName() + " will be unavailable.");
            }
            if (e == null) {
                try {
                    loadTcNative();
                    th = e;
                } catch (Throwable th2) {
                    th = th2;
                    logger.debug("Failed to load netty-tcnative; " + OpenSslEngine.class.getSimpleName() + " will be unavailable, unless the application has already loaded the symbols by some other means. See https://netty.io/wiki/forked-tomcat-native.html for more information.", th);
                }
                try {
                    String str2 = SystemPropertyUtil.get("io.netty.handler.ssl.openssl.engine", null);
                    if (str2 == null) {
                        logger.debug("Initialize netty-tcnative using engine: 'default'");
                    } else {
                        logger.debug("Initialize netty-tcnative using engine: '{}'", str2);
                    }
                    initializeTcNative(str2);
                    e = null;
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    }
                    logger.debug("Failed to initialize netty-tcnative; " + OpenSslEngine.class.getSimpleName() + " will be unavailable. See https://netty.io/wiki/forked-tomcat-native.html for more information.", th3);
                    e = th;
                }
            }
        }
        UNAVAILABILITY_CAUSE = e;
        if (e != null) {
            DEFAULT_CIPHERS = Collections.emptyList();
            AVAILABLE_OPENSSL_CIPHER_SUITES = Collections.emptySet();
            AVAILABLE_JAVA_CIPHER_SUITES = Collections.emptySet();
            AVAILABLE_CIPHER_SUITES = Collections.emptySet();
            SUPPORTS_KEYMANAGER_FACTORY = false;
            USE_KEYMANAGER_FACTORY = false;
            SUPPORTED_PROTOCOLS_SET = Collections.emptySet();
            SUPPORTS_OCSP = false;
            TLSV13_SUPPORTED = false;
            IS_BORINGSSL = false;
            return;
        }
        logger.debug("netty-tcnative using native library: {}", SSL.versionString());
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(128);
        IS_BORINGSSL = "BoringSSL".equals(versionString());
        try {
            try {
                long jMake = SSLContext.make(63, 1);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    Iterator<String> it2 = SslUtils.TLSV13_CIPHERS.iterator();
                    while (it2.hasNext()) {
                        String openSsl = CipherSuiteConverter.toOpenSsl(it2.next(), IS_BORINGSSL);
                        if (openSsl != null) {
                            sb2.append(openSsl);
                            sb2.append(':');
                        }
                    }
                    if (sb2.length() == 0) {
                        z17 = false;
                    } else {
                        sb2.setLength(sb2.length() - 1);
                        SSLContext.setCipherSuite(jMake, sb2.toString(), true);
                        z17 = true;
                    }
                    z10 = z17;
                } catch (Exception unused) {
                    z10 = false;
                } catch (Throwable th4) {
                    th = th4;
                    SSLContext.free(jMake);
                    throw th;
                }
                try {
                    SSLContext.setCipherSuite(jMake, "ALL", false);
                    long jNewSSL = SSL.newSSL(jMake, true);
                    try {
                        try {
                            String[] ciphers = SSL.getCiphers(jNewSSL);
                            int length = ciphers.length;
                            for (String str3 : ciphers) {
                                if (str3 != null && !str3.isEmpty() && !linkedHashSet3.contains(str3) && (z10 || !SslUtils.isTLSv13Cipher(str3))) {
                                    linkedHashSet3.add(str3);
                                }
                            }
                            boolean z19 = IS_BORINGSSL;
                            j10 = length;
                            if (z19) {
                                String[] strArr = {"TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "AEAD-AES128-GCM-SHA256", "AEAD-AES256-GCM-SHA384", "AEAD-CHACHA20-POLY1305-SHA256"};
                                Collections.addAll(linkedHashSet3, strArr);
                                j10 = strArr;
                            }
                            try {
                                PemPrivateKey pemPrivateKeyValueOf = PemPrivateKey.valueOf(KEY.getBytes(CharsetUtil.US_ASCII));
                                try {
                                    SSLContext.setCertificateCallback(jMake, (CertificateCallback) null);
                                    bio = ReferenceCountedOpenSslContext.toBIO(ByteBufAllocator.DEFAULT, selfSignedCertificate());
                                    try {
                                        x509Chain = SSL.parseX509Chain(bio);
                                        try {
                                            bio2 = ReferenceCountedOpenSslContext.toBIO(UnpooledByteBufAllocator.DEFAULT, pemPrivateKeyValueOf.retain());
                                            try {
                                                privateKey = SSL.parsePrivateKey(bio2, (String) null);
                                                try {
                                                    SSL.setKeyMaterial(jNewSSL, x509Chain, privateKey);
                                                    try {
                                                        boolean zContains = SystemPropertyUtil.contains("io.netty.handler.ssl.openssl.useKeyManagerFactory");
                                                        if (z19) {
                                                            if (zContains) {
                                                                try {
                                                                    logger.info("System property 'io.netty.handler.ssl.openssl.useKeyManagerFactory' is deprecated and will be ignored when using BoringSSL");
                                                                } catch (Throwable unused2) {
                                                                    z14 = true;
                                                                    logger.debug("Failed to get useKeyManagerFactory system property.");
                                                                    z15 = z14;
                                                                }
                                                            }
                                                            z16 = true;
                                                            z15 = z16;
                                                            pemPrivateKeyValueOf.release();
                                                            bio2 = bio2;
                                                            z18 = true;
                                                            z13 = z15;
                                                            SSL.freeSSL(jNewSSL);
                                                            if (bio != 0) {
                                                                SSL.freeBIO(bio);
                                                            }
                                                            if (bio2 != 0) {
                                                                SSL.freeBIO(bio2);
                                                            }
                                                            if (x509Chain != 0) {
                                                                SSL.freeX509Chain(x509Chain);
                                                            }
                                                            if (privateKey != 0) {
                                                                SSL.freePrivateKey(privateKey);
                                                            }
                                                            SSLContext.free(jMake);
                                                            z11 = z13;
                                                        } else {
                                                            z16 = SystemPropertyUtil.getBoolean("io.netty.handler.ssl.openssl.useKeyManagerFactory", true);
                                                            if (zContains) {
                                                                try {
                                                                    logger.info("System property 'io.netty.handler.ssl.openssl.useKeyManagerFactory' is deprecated and so will be ignored in the future");
                                                                } catch (Throwable unused3) {
                                                                    z14 = z16;
                                                                    try {
                                                                        logger.debug("Failed to get useKeyManagerFactory system property.");
                                                                        z15 = z14;
                                                                    } catch (Error unused4) {
                                                                        bio2 = bio2;
                                                                        z18 = true;
                                                                        z12 = z14;
                                                                        try {
                                                                            logger.debug("KeyManagerFactory not supported.");
                                                                            pemPrivateKeyValueOf.release();
                                                                            z13 = z12;
                                                                        } catch (Throwable th5) {
                                                                            th = th5;
                                                                            pemPrivateKeyValueOf.release();
                                                                            throw th;
                                                                        }
                                                                    } catch (Throwable th6) {
                                                                        th = th6;
                                                                        pemPrivateKeyValueOf.release();
                                                                        throw th;
                                                                    }
                                                                }
                                                            }
                                                            z15 = z16;
                                                            try {
                                                                pemPrivateKeyValueOf.release();
                                                                bio2 = bio2;
                                                                z18 = true;
                                                                z13 = z15;
                                                                SSL.freeSSL(jNewSSL);
                                                                if (bio != 0) {
                                                                    SSL.freeBIO(bio);
                                                                }
                                                                if (bio2 != 0) {
                                                                    SSL.freeBIO(bio2);
                                                                }
                                                                if (x509Chain != 0) {
                                                                    SSL.freeX509Chain(x509Chain);
                                                                }
                                                                if (privateKey != 0) {
                                                                    SSL.freePrivateKey(privateKey);
                                                                }
                                                                SSLContext.free(jMake);
                                                                z11 = z13;
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                                j10 = bio2;
                                                                SSL.freeSSL(jNewSSL);
                                                                if (bio != 0) {
                                                                    SSL.freeBIO(bio);
                                                                }
                                                                if (j10 != 0) {
                                                                    SSL.freeBIO(j10);
                                                                }
                                                                if (x509Chain != 0) {
                                                                    SSL.freeX509Chain(x509Chain);
                                                                }
                                                                if (privateKey != 0) {
                                                                    SSL.freePrivateKey(privateKey);
                                                                }
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable unused5) {
                                                        z14 = false;
                                                    }
                                                } catch (Error unused6) {
                                                    bio2 = bio2;
                                                    z12 = false;
                                                    z18 = false;
                                                    logger.debug("KeyManagerFactory not supported.");
                                                    pemPrivateKeyValueOf.release();
                                                    z13 = z12;
                                                    SSL.freeSSL(jNewSSL);
                                                    if (bio != 0) {
                                                        SSL.freeBIO(bio);
                                                    }
                                                    if (bio2 != 0) {
                                                        SSL.freeBIO(bio2);
                                                    }
                                                    if (x509Chain != 0) {
                                                        SSL.freeX509Chain(x509Chain);
                                                    }
                                                    if (privateKey != 0) {
                                                        SSL.freePrivateKey(privateKey);
                                                    }
                                                    SSLContext.free(jMake);
                                                    z11 = z13;
                                                    Set<String> setUnmodifiableSet2 = Collections.unmodifiableSet(linkedHashSet3);
                                                    AVAILABLE_OPENSSL_CIPHER_SUITES = setUnmodifiableSet2;
                                                    linkedHashSet = new LinkedHashSet(setUnmodifiableSet2.size() * 2);
                                                    for (String str4 : setUnmodifiableSet2) {
                                                        if (SslUtils.isTLSv13Cipher(str4)) {
                                                            linkedHashSet.add(str4);
                                                        } else {
                                                            linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.TLS));
                                                            linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.SSL));
                                                        }
                                                    }
                                                    SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.DEFAULT_CIPHER_SUITES);
                                                    SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.TLSV13_CIPHER_SUITES);
                                                    SslUtils.useFallbackCiphersIfDefaultIsEmpty(arrayList, linkedHashSet);
                                                    listUnmodifiableList = Collections.unmodifiableList(arrayList);
                                                    DEFAULT_CIPHERS = listUnmodifiableList;
                                                    Set<String> setUnmodifiableSet3 = Collections.unmodifiableSet(linkedHashSet);
                                                    AVAILABLE_JAVA_CIPHER_SUITES = setUnmodifiableSet3;
                                                    Set<String> set = AVAILABLE_OPENSSL_CIPHER_SUITES;
                                                    LinkedHashSet linkedHashSet4 = new LinkedHashSet(set.size() + setUnmodifiableSet3.size());
                                                    linkedHashSet4.addAll(set);
                                                    linkedHashSet4.addAll(setUnmodifiableSet3);
                                                    AVAILABLE_CIPHER_SUITES = linkedHashSet4;
                                                    SUPPORTS_KEYMANAGER_FACTORY = z18;
                                                    USE_KEYMANAGER_FACTORY = z11;
                                                    linkedHashSet2 = new LinkedHashSet(6);
                                                    linkedHashSet2.add("SSLv2Hello");
                                                    if (doesSupportProtocol(1, SSL.SSL_OP_NO_SSLv2)) {
                                                        linkedHashSet2.add(SSLConnectionSocketFactory.SSLV2);
                                                    }
                                                    if (doesSupportProtocol(2, SSL.SSL_OP_NO_SSLv3)) {
                                                        linkedHashSet2.add("SSLv3");
                                                    }
                                                    if (doesSupportProtocol(4, SSL.SSL_OP_NO_TLSv1)) {
                                                        linkedHashSet2.add("TLSv1");
                                                    }
                                                    if (doesSupportProtocol(8, SSL.SSL_OP_NO_TLSv1_1)) {
                                                        linkedHashSet2.add("TLSv1.1");
                                                    }
                                                    if (doesSupportProtocol(16, SSL.SSL_OP_NO_TLSv1_2)) {
                                                        linkedHashSet2.add("TLSv1.2");
                                                    }
                                                    if (z10) {
                                                        TLSV13_SUPPORTED = false;
                                                    } else {
                                                        TLSV13_SUPPORTED = false;
                                                    }
                                                    setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet2);
                                                    SUPPORTED_PROTOCOLS_SET = setUnmodifiableSet;
                                                    SUPPORTS_OCSP = doesSupportOcsp();
                                                    internalLogger = logger;
                                                    if (internalLogger.isDebugEnabled()) {
                                                        internalLogger.debug("Supported protocols (OpenSSL): {} ", setUnmodifiableSet);
                                                        internalLogger.debug("Default cipher suites (OpenSSL): {}", listUnmodifiableList);
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    pemPrivateKeyValueOf.release();
                                                    throw th;
                                                }
                                            } catch (Error unused7) {
                                                privateKey = 0;
                                            } catch (Throwable th9) {
                                                th = th9;
                                            }
                                        } catch (Error unused8) {
                                            bio2 = 0;
                                            privateKey = 0;
                                        } catch (Throwable th10) {
                                            th = th10;
                                        }
                                    } catch (Error unused9) {
                                        bio2 = 0;
                                        x509Chain = 0;
                                        privateKey = x509Chain;
                                        z12 = false;
                                        z18 = false;
                                        logger.debug("KeyManagerFactory not supported.");
                                        pemPrivateKeyValueOf.release();
                                        z13 = z12;
                                        SSL.freeSSL(jNewSSL);
                                        if (bio != 0) {
                                            SSL.freeBIO(bio);
                                        }
                                        if (bio2 != 0) {
                                            SSL.freeBIO(bio2);
                                        }
                                        if (x509Chain != 0) {
                                            SSL.freeX509Chain(x509Chain);
                                        }
                                        if (privateKey != 0) {
                                            SSL.freePrivateKey(privateKey);
                                        }
                                        SSLContext.free(jMake);
                                        z11 = z13;
                                        Set<String> setUnmodifiableSet4 = Collections.unmodifiableSet(linkedHashSet3);
                                        AVAILABLE_OPENSSL_CIPHER_SUITES = setUnmodifiableSet4;
                                        linkedHashSet = new LinkedHashSet(setUnmodifiableSet4.size() * 2);
                                        while (r0.hasNext()) {
                                            if (SslUtils.isTLSv13Cipher(str4)) {
                                                linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.TLS));
                                                linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.SSL));
                                            } else {
                                                linkedHashSet.add(str4);
                                            }
                                        }
                                        SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.DEFAULT_CIPHER_SUITES);
                                        SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.TLSV13_CIPHER_SUITES);
                                        SslUtils.useFallbackCiphersIfDefaultIsEmpty(arrayList, linkedHashSet);
                                        listUnmodifiableList = Collections.unmodifiableList(arrayList);
                                        DEFAULT_CIPHERS = listUnmodifiableList;
                                        Set<String> setUnmodifiableSet5 = Collections.unmodifiableSet(linkedHashSet);
                                        AVAILABLE_JAVA_CIPHER_SUITES = setUnmodifiableSet5;
                                        Set<String> set2 = AVAILABLE_OPENSSL_CIPHER_SUITES;
                                        LinkedHashSet linkedHashSet5 = new LinkedHashSet(set2.size() + setUnmodifiableSet5.size());
                                        linkedHashSet5.addAll(set2);
                                        linkedHashSet5.addAll(setUnmodifiableSet5);
                                        AVAILABLE_CIPHER_SUITES = linkedHashSet5;
                                        SUPPORTS_KEYMANAGER_FACTORY = z18;
                                        USE_KEYMANAGER_FACTORY = z11;
                                        linkedHashSet2 = new LinkedHashSet(6);
                                        linkedHashSet2.add("SSLv2Hello");
                                        if (doesSupportProtocol(1, SSL.SSL_OP_NO_SSLv2)) {
                                            linkedHashSet2.add(SSLConnectionSocketFactory.SSLV2);
                                        }
                                        if (doesSupportProtocol(2, SSL.SSL_OP_NO_SSLv3)) {
                                            linkedHashSet2.add("SSLv3");
                                        }
                                        if (doesSupportProtocol(4, SSL.SSL_OP_NO_TLSv1)) {
                                            linkedHashSet2.add("TLSv1");
                                        }
                                        if (doesSupportProtocol(8, SSL.SSL_OP_NO_TLSv1_1)) {
                                            linkedHashSet2.add("TLSv1.1");
                                        }
                                        if (doesSupportProtocol(16, SSL.SSL_OP_NO_TLSv1_2)) {
                                            linkedHashSet2.add("TLSv1.2");
                                        }
                                        if (z10) {
                                            TLSV13_SUPPORTED = false;
                                        } else {
                                            TLSV13_SUPPORTED = false;
                                        }
                                        setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet2);
                                        SUPPORTED_PROTOCOLS_SET = setUnmodifiableSet;
                                        SUPPORTS_OCSP = doesSupportOcsp();
                                        internalLogger = logger;
                                        if (internalLogger.isDebugEnabled()) {
                                            internalLogger.debug("Supported protocols (OpenSSL): {} ", setUnmodifiableSet);
                                            internalLogger.debug("Default cipher suites (OpenSSL): {}", listUnmodifiableList);
                                        }
                                    } catch (Throwable th11) {
                                        th = th11;
                                        j11 = 0;
                                        pemPrivateKeyValueOf.release();
                                        throw th;
                                    }
                                } catch (Error unused10) {
                                    bio2 = 0;
                                    bio = 0;
                                    x509Chain = 0;
                                } catch (Throwable th12) {
                                    th = th12;
                                    j11 = 0;
                                }
                            } catch (Throwable th13) {
                                th = th13;
                            }
                        } catch (Throwable th14) {
                            th = th14;
                            SSLContext.free(jMake);
                            throw th;
                        }
                    } catch (Throwable th15) {
                        th = th15;
                        j10 = 0;
                        bio = 0;
                        x509Chain = 0;
                        privateKey = 0;
                    }
                } catch (Throwable th16) {
                    th = th16;
                }
            } catch (Exception e11) {
                e = e11;
                str = null;
                z18 = false;
                z10 = false;
                logger.warn("Failed to get the list of available OpenSSL cipher suites.", (Throwable) e);
                z11 = str;
            }
        } catch (Exception e12) {
            e = e12;
            logger.warn("Failed to get the list of available OpenSSL cipher suites.", (Throwable) e);
            z11 = str;
        }
        Set<String> setUnmodifiableSet6 = Collections.unmodifiableSet(linkedHashSet3);
        AVAILABLE_OPENSSL_CIPHER_SUITES = setUnmodifiableSet6;
        linkedHashSet = new LinkedHashSet(setUnmodifiableSet6.size() * 2);
        while (r0.hasNext()) {
            if (SslUtils.isTLSv13Cipher(str4)) {
                linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.TLS));
                linkedHashSet.add(CipherSuiteConverter.toJava(str4, SSLConnectionSocketFactory.SSL));
            } else {
                linkedHashSet.add(str4);
            }
        }
        SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.DEFAULT_CIPHER_SUITES);
        SslUtils.addIfSupported(linkedHashSet, arrayList, SslUtils.TLSV13_CIPHER_SUITES);
        SslUtils.useFallbackCiphersIfDefaultIsEmpty(arrayList, linkedHashSet);
        listUnmodifiableList = Collections.unmodifiableList(arrayList);
        DEFAULT_CIPHERS = listUnmodifiableList;
        Set<String> setUnmodifiableSet7 = Collections.unmodifiableSet(linkedHashSet);
        AVAILABLE_JAVA_CIPHER_SUITES = setUnmodifiableSet7;
        Set<String> set3 = AVAILABLE_OPENSSL_CIPHER_SUITES;
        LinkedHashSet linkedHashSet6 = new LinkedHashSet(set3.size() + setUnmodifiableSet7.size());
        linkedHashSet6.addAll(set3);
        linkedHashSet6.addAll(setUnmodifiableSet7);
        AVAILABLE_CIPHER_SUITES = linkedHashSet6;
        SUPPORTS_KEYMANAGER_FACTORY = z18;
        USE_KEYMANAGER_FACTORY = z11;
        linkedHashSet2 = new LinkedHashSet(6);
        linkedHashSet2.add("SSLv2Hello");
        if (doesSupportProtocol(1, SSL.SSL_OP_NO_SSLv2)) {
            linkedHashSet2.add(SSLConnectionSocketFactory.SSLV2);
        }
        if (doesSupportProtocol(2, SSL.SSL_OP_NO_SSLv3)) {
            linkedHashSet2.add("SSLv3");
        }
        if (doesSupportProtocol(4, SSL.SSL_OP_NO_TLSv1)) {
            linkedHashSet2.add("TLSv1");
        }
        if (doesSupportProtocol(8, SSL.SSL_OP_NO_TLSv1_1)) {
            linkedHashSet2.add("TLSv1.1");
        }
        if (doesSupportProtocol(16, SSL.SSL_OP_NO_TLSv1_2)) {
            linkedHashSet2.add("TLSv1.2");
        }
        if (z10 || !doesSupportProtocol(32, SSL.SSL_OP_NO_TLSv1_3)) {
            TLSV13_SUPPORTED = false;
        } else {
            linkedHashSet2.add("TLSv1.3");
            TLSV13_SUPPORTED = true;
        }
        setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet2);
        SUPPORTED_PROTOCOLS_SET = setUnmodifiableSet;
        SUPPORTS_OCSP = doesSupportOcsp();
        internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("Supported protocols (OpenSSL): {} ", setUnmodifiableSet);
            internalLogger.debug("Default cipher suites (OpenSSL): {}", listUnmodifiableList);
        }
    }

    private OpenSsl() {
    }

    @Deprecated
    public static Set<String> availableCipherSuites() {
        return availableOpenSslCipherSuites();
    }

    public static Set<String> availableJavaCipherSuites() {
        return AVAILABLE_JAVA_CIPHER_SUITES;
    }

    public static Set<String> availableOpenSslCipherSuites() {
        return AVAILABLE_OPENSSL_CIPHER_SUITES;
    }

    private static boolean doesSupportOcsp() throws Throwable {
        long jMake;
        if (version() < 268443648) {
            return false;
        }
        try {
            jMake = SSLContext.make(16, 1);
            try {
                SSLContext.enableOcsp(jMake, false);
                if (jMake != -1) {
                    SSLContext.free(jMake);
                }
                return true;
            } catch (Exception unused) {
                if (jMake == -1) {
                    return false;
                }
                SSLContext.free(jMake);
                return false;
            } catch (Throwable th) {
                th = th;
                if (jMake != -1) {
                    SSLContext.free(jMake);
                }
                throw th;
            }
        } catch (Exception unused2) {
            jMake = -1;
        } catch (Throwable th2) {
            th = th2;
            jMake = -1;
        }
    }

    private static boolean doesSupportProtocol(int i10, int i11) {
        if (i11 == 0) {
            return false;
        }
        try {
            long jMake = SSLContext.make(i10, 2);
            if (jMake == -1) {
                return true;
            }
            SSLContext.free(jMake);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void ensureAvailability() {
        Throwable th = UNAVAILABILITY_CAUSE;
        if (th != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th));
        }
    }

    private static boolean initializeTcNative(String str) throws Exception {
        return Library.initialize("provided", str);
    }

    @Deprecated
    public static boolean isAlpnSupported() {
        return ((long) version()) >= 268443648;
    }

    public static boolean isAvailable() {
        return UNAVAILABILITY_CAUSE == null;
    }

    static boolean isBoringSSL() {
        return IS_BORINGSSL;
    }

    public static boolean isCipherSuiteAvailable(String str) {
        String openSsl = CipherSuiteConverter.toOpenSsl(str, IS_BORINGSSL);
        if (openSsl != null) {
            str = openSsl;
        }
        return AVAILABLE_OPENSSL_CIPHER_SUITES.contains(str);
    }

    public static boolean isOcspSupported() {
        return SUPPORTS_OCSP;
    }

    static boolean isTlsv13Supported() {
        return TLSV13_SUPPORTED;
    }

    private static void loadTcNative() throws Exception {
        String strNormalizedOs = PlatformDependent.normalizedOs();
        String strNormalizedArch = PlatformDependent.normalizedArch();
        LinkedHashSet linkedHashSet = new LinkedHashSet(5);
        if ("linux".equalsIgnoreCase(strNormalizedOs)) {
            Iterator<String> it2 = PlatformDependent.normalizedLinuxClassifiers().iterator();
            while (it2.hasNext()) {
                linkedHashSet.add("netty_tcnative_" + strNormalizedOs + '_' + strNormalizedArch + "_" + it2.next());
            }
            linkedHashSet.add("netty_tcnative_" + strNormalizedOs + '_' + strNormalizedArch);
            linkedHashSet.add("netty_tcnative_" + strNormalizedOs + '_' + strNormalizedArch + "_fedora");
        } else {
            linkedHashSet.add("netty_tcnative_" + strNormalizedOs + '_' + strNormalizedArch);
        }
        linkedHashSet.add("netty_tcnative_" + strNormalizedArch);
        linkedHashSet.add("netty_tcnative");
        NativeLibraryLoader.loadFirstAvailable(SSL.class.getClassLoader(), (String[]) linkedHashSet.toArray(new String[0]));
    }

    static long memoryAddress(ByteBuf byteBuf) {
        return byteBuf.hasMemoryAddress() ? byteBuf.memoryAddress() : Buffer.address(byteBuf.nioBuffer());
    }

    static void releaseIfNeeded(ReferenceCounted referenceCounted) {
        if (referenceCounted.refCnt() > 0) {
            ReferenceCountUtil.safeRelease(referenceCounted);
        }
    }

    static X509Certificate selfSignedCertificate() throws CertificateException {
        return (X509Certificate) SslContext.X509_CERT_FACTORY.generateCertificate(new ByteArrayInputStream(CERT.getBytes(CharsetUtil.US_ASCII)));
    }

    @Deprecated
    public static boolean supportsHostnameValidation() {
        return isAvailable();
    }

    public static boolean supportsKeyManagerFactory() {
        return SUPPORTS_KEYMANAGER_FACTORY;
    }

    public static Throwable unavailabilityCause() {
        return UNAVAILABILITY_CAUSE;
    }

    static boolean useKeyManagerFactory() {
        return USE_KEYMANAGER_FACTORY;
    }

    public static int version() {
        if (isAvailable()) {
            return SSL.version();
        }
        return -1;
    }

    public static String versionString() {
        if (isAvailable()) {
            return SSL.versionString();
        }
        return null;
    }
}
