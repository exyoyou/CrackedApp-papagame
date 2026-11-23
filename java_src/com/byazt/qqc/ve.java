package com.byazt.qqc;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.Window;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.omf.gt;
import com.byazt.omf.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ve f19234c = new ve();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f19235a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f19238n;
    public volatile boolean sl;
    public ic sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.wee.tt f19241x;
    public float tt = -2.0f;
    public float ve = -2.0f;
    public double uj = -2.0d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AtomicInteger f19237i = new AtomicInteger();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public AtomicInteger f19236da = new AtomicInteger();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ConcurrentHashMap<Window, com.byazt.cb.tt> f19239t = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ConcurrentHashMap<Window, com.byazt.wee.tt> f19240u = new ConcurrentHashMap<>();

    private ve() {
        com.byazt.aas.c cVarVe = x.m().ve();
        if (cVarVe == null) {
            return;
        }
        cVarVe.tt(new com.byazt.aas.c.ve() { // from class: com.byazt.qqc.ve.1
            @Override // com.byazt.aas.c.ve, com.byazt.aas.c.InterfaceC0252c
            public void c(String str, Window window) {
                super.c(str, window);
                if (!TextUtils.isEmpty(str) && str.contains("com.byted.live.lite")) {
                    ve veVar = ve.this;
                    veVar.c(window, veVar.sp, ve.this.sl);
                }
            }

            @Override // com.byazt.aas.c.ve, com.byazt.aas.c.InterfaceC0252c
            public void tt(String str, Window window) {
                super.tt(str, window);
                if (!TextUtils.isEmpty(str) && str.contains("com.byted.live.lite")) {
                    ve veVar = ve.this;
                    veVar.tt(window, veVar.sp, false);
                }
            }
        });
    }

    private void da() {
        if (this.f19237i.get() > 0 && nb.ve(this.sp)) {
            this.f19237i.decrementAndGet();
        }
    }

    private void i() {
        if (nb.ve(this.sp)) {
            this.f19237i.incrementAndGet();
        }
    }

    private void sp() {
        if (nb.ve(this.sp)) {
            this.f19236da.incrementAndGet();
        }
    }

    private void x() {
        if (this.f19236da.get() > 0 && nb.ve(this.sp)) {
            this.f19236da.decrementAndGet();
        }
    }

    public float a() {
        if (this.ve == -2.0f) {
            AudioManager audioManager = (AudioManager) gt.getContext().getSystemService("audio");
            if (audioManager == null) {
                return 0.0f;
            }
            this.ve = audioManager.getStreamVolume(3);
        }
        return this.ve;
    }

    public float n() {
        return this.tt;
    }

    public boolean uj() {
        return this.f19235a;
    }

    public boolean ve() {
        return this.f19238n;
    }

    public static ve c() {
        return f19234c;
    }

    private void ve(Window window, ic icVar) {
        boolean z10;
        if (window == null) {
            return;
        }
        com.byazt.wee.tt ttVar = this.f19240u.get(window);
        if (ttVar != null) {
            int iSl = nb.sl(icVar);
            if (nb.ve(icVar)) {
                x();
                z10 = this.f19236da.get() == 0;
            }
            ttVar.n(iSl);
        }
        if (z10) {
            this.f19240u.remove(window);
        }
    }

    public double tt() {
        return this.uj;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        double dOptDouble = jSONObject.optDouble("day_factor", 0.0d);
        double dOptDouble2 = jSONObject.optDouble("week_factor", 0.0d);
        double dOptDouble3 = jSONObject.optDouble("battery_factor", 0.0d);
        this.uj = c.c(((((double) (tt.c() ? 1 : -1)) * dOptDouble2) + (((double) (tt.ve() ? 1 : -1)) * dOptDouble) + (((double) (DeviceUtils.c.tt(gt.getContext()) < 50.0f ? -1 : 1)) * dOptDouble3)) * jSONObject.optDouble("factor", 0.0d), jSONObject);
    }

    public void tt(float f10) {
        this.ve = f10;
    }

    public void tt(@ForbidWrapParam Context context, ic icVar, boolean z10) {
        tt(c(context), icVar, z10);
    }

    public void tt(Window window, ic icVar, boolean z10) {
        if (nb.a(icVar) && z10) {
            tt(window, icVar);
        }
        if (nb.n(icVar)) {
            ve(window, icVar);
        }
    }

    private void tt(Window window, ic icVar) {
        boolean z10;
        if (window == null) {
            return;
        }
        com.byazt.cb.tt ttVar = this.f19239t.get(window);
        if (ttVar != null) {
            boolean zVe = nb.ve(icVar);
            int iSl = nb.sl(icVar);
            if (zVe) {
                da();
                z10 = this.f19237i.get() == 0;
            }
            ttVar.n(iSl);
        }
        if (z10) {
            this.f19239t.remove(window);
        }
    }

    public void c(boolean z10) {
        this.f19238n = z10;
    }

    public void c(float f10) {
        this.tt = f10;
    }

    public void c(Context context, ic icVar, boolean z10) {
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        this.sl = z10;
        c(window, icVar, z10);
    }

    private void c(Window window, ic icVar) {
        if (nb.a(icVar)) {
            this.sp = icVar;
            com.byazt.cb.tt ttVar = new com.byazt.cb.tt(window);
            boolean zVe = ttVar.ve(nb.sl(icVar));
            if (window == null || !zVe) {
                return;
            }
            i();
            this.f19239t.put(window, ttVar);
        }
    }

    private void c(boolean z10, ic icVar, Window window) {
        if (!z10 && nb.n(icVar)) {
            this.sp = icVar;
            com.byazt.wee.tt ttVar = new com.byazt.wee.tt();
            this.f19241x = ttVar;
            ttVar.c(xd.sp(icVar));
            this.f19241x.c(nb.p(icVar));
            boolean zVe = this.f19241x.ve(nb.sl(icVar));
            if (window == null || !zVe) {
                return;
            }
            sp();
            this.f19240u.put(window, this.f19241x);
        }
    }

    public void c(Window window, ic icVar, boolean z10) {
        if (window == null) {
            return;
        }
        c(window, icVar);
        c(z10, icVar, window);
    }

    private Window c(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getWindow();
        }
        return null;
    }

    public int c(int i10, ic icVar) {
        JSONObject jSONObjectYo;
        JSONArray jSONArrayOptJSONArray;
        int i11;
        int iSl = nb.sl(icVar);
        if ((iSl == 9 || iSl == 5) && (jSONObjectYo = gt.tt().yo()) != null) {
            int iOptInt = jSONObjectYo.optInt("enable");
            double dOptDouble = jSONObjectYo.optDouble(HmInputMappingContent.FIELD_VALUE);
            if (iOptInt == 1 && (jSONArrayOptJSONArray = jSONObjectYo.optJSONArray("valid_type")) != null && jSONArrayOptJSONArray.length() != 0) {
                boolean z10 = false;
                for (int i12 = 0; i12 < jSONArrayOptJSONArray.length(); i12++) {
                    if (iSl == jSONArrayOptJSONArray.optInt(i12)) {
                        z10 = true;
                    }
                }
                if (z10 && (i11 = (int) (dOptDouble * 100.0d)) >= 0 && i11 <= 100) {
                    return i11;
                }
            }
        }
        return i10;
    }

    public void c(int i10) {
        com.byazt.wee.tt ttVar = this.f19241x;
        if (ttVar != null) {
            int iN = ttVar.n();
            if (this.f19235a) {
                return;
            }
            this.f19235a = iN != i10;
            return;
        }
        this.f19235a = true;
    }
}
