package com.sigmob.sdk.archives;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78708a = "ar";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f78709b = "cpio";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f78710c = "dump";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f78711d = "jar";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f78712e = "zip";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f78713f = "tar";

    public c a(final InputStream in2) throws b {
        if (in2 == null) {
            throw new IllegalArgumentException("Stream must not be null.");
        }
        if (!in2.markSupported()) {
            throw new IllegalArgumentException("Mark is not supported.");
        }
        byte[] bArr = new byte[12];
        in2.mark(12);
        try {
            in2.read(bArr);
            in2.reset();
            in2.mark(32);
            in2.read(new byte[32]);
            in2.reset();
            byte[] bArr2 = new byte[512];
            in2.mark(512);
            int i10 = in2.read(bArr2);
            in2.reset();
            if (com.sigmob.sdk.archives.tar.b.a(bArr2, i10)) {
                return new com.sigmob.sdk.archives.tar.b(in2);
            }
            try {
                new com.sigmob.sdk.archives.tar.b(new ByteArrayInputStream(bArr2)).a();
                return new com.sigmob.sdk.archives.tar.b(in2);
            } catch (Throwable unused) {
                throw new b("No Archiver found for the stream signature");
            }
        } catch (IOException e10) {
            throw new b("Could not use reset and mark operations.", e10);
        }
    }

    public c a(final String archiverName, final InputStream in2) throws b {
        if (archiverName == null) {
            throw new IllegalArgumentException("Archivername must not be null.");
        }
        if (in2 == null) {
            throw new IllegalArgumentException("InputStream must not be null.");
        }
        if (f78713f.equalsIgnoreCase(archiverName)) {
            return new com.sigmob.sdk.archives.tar.b(in2);
        }
        throw new b("Archiver: " + archiverName + " not found.");
    }
}
