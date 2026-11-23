package com.byazt.eg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF})
public class md {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13351a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f13352c = System.currentTimeMillis();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f13353n;
    public long sp;
    public long tt;
    public long uj;
    public long ve;

    public long a() {
        return this.uj;
    }

    public void c() {
        this.ve = System.currentTimeMillis();
    }

    public long da() {
        return this.tt;
    }

    public long i() {
        return this.sp;
    }

    public long n() {
        return this.ve;
    }

    public void sl() {
        this.tt = System.currentTimeMillis();
    }

    public long sp() {
        return this.f13353n;
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.f13352c + ", asyncCallExecTs=" + this.tt + ", requestStartExecTs=" + this.ve + ", requestConnectStartTs=" + this.uj + ", requestConnectFinishTs=" + this.f13353n + ", reqCallServerStartTs=" + this.f13351a + ", reqCallServerFinishTs=" + this.sp + '}';
    }

    public void tt() {
        this.uj = System.currentTimeMillis();
    }

    public long uj() {
        return this.f13352c;
    }

    public void ve() {
        this.f13353n = System.currentTimeMillis();
    }

    public long x() {
        return this.f13351a;
    }

    public void c(long j10) {
        this.f13351a = j10;
    }

    public void tt(long j10) {
        this.sp = j10;
    }
}
