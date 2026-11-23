package com.cloudplay.messagesdk.socket.b.h;

import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f24211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f24213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f24214g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f24215h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f24216i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String[] f24217j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f24218k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f24219l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f24220m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f24221n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24222o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MessageSchedulerType f24223p;

    public b() {
        this.f24223p = MessageSchedulerType.MAIN_THREAD;
        this.f24208a = 131072;
        this.f24209b = 131072;
        this.f24210c = false;
        this.f24211d = true;
        this.f24212e = 0;
        this.f24213f = 6000;
        this.f24214g = true;
        this.f24215h = true;
        this.f24216i = 0;
        this.f24217j = null;
        this.f24218k = 10;
        this.f24219l = 5;
        this.f24222o = 3;
        this.f24220m = 0;
        this.f24221n = 3;
    }

    public void a(String[] strArr) {
        this.f24217j = strArr;
    }

    public void b(int i10) {
        this.f24219l = i10;
    }

    public void c(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.f24220m = i10;
    }

    public void d(int i10) {
        this.f24216i = i10;
    }

    public int e() {
        return this.f24208a;
    }

    public int f() {
        return this.f24209b;
    }

    public boolean g() {
        return this.f24210c;
    }

    public int h() {
        return this.f24216i;
    }

    public MessageSchedulerType i() {
        return this.f24223p;
    }

    public int j() {
        return this.f24222o;
    }

    public int k() {
        return this.f24213f;
    }

    public int l() {
        return this.f24212e;
    }

    public String[] m() {
        return this.f24217j;
    }

    public boolean n() {
        return this.f24211d;
    }

    public boolean o() {
        return this.f24214g;
    }

    public void a(int i10) {
        this.f24218k = i10;
    }

    public int b() {
        return this.f24219l;
    }

    public int c() {
        return this.f24220m;
    }

    public int d() {
        return this.f24221n;
    }

    public int a() {
        return this.f24218k;
    }

    public void a(MessageSchedulerType messageSchedulerType) {
        this.f24223p = messageSchedulerType;
    }

    public b(b bVar) {
        this.f24223p = MessageSchedulerType.MAIN_THREAD;
        this.f24208a = bVar.f24208a;
        this.f24209b = bVar.f24209b;
        this.f24210c = bVar.f24210c;
        this.f24211d = bVar.f24211d;
        this.f24212e = bVar.f24212e;
        this.f24213f = bVar.f24213f;
        this.f24214g = bVar.f24214g;
        this.f24215h = bVar.f24215h;
        this.f24216i = bVar.f24216i;
        this.f24217j = bVar.f24217j;
        this.f24218k = bVar.f24218k;
        this.f24219l = bVar.f24219l;
        this.f24222o = bVar.f24222o;
        this.f24220m = bVar.f24220m;
        this.f24221n = bVar.f24221n;
        this.f24223p = bVar.f24223p;
    }
}
