package com.byazt.afw;

import com.byazt.ete.ic;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 137})
public class nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11581c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ic f11582n;
    public String tt;
    public com.byazt.jzl.a uj;
    public int ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER, 475})
    public static class c {

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f11585da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11586i;
        public int sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f11588t;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f11590x;
        public JSONArray yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public Map<String, Object> f11591z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f11584c = 0;
        public long tt = 0;
        public long ve = 0;
        public boolean uj = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f11587n = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11583a = 0;
        public int sp = 0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f11589u = false;

        public int a() {
            return this.sp;
        }

        public void c(JSONArray jSONArray) {
            this.yp = jSONArray;
        }

        public int da() {
            return this.f11585da;
        }

        public int i() {
            long j10 = this.ve;
            if (j10 <= 0) {
                return 0;
            }
            return Math.min((int) ((this.f11584c * 100) / j10), 100);
        }

        public Map<String, Object> m() {
            return this.f11591z;
        }

        public int n() {
            return this.f11583a;
        }

        public int sl() {
            return this.sl;
        }

        public int sp() {
            return this.f11590x;
        }

        public int t() {
            return this.f11588t;
        }

        public long tt() {
            return this.f11584c;
        }

        public boolean u() {
            return this.f11589u;
        }

        public long uj() {
            return this.ve;
        }

        public long ve() {
            return this.tt;
        }

        public int x() {
            return this.f11586i;
        }

        public boolean yp() {
            return this.uj;
        }

        public boolean z() {
            return this.f11587n;
        }

        public void a(int i10) {
            this.f11588t = i10;
        }

        public JSONArray c() {
            return this.yp;
        }

        public void n(int i10) {
            this.f11585da = i10;
        }

        public void tt(long j10) {
            this.tt = j10;
        }

        public void uj(int i10) {
            this.f11586i = i10;
        }

        public void ve(long j10) {
            this.ve = j10;
        }

        public void c(long j10) {
            this.f11584c = j10;
        }

        public void tt(int i10) {
            this.sp = i10;
        }

        public void ve(int i10) {
            this.f11590x = i10;
        }

        public void c(int i10) {
            this.f11583a = i10;
        }

        public void tt(boolean z10) {
            this.uj = z10;
        }

        public void ve(boolean z10) {
            this.f11587n = z10;
        }

        public void c(boolean z10) {
            this.f11589u = z10;
        }

        public void c(Map<String, Object> map) {
            this.f11591z = map;
        }
    }

    public nu(long j10, String str, int i10, com.byazt.jzl.a aVar, ic icVar) {
        this.f11581c = j10;
        this.tt = str;
        this.ve = i10;
        this.uj = aVar;
        this.f11582n = icVar;
    }

    public long c() {
        return this.f11581c;
    }

    public ic n() {
        return this.f11582n;
    }

    public String tt() {
        return this.tt;
    }

    public com.byazt.jzl.a uj() {
        return this.uj;
    }

    public int ve() {
        return this.ve;
    }
}
