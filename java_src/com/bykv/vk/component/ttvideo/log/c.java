package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import com.kuaishou.weapon.p0.t;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f23237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23238b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f23243g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f23239c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f23240d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f23241e = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f23244h = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f23242f = com.bykv.vk.component.ttvideo.utils.b.a(null);

    c(a aVar, Context context) {
        this.f23237a = aVar;
    }

    public void a() {
        b();
    }

    public void b() {
        Map mapVersionInfo;
        a aVar = this.f23237a;
        if (aVar == null || (mapVersionInfo = aVar.versionInfo()) == null) {
            return;
        }
        this.f23239c = (String) mapVersionInfo.get(t.f74899x);
        this.f23240d = (String) mapVersionInfo.get(x.a.f97582j);
        this.f23241e = (String) mapVersionInfo.get("sdk_version");
    }

    public void a(String str) {
        this.f23238b = str;
        this.f23242f = com.bykv.vk.component.ttvideo.utils.b.b(str);
    }

    public void b(String str) {
    }
}
