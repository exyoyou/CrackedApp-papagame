package com.byazt.yv;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 158})
public class sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22448a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22449c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f22450n;
    public final String sp;
    public final String[] tt;
    public final String uj;
    public final String[] ve;

    @com.byazt.zqa.c(c = {0, 1, 499, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_VERSION})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f22451a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f22452c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f22453n;
        public String sp;
        public String[] tt;
        public String uj;
        public String[] ve;

        public c c(String str) {
            this.f22452c = str;
            return this;
        }

        public c tt(String[] strArr) {
            this.ve = strArr;
            return this;
        }

        public c uj(String str) {
            this.sp = str;
            return this;
        }

        public c ve(String str) {
            this.f22453n = str;
            return this;
        }

        public c c(String[] strArr) {
            this.tt = strArr;
            return this;
        }

        public c tt(String str) {
            this.uj = str;
            return this;
        }

        public sl c() {
            return new sl(this);
        }
    }

    public String c() {
        return this.f22449c;
    }

    public String[] tt() {
        return this.tt;
    }

    public String uj() {
        return this.f22450n;
    }

    public String ve() {
        return this.uj;
    }

    private sl(c cVar) {
        this.f22449c = cVar.f22452c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f22450n = cVar.f22453n;
        this.f22448a = cVar.f22451a;
        this.sp = cVar.sp;
    }

    public static sl c(int i10) {
        return t.c(i10);
    }
}
