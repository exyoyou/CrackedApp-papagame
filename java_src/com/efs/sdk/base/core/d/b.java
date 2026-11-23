package com.efs.sdk.base.core.d;

import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.protocol.ILogProtocol;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f26341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f26342b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f26343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public File f26344d;

    public b(String str, byte b10) {
        this.f26341a = new a(str, b10);
    }

    private void d() {
        byte[] bArr;
        a aVar = this.f26341a;
        int i10 = aVar.f26336c;
        if (i10 == 0 && (bArr = this.f26343c) != null) {
            aVar.f26339f = bArr.length;
        } else if (i10 == 1 && this.f26344d.exists()) {
            this.f26341a.f26339f = this.f26344d.length();
        }
    }

    public final long a() {
        d();
        return this.f26341a.f26339f;
    }

    public final boolean b() {
        return !"none".equals(this.f26341a.f26337d);
    }

    public final void c() {
        this.f26342b.f26345a = true;
    }

    public final void b(int i10) {
        this.f26341a.f26336c = i10;
    }

    public final void a(String str) {
        this.f26341a.f26337d = str;
    }

    public final void a(int i10) {
        this.f26341a.f26338e = i10;
        d();
    }

    public final void a(byte[] bArr) {
        this.f26343c = bArr;
        d();
    }

    public static b a(ILogProtocol iLogProtocol) {
        b bVar = null;
        try {
            b bVar2 = new b(iLogProtocol.getLogType(), iLogProtocol.getLogProtocol());
            try {
                int bodyType = iLogProtocol.getBodyType();
                if (bodyType == 0) {
                    bVar2.b(0);
                    bVar2.a(iLogProtocol.generate());
                } else if (bodyType != 1) {
                    Log.w("efs.base", "Can not support body type: " + iLogProtocol.getBodyType());
                } else {
                    bVar2.b(1);
                    bVar2.f26344d = new File(iLogProtocol.getFilePath());
                }
                return bVar2;
            } catch (Exception e10) {
                e = e10;
                bVar = bVar2;
                Log.e("efs.base", "log send error", e);
                return bVar;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }
}
