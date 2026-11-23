package com.umeng.analytics.pro;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes9.dex */
public class ce {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f84517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final dg f84518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private cu f84519c;

    public ce() {
        this(new co.a());
    }

    public byte[] a(bv bvVar) throws cb {
        this.f84517a.reset();
        bvVar.write(this.f84519c);
        return this.f84517a.toByteArray();
    }

    public String b(bv bvVar) throws cb {
        return new String(a(bvVar));
    }

    public ce(cw cwVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f84517a = byteArrayOutputStream;
        dg dgVar = new dg(byteArrayOutputStream);
        this.f84518b = dgVar;
        this.f84519c = cwVar.a(dgVar);
    }

    public String a(bv bvVar, String str) throws cb {
        try {
            return new String(a(bvVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new cb("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }
}
