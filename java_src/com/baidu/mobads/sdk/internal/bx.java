package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public class bx extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7654b = "ApkDownloadThread";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7655c = 900000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile bx f7656h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile String f7658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f7660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f7661g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f7662i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final bz f7664k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ck f7663j = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private bv f7665l = bv.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ck.a f7657a = new by(this);

    private bx(Context context, bz bzVar, String str, Handler handler) {
        this.f7659e = null;
        this.f7662i = context;
        this.f7664k = bzVar;
        a(bzVar.c());
        this.f7661g = handler;
        this.f7659e = str;
    }

    private boolean b() throws cb.a {
        double d10;
        try {
            try {
                this.f7663j = new ck(this.f7662i, new URL(this.f7658d), this.f7664k, this.f7657a);
            } catch (MalformedURLException unused) {
                this.f7663j = new ck(this.f7662i, this.f7658d, this.f7664k, this.f7657a);
            }
            if (cb.f7695q != null) {
                d10 = cb.f7695q.f7613b;
            } else if (cb.f7694p != null) {
                d10 = cb.f7694p.f7613b > 0.0d ? cb.f7694p.f7613b : cb.f7694p.f7613b;
            } else {
                d10 = 0.0d;
            }
            this.f7665l.a(f7654b, "isNewApkAvailable: local apk version is: " + d10 + ", remote apk version: " + this.f7664k.b());
            if (d10 > 0.0d) {
                if (this.f7664k.b() <= 0.0d) {
                    this.f7665l.a(f7654b, "remote is null, local apk version is null, do not upgrade");
                    return false;
                }
                this.f7665l.a(f7654b, "remote not null, local apk version is null, force upgrade");
                this.f7660f = this.f7664k.b();
                return true;
            }
            if (this.f7664k.b() > 0.0d) {
                if (this.f7664k.b() <= d10) {
                    return false;
                }
                this.f7660f = this.f7664k.b();
                return true;
            }
            this.f7665l.a(f7654b, "remote apk version is: null, local apk version is: " + d10 + ", do not upgrade");
            return false;
        } catch (Exception e10) {
            String str = "parse apk failed, error:" + e10.toString();
            this.f7665l.a(f7654b, str);
            throw new cb.a(str);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            if (b()) {
                try {
                    a();
                    this.f7665l.a(f7654b, "download apk successfully, downloader exit");
                    f7656h = null;
                } catch (IOException e10) {
                    this.f7665l.a(f7654b, "create File or HTTP Get failed, exception: " + e10.getMessage());
                }
                this.f7665l.a(f7654b, "no newer apk, downloader exit");
                f7656h = null;
            }
        } catch (Throwable unused) {
        }
    }

    public static bx a(Context context, bz bzVar, String str, Handler handler) {
        if (f7656h == null) {
            f7656h = new bx(context, bzVar, str, handler);
        }
        return f7656h;
    }

    public void a(String str) {
        this.f7658d = str;
        interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, bz bzVar, String str2) {
        if (str.equals(cb.f7689k) || str.equals(cb.f7690l)) {
            Message messageObtainMessage = this.f7661g.obtainMessage();
            Bundle bundle = new Bundle();
            bundle.putParcelable(cb.f7691m, bzVar);
            bundle.putString(cb.f7692n, str);
            messageObtainMessage.setData(bundle);
            this.f7661g.sendMessage(messageObtainMessage);
        }
    }

    private String a() throws IOException {
        String str = "__xadsdk__remote__final__" + UUID.randomUUID().toString() + ".jar";
        String str2 = this.f7659e + str;
        File file = new File(str2);
        try {
            file.createNewFile();
            this.f7663j.a(this.f7659e, str);
            return str2;
        } catch (IOException e10) {
            file.delete();
            throw e10;
        }
    }
}
