package com.umeng.analytics.pro;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
public class dg extends di {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected InputStream f84633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected OutputStream f84634b;

    protected dg() {
        this.f84633a = null;
        this.f84634b = null;
    }

    @Override // com.umeng.analytics.pro.di
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.di
    public void b() throws dj {
    }

    @Override // com.umeng.analytics.pro.di
    public void c() {
        InputStream inputStream = this.f84633a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            this.f84633a = null;
        }
        OutputStream outputStream = this.f84634b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            this.f84634b = null;
        }
    }

    @Override // com.umeng.analytics.pro.di
    public void d() throws dj {
        OutputStream outputStream = this.f84634b;
        if (outputStream == null) {
            throw new dj(1, "Cannot flush null outputStream");
        }
        try {
            outputStream.flush();
        } catch (IOException e10) {
            throw new dj(0, e10);
        }
    }

    @Override // com.umeng.analytics.pro.di
    public int a(byte[] bArr, int i10, int i11) throws dj {
        InputStream inputStream = this.f84633a;
        if (inputStream == null) {
            throw new dj(1, "Cannot read from null inputStream");
        }
        try {
            int i12 = inputStream.read(bArr, i10, i11);
            if (i12 >= 0) {
                return i12;
            }
            throw new dj(4);
        } catch (IOException e10) {
            throw new dj(0, e10);
        }
    }

    @Override // com.umeng.analytics.pro.di
    public void b(byte[] bArr, int i10, int i11) throws dj {
        OutputStream outputStream = this.f84634b;
        if (outputStream == null) {
            throw new dj(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i10, i11);
        } catch (IOException e10) {
            throw new dj(0, e10);
        }
    }

    public dg(InputStream inputStream) {
        this.f84634b = null;
        this.f84633a = inputStream;
    }

    public dg(OutputStream outputStream) {
        this.f84633a = null;
        this.f84634b = outputStream;
    }

    public dg(InputStream inputStream, OutputStream outputStream) {
        this.f84633a = inputStream;
        this.f84634b = outputStream;
    }
}
