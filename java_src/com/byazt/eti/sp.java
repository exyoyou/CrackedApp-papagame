package com.byazt.eti;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.ete.ic;
import com.byazt.ete.x;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.kwad.components.offline.api.explore.model.ExploreConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 384, 91})
public class sp {
    public static final Map<String, AtomicBoolean> ve = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f14003c;
    public final com.byazt.eti.tt tt;

    @com.byazt.zqa.c(c = {0, 1, 384, 180})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14006a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14007c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f14008n;
        public final int sp;
        public final int tt;
        public final boolean uj;
        public final int ve;

        /* JADX INFO: renamed from: com.byazt.eti.sp$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 384, 1063})
        public static class C0304c {
            public int tt;
            public int ve;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f14010c = "Default";
            public boolean uj = true;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public int f14011n = 1;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f14009a = 0;
            public int sp = 1;

            public C0304c c(String str) {
                this.f14010c = str;
                return this;
            }

            public C0304c tt(int i10) {
                this.f14009a = i10;
                return this;
            }

            public C0304c uj(int i10) {
                this.f14011n = i10;
                return this;
            }

            public C0304c ve(int i10) {
                this.sp = i10;
                return this;
            }

            public C0304c c(int i10) {
                this.tt = i10;
                return this;
            }

            public C0304c c(boolean z10) {
                this.uj = z10;
                return this;
            }

            public c c() {
                return new c(this);
            }
        }

        public int n() {
            return this.sp;
        }

        public int uj() {
            return this.f14008n;
        }

        public boolean ve() {
            return this.uj;
        }

        private c(C0304c c0304c) {
            this.f14007c = c0304c.f14010c;
            this.tt = c0304c.tt;
            this.ve = c0304c.ve;
            this.uj = c0304c.uj;
            this.f14006a = c0304c.f14009a;
            this.sp = c0304c.sp;
            this.f14008n = c0304c.f14011n;
        }

        public String c() {
            return this.f14007c;
        }

        public int tt() {
            return this.tt;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 384, TypedValues.Custom.TYPE_BOOLEAN})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14012c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f14013n;
        public long tt;
        public int uj = 7611;
        public String ve;

        public tt(String str, long j10, long j11, String str2) {
            this.f14012c = j10;
            this.tt = j11;
            this.ve = str;
            this.f14013n = str2;
        }

        public boolean c() {
            return (TextUtils.isEmpty(this.ve) || this.f14012c == 0) ? false : true;
        }
    }

    public sp(int i10) {
        c cVarTt = tt(i10);
        this.f14003c = cVarTt;
        if (cVarTt.f14006a != 1) {
            this.tt = new ve();
        } else {
            this.tt = new uj();
        }
    }

    private AtomicBoolean n(String str) {
        Map<String, AtomicBoolean> map = ve;
        if (!map.containsKey(str)) {
            map.put(str, new AtomicBoolean(false));
        }
        return map.get(str);
    }

    public void c(String str, tt ttVar, boolean z10, long j10, int i10) {
        try {
            com.byazt.eti.c cVar = gt.tt().ox() ? new com.byazt.eti.c() { // from class: com.byazt.eti.sp.1
                @Override // com.byazt.eti.c
                public void c(tt ttVar2) {
                    try {
                        ic icVarC = com.byazt.omf.c.c(new JSONObject(com.byazt.nr.c.ve(ttVar2.ve)));
                        icVarC.bn().uj(3);
                        com.byazt.ddx.uj.ve(icVarC, com.byazt.dyf.tt.AD_TAG_FEED);
                    } catch (Exception unused) {
                    }
                }
            } : null;
            synchronized (n(str)) {
                a aVar = new a();
                aVar.f13997c = z10;
                aVar.tt = (int) j10;
                aVar.ve = i10;
                this.tt.c(str, ttVar, aVar, this.f14003c, cVar);
            }
        } catch (Throwable unused) {
        }
    }

    public void tt(String str) {
        com.byazt.eti.c cVar = gt.tt().dn() ? new com.byazt.eti.c() { // from class: com.byazt.eti.sp.2
            @Override // com.byazt.eti.c
            public void c(tt ttVar) {
                try {
                    ic icVarC = com.byazt.omf.c.c(new JSONObject(com.byazt.nr.c.ve(ttVar.ve)));
                    icVarC.bn().uj(2);
                    com.byazt.ddx.uj.ve(icVarC, com.byazt.dyf.tt.AD_TAG_FEED);
                } catch (Exception unused) {
                }
            }
        } : null;
        try {
            m.uj("cache_tag", "广告类型 " + this.f14003c.tt + " ---缓存清理中--- rit: " + str);
            this.tt.c(str, this.f14003c, cVar);
        } catch (Throwable unused) {
        }
    }

    public boolean uj(String str) {
        boolean zC;
        try {
            synchronized (n(str)) {
                zC = this.tt.c(str, this.f14003c);
            }
            return zC;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void ve(String str) {
        try {
            if (n(str).compareAndSet(false, true)) {
                System.currentTimeMillis();
                this.tt.tt(str);
                System.currentTimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    private c tt(int i10) {
        String str;
        x.ve veVarC = x.c(i10);
        switch (i10) {
            case 1:
                str = "Banner";
                break;
            case 2:
            default:
                str = "Default";
                break;
            case 3:
            case 4:
                str = ExploreConstants.SCENE_SPLASH;
                break;
            case 5:
                str = ExploreConstants.SCENE_FEED;
                break;
            case 6:
                str = "Stream";
                break;
            case 7:
                str = ExploreConstants.SCENE_REWARD;
                break;
            case 8:
                str = ExploreConstants.SCENE_FULL;
                break;
            case 9:
                str = "Draw";
                break;
        }
        if (veVarC == null) {
            return new c.C0304c().c();
        }
        return new c.C0304c().c(str).c(i10).c(veVarC.x()).tt(veVarC.n()).ve(veVarC.tt()).uj(veVarC.ve()).c();
    }

    public tt c(String str, boolean z10, long j10) {
        tt ttVarC;
        try {
            synchronized (n(str)) {
                ttVarC = this.tt.c(str, this.f14003c, j10, null);
                if (ttVarC != null && ttVarC.c() && z10) {
                    this.tt.c(str, ttVarC.f14013n, true);
                }
            }
            return ttVarC;
        } catch (Throwable unused) {
            return null;
        }
    }

    public List<tt> c(String str, boolean z10, long j10, int i10, double d10) {
        ArrayList<tt> arrayList = new ArrayList();
        try {
            synchronized (n(str)) {
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = 0; i11 < i10; i11++) {
                    tt ttVarC = this.tt.c(str, this.f14003c, j10, arrayList2);
                    if (ttVarC == null || !ttVarC.c()) {
                        break;
                    }
                    arrayList2.add(ttVarC.f14013n);
                    arrayList.add(ttVarC);
                }
                if (d10 > 0.0d) {
                    int iFloor = (int) Math.floor(((double) i10) * d10);
                    arrayList.size();
                    if (arrayList.size() < iFloor) {
                        return Collections.emptyList();
                    }
                }
                for (tt ttVar : arrayList) {
                    if (z10) {
                        this.tt.c(str, ttVar.f14013n, true);
                    }
                }
                return arrayList;
            }
        } catch (Throwable unused) {
            return arrayList;
        }
    }

    public tt c(String str, long j10, List<String> list) {
        tt ttVarC;
        try {
            synchronized (n(str)) {
                System.currentTimeMillis();
                ttVarC = this.tt.c(str, this.f14003c, j10, list);
                if (ttVarC != null && ttVarC.c()) {
                    System.currentTimeMillis();
                }
            }
            return ttVarC;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void c() {
        try {
            this.tt.c(this.f14003c);
        } catch (Throwable unused) {
        }
    }

    public void c(String str) {
        try {
            this.tt.c(str);
        } catch (Throwable unused) {
        }
    }

    public void c(String str, String str2, boolean z10) {
        try {
            synchronized (n(str)) {
                this.tt.c(str, str2, z10);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(String str, String str2) {
        try {
            synchronized (n(str)) {
                this.tt.c(str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(int i10) {
        this.f14003c = tt(i10);
    }
}
