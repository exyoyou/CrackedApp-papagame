package com.facebook.imageformat;

import com.facebook.common.internal.i;
import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static d f27548d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private List<c.a> f27550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f27551c = new a();

    private d() {
        i();
    }

    public static c b(final InputStream is) throws IOException {
        return e().a(is);
    }

    public static c c(String filename) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(filename);
                try {
                    c cVarB = b(fileInputStream2);
                    com.facebook.common.internal.c.b(fileInputStream2);
                    return cVarB;
                } catch (IOException unused) {
                    fileInputStream = fileInputStream2;
                    c cVar = c.f27545c;
                    com.facebook.common.internal.c.b(fileInputStream);
                    return cVar;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    com.facebook.common.internal.c.b(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
    }

    public static c d(final InputStream is) {
        try {
            return b(is);
        } catch (IOException e10) {
            throw n.d(e10);
        }
    }

    public static synchronized d e() {
        if (f27548d == null) {
            f27548d = new d();
        }
        return f27548d;
    }

    private static int f(int maxHeaderLength, final InputStream is, final byte[] imageHeaderBytes) throws IOException {
        i.i(is);
        i.i(imageHeaderBytes);
        i.d(Boolean.valueOf(imageHeaderBytes.length >= maxHeaderLength));
        if (!is.markSupported()) {
            return com.facebook.common.internal.b.b(is, imageHeaderBytes, 0, maxHeaderLength);
        }
        try {
            is.mark(maxHeaderLength);
            return com.facebook.common.internal.b.b(is, imageHeaderBytes, 0, maxHeaderLength);
        } finally {
            is.reset();
        }
    }

    private void i() {
        this.f27549a = this.f27551c.b();
        List<c.a> list = this.f27550b;
        if (list != null) {
            Iterator<c.a> it2 = list.iterator();
            while (it2.hasNext()) {
                this.f27549a = Math.max(this.f27549a, it2.next().b());
            }
        }
    }

    public c a(final InputStream is) throws IOException {
        i.i(is);
        int i10 = this.f27549a;
        byte[] bArr = new byte[i10];
        int iF = f(i10, is, bArr);
        c cVarA = this.f27551c.a(bArr, iF);
        if (cVarA != null && cVarA != c.f27545c) {
            return cVarA;
        }
        List<c.a> list = this.f27550b;
        if (list != null) {
            Iterator<c.a> it2 = list.iterator();
            while (it2.hasNext()) {
                c cVarA2 = it2.next().a(bArr, iF);
                if (cVarA2 != null && cVarA2 != c.f27545c) {
                    return cVarA2;
                }
            }
        }
        return c.f27545c;
    }

    public void g(@Nullable List<c.a> customImageFormatCheckers) {
        this.f27550b = customImageFormatCheckers;
        i();
    }

    public void h(boolean useNewOrder) {
        this.f27551c.k(useNewOrder);
    }
}
