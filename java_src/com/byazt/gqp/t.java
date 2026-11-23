package com.byazt.gqp;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 66})
public class t extends x implements Cloneable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final List<u> f14703x = com.byazt.na.da.c(u.HTTP_2, u.HTTP_1_1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14704a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<i> f14705c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Set<String> f14706da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<u> f14707i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TimeUnit f14708n;
    public com.byazt.gu.c sl;
    public TimeUnit sp;
    public long tt;
    public long uj;
    public TimeUnit ve;

    public t() {
        this(new c());
    }

    public tt c(yp ypVar) {
        return null;
    }

    public c tt() {
        return new c(this);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 125})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TimeUnit f14709a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<i> f14710c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Set<String> f14711da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List<u> f14712i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f14713n;
        public Bundle sl;
        public long sp;
        public com.byazt.gu.c tt;
        public TimeUnit uj;
        public long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public TimeUnit f14714x;

        public c() {
            this.f14710c = new ArrayList();
            this.ve = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.uj = timeUnit;
            this.f14713n = 10000L;
            this.f14709a = timeUnit;
            this.sp = 10000L;
            this.f14714x = timeUnit;
        }

        public c c(long j10, TimeUnit timeUnit) {
            this.ve = j10;
            this.uj = timeUnit;
            return this;
        }

        public c tt(long j10, TimeUnit timeUnit) {
            this.f14713n = j10;
            this.f14709a = timeUnit;
            return this;
        }

        public c ve(long j10, TimeUnit timeUnit) {
            this.sp = j10;
            this.f14714x = timeUnit;
            return this;
        }

        public c c(com.byazt.gu.c cVar) {
            this.tt = cVar;
            return this;
        }

        public c c(i iVar) {
            this.f14710c.add(iVar);
            return this;
        }

        public c c(Set<String> set) {
            this.f14711da = set;
            return this;
        }

        public c c(List<u> list) {
            ArrayList arrayList = new ArrayList(list);
            if (arrayList.contains(u.HTTP_1_1)) {
                if (!arrayList.contains(u.HTTP_1_0)) {
                    if (!arrayList.contains(null)) {
                        arrayList.remove(u.SPDY_3);
                        this.f14712i = Collections.unmodifiableList(arrayList);
                        return this;
                    }
                    throw new IllegalArgumentException("protocols must not contain null");
                }
                throw new IllegalArgumentException("protocols must not contain http/1.0: ".concat(String.valueOf(arrayList)));
            }
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: ".concat(String.valueOf(arrayList)));
        }

        public c(String str) {
            this.f14710c = new ArrayList();
            this.ve = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.uj = timeUnit;
            this.f14713n = 10000L;
            this.f14709a = timeUnit;
            this.sp = 10000L;
            this.f14714x = timeUnit;
            this.f14712i = t.f14703x;
        }

        public c c(Bundle bundle) {
            this.sl = bundle;
            return this;
        }

        public t c() {
            if (com.byazt.yr.c.c().tt()) {
                return com.byazt.yr.c.tt(this);
            }
            return com.byazt.yr.c.c(this);
        }

        public c(t tVar) {
            this.f14710c = new ArrayList();
            this.ve = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.uj = timeUnit;
            this.f14713n = 10000L;
            this.f14709a = timeUnit;
            this.sp = 10000L;
            this.f14714x = timeUnit;
            this.ve = tVar.tt;
            this.uj = tVar.ve;
            this.f14713n = tVar.uj;
            this.f14709a = tVar.f14708n;
            this.sp = tVar.f14704a;
            this.f14714x = tVar.sp;
            this.f14712i = tVar.f14707i;
            this.f14711da = tVar.f14706da;
        }
    }

    public t(c cVar) {
        this.tt = cVar.ve;
        this.uj = cVar.f14713n;
        this.f14704a = cVar.sp;
        this.ve = cVar.uj;
        this.f14708n = cVar.f14709a;
        this.sp = cVar.f14714x;
        this.f14705c = cVar.f14710c;
        this.f14707i = cVar.f14712i;
        this.f14706da = cVar.f14711da;
        this.sl = cVar.tt;
    }

    public uj c() {
        return null;
    }
}
