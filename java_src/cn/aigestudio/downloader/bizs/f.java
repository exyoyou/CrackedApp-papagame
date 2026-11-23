package cn.aigestudio.downloader.bizs;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f627f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    volatile boolean f630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    volatile boolean f631j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f632k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f633l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f634m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f635n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<e> f636o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    g.b f638q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    File f639r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicLong f622a = new AtomicLong();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicLong f623b = new AtomicLong();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AtomicInteger f628g = new AtomicInteger();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f640s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f641t = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final List<j> f637p = new ArrayList();

    f() {
    }

    synchronized void a(j info) {
        this.f637p.add(info);
    }

    synchronized void b(j info) {
        this.f637p.remove(info);
    }
}
