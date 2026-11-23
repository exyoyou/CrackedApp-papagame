package com.byazt.zb;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.m;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.activity.TagGameListActivity_;
import com.kuaishou.weapon.p0.g;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 184, 71})
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22668a;
    public String aw;
    public int az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f22669b;
    public List<JSONObject> bj;
    public int bm;
    public ViewTreeObserver.OnGlobalLayoutListener bp;
    public long bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22670c;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    public boolean f22671ca;
    public float cf;
    public boolean cl;
    public long cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f22672d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Runnable f22673da;
    public int di;
    public com.byazt.nl.uj dz;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f22674e;
    public int ej;
    public long eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.byazt.zb.c f22675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f22676g;
    public String gk;
    public boolean gr;
    public String gt;
    public boolean gu;
    public Map<String, String> gx;
    public JSONObject gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f22677h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public String f22678hd;
    public String hg;
    public int hj;
    public String hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f22679i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public String f22680ic;
    public int ij;
    public ve ir;
    public int is;
    public c iu;
    public boolean iw;
    public boolean iy;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f22681j;
    public int jg;
    public int jt;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f22682k;
    public int kk;
    public String kp;
    public JSONObject kz;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f22683l;
    public int lo;
    public int lr;
    public int lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f22684m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public WeakReference<View> f22685ma;
    public long md;
    public String mm;
    public float mq;
    public Set<String> my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f22686n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public long f22687nb;

    /* JADX INFO: renamed from: nc, reason: collision with root package name */
    public boolean f22688nc;
    public int nl;
    public String nt;
    public boolean nu;
    public String nx;
    public String ny;
    public long or;
    public long os;
    public long oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f22689p;
    public String pe;
    public long pf;
    public int pl;
    public String pn;
    public int pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f22690q;
    public long qp;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public JSONObject f22691r;
    public boolean rh;
    public String rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f22692s;
    public boolean sd;
    public Runnable sl;
    public final String sp;
    public String sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Handler f22693t;
    public int tk;
    public int to;
    public final String tt;
    public int tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f22694u;
    public final String uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f22695v;
    public final String ve;
    public float vi;
    public String vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f22696w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Handler f22697x;
    public JSONObject xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f22698y;
    public a yf;
    public String yo;
    public Runnable yp;
    public String yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public tt f22699z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public long f22700zb;
    public boolean zm;

    public enum c {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private x(Context context, com.byazt.nl.uj ujVar, ve veVar, com.byazt.zb.c cVar, c cVar2, boolean z10) {
        this.f22668a = "playable_stuck_check_ping";
        this.sp = "playable_apply_media_permission_callback";
        this.f22697x = new Handler(Looper.getMainLooper());
        this.f22693t = new Handler(Looper.getMainLooper());
        this.f22684m = true;
        this.nu = true;
        this.rh = true;
        this.f22670c = "PL_sdk_playable_global_viewable";
        this.tt = "PL_sdk_page_screen_blank";
        this.ve = "PL_sdk_playable_destroy_analyze_summary";
        this.uj = "PL_sdk_playable_hardware_dialog_cancel";
        this.f22686n = "PL_sdk_playable_hardware_dialog_setting";
        this.my = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
        this.gt = null;
        this.rl = com.byazt.dyf.tt.AD_TAG_FEED;
        this.qy = true;
        this.gu = true;
        this.gr = true;
        this.zm = false;
        this.yv = "";
        this.f22689p = 10L;
        this.md = 10L;
        this.f22677h = 700;
        this.f22672d = 0L;
        this.eo = 0L;
        this.f22700zb = -1L;
        this.or = -1L;
        this.cu = -1L;
        this.qp = -1L;
        this.f22687nb = -1L;
        this.pf = -1L;
        this.bx = -1L;
        this.sv = "";
        this.aw = "";
        this.f22680ic = "";
        this.f22678hd = "";
        this.bm = 0;
        this.lr = 0;
        this.f22683l = false;
        this.lo = 0;
        this.pu = -1;
        this.lt = 0;
        this.to = 0;
        this.tk = 0;
        this.kp = null;
        this.f22669b = false;
        this.f22690q = 0;
        this.kk = 0;
        this.tx = 0;
        this.f22695v = 0;
        this.os = 0L;
        this.oz = 0L;
        this.f22692s = -2;
        this.f22698y = 0;
        this.f22676g = 0;
        this.hj = 0;
        this.xd = new JSONObject();
        this.gx = new HashMap();
        this.gy = new JSONObject();
        this.vp = "";
        this.vi = 0.0f;
        this.mq = 0.0f;
        this.iy = false;
        this.cl = false;
        this.iw = false;
        this.bj = new ArrayList();
        this.bp = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.zb.x.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    View view = (View) x.this.f22685ma.get();
                    if (view == null) {
                        return;
                    }
                    x.this.tt(view);
                } catch (Throwable th) {
                    sp.c("PlayablePlugin", "onSizeChanged error", th);
                }
            }
        };
        this.f22692s = 0;
        this.iu = cVar2;
        this.dz = ujVar;
        i.c(ujVar);
        if (!z10) {
            c(ujVar.getView());
        }
        c(context, veVar, cVar);
    }

    private void nb() {
        String str;
        if (this.gy == null || (str = this.mm) == null || str.contains("/cid_")) {
            return;
        }
        String strOptString = this.gy.optString("cid");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        String host = Uri.parse(this.mm).getHost();
        if (TextUtils.isEmpty(host)) {
            this.mm += "/cid_" + strOptString;
            return;
        }
        this.mm = this.mm.replace(host, host + "/cid_" + strOptString);
    }

    private void pf() {
        Runnable runnable;
        Runnable runnable2;
        this.f22699z.c(System.currentTimeMillis());
        Handler handler = this.f22693t;
        if (handler != null) {
            int i10 = this.f22692s;
            if (i10 == 0 && (runnable2 = this.f22694u) != null) {
                handler.post(runnable2);
            } else if ((i10 == 1 || i10 == 2) && (runnable = this.yp) != null) {
                handler.post(runnable);
            }
            this.f22699z.c(500);
        }
    }

    private void qp() {
        this.f22699z = new tt(this, this.f22677h);
        this.f22679i = new Runnable() { // from class: com.byazt.zb.x.3
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.gu) {
                    x.this.gu = false;
                    x.this.f22697x.removeCallbacks(x.this.f22673da);
                    x.this.c(2, "容器加载超时");
                }
            }
        };
        this.f22673da = new Runnable() { // from class: com.byazt.zb.x.4
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.gu) {
                    x.this.gu = false;
                    x.this.f22697x.removeCallbacks(x.this.f22679i);
                    x.this.c(3, "JSSDK加载超时");
                }
            }
        };
        this.f22694u = new Runnable() { // from class: com.byazt.zb.x.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (x.this.dz != null) {
                    x.this.dz.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.byazt.zb.x.5.1
                        @Override // android.webkit.ValueCallback
                        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            if (x.this.f22699z != null) {
                                x.this.f22699z.c(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (x.this.f22693t != null) {
                    x.this.f22693t.postDelayed(this, 500L);
                }
            }
        };
        this.yp = new Runnable() { // from class: com.byazt.zb.x.6
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                x.this.c("playable_stuck_check_ping", new JSONObject());
                if (x.this.f22693t != null) {
                    x.this.f22693t.postDelayed(this, 500L);
                }
            }
        };
        this.sl = new Runnable() { // from class: com.byazt.zb.x.7
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.oz <= 0) {
                    x.this.tt(1, "点击热区卡死");
                } else {
                    if (x.this.oz - x.this.os > x.this.f22677h) {
                        x.this.tt(1, "点击热区卡死");
                        return;
                    }
                    x.this.d();
                    x.this.os = 0L;
                    x.this.oz = 0L;
                }
            }
        };
    }

    public static /* synthetic */ int t(x xVar) {
        int i10 = xVar.bm;
        xVar.bm = i10 + 1;
        return i10;
    }

    public static /* synthetic */ int u(x xVar) {
        int i10 = xVar.lr;
        xVar.lr = i10 + 1;
        return i10;
    }

    public String cu() {
        return "function playable_callJS(){return \"Android调用了JS的callJS方法\";}";
    }

    public void d() {
        if (this.gr) {
            this.pf = System.currentTimeMillis();
            if (this.iu == c.FEED_AWEME) {
                if (this.f22682k && this.f22698y == 3) {
                    tt ttVar = this.f22699z;
                    if (ttVar != null && ttVar.tt()) {
                        pf();
                        return;
                    } else {
                        if (this.f22699z == null) {
                            this.f22699z = new tt(this, this.f22677h);
                            pf();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.f22682k && this.f22698y == 2) {
                tt ttVar2 = this.f22699z;
                if (ttVar2 != null && ttVar2.tt()) {
                    pf();
                } else if (this.f22699z == null) {
                    this.f22699z = new tt(this, this.f22677h);
                    pf();
                }
            }
        }
    }

    public void eo() {
        try {
            tt ttVar = this.f22699z;
            if (ttVar != null) {
                ttVar.c();
            }
            Handler handler = this.f22693t;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused) {
        }
    }

    public Context getContext() {
        return this.f22681j;
    }

    public void gr() {
        this.f22669b = true;
    }

    public JSONObject gt() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BaseVideoView.DEVICE_PIXEL_RATIO, this.cf);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.ij);
            jSONObject2.put("height", this.az);
            jSONObject.put(Constants.WS_MESSAGE_TYPE_SCREEN, jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.jt);
            jSONObject3.put("y", this.is);
            jSONObject3.put("width", this.f22696w);
            jSONObject3.put("height", this.nl);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.pl);
            jSONObject4.put("y", this.ej);
            jSONObject4.put("width", this.di);
            jSONObject4.put("height", this.jg);
            jSONObject.put("visible", jSONObject4);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "getViewport error", th);
        }
        return jSONObject;
    }

    public void gu() {
        this.pu = 2;
    }

    public void h() {
        this.f22697x.removeCallbacks(this.f22679i);
        this.f22697x.removeCallbacks(this.f22673da);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.cu > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.cu);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            ve("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public String m() {
        com.byazt.zb.c cVar;
        if (TextUtils.isEmpty(this.f22680ic) && (cVar = this.f22675f) != null) {
            this.f22680ic = cVar.uj().toString();
        }
        return this.f22680ic;
    }

    public void md() {
        tt ttVar;
        this.oz = System.currentTimeMillis();
        int i10 = this.f22692s;
        if ((i10 == 1 || i10 == 2) && (ttVar = this.f22699z) != null) {
            ttVar.c(System.currentTimeMillis());
        }
    }

    public JSONObject my() {
        return this.gy;
    }

    public com.byazt.zb.c nu() {
        return this.f22675f;
    }

    public void or() {
        if (this.iw) {
            return;
        }
        this.iw = true;
        this.eo = 0L;
        this.nu = true;
        zb();
        try {
            View view = this.f22685ma.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.bp);
            }
        } catch (Throwable unused) {
        }
        try {
            this.yf.tt();
        } catch (Throwable unused2) {
        }
        try {
            tt ttVar = this.f22699z;
            if (ttVar != null) {
                ttVar.c();
                this.f22699z = null;
            }
            Handler handler = this.f22693t;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.mm)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.bm);
                jSONObject.put("playable_hit_times", this.lr);
                int i10 = this.bm;
                if (i10 > 0) {
                    jSONObject.put("playable_hit_ratio", ((double) this.lr) / (((double) i10) * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                ve("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused4) {
        }
        try {
            if (!TextUtils.isEmpty(this.mm)) {
                if (this.f22700zb != -1) {
                    this.f22672d += System.currentTimeMillis() - this.f22700zb;
                    this.f22700zb = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.f22672d);
                ve("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused5) {
        }
        this.f22697x.removeCallbacks(this.f22679i);
        this.f22697x.removeCallbacks(this.f22673da);
        this.f22697x.removeCallbacksAndMessages(null);
    }

    public void p() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f22687nb > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.f22687nb);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.cu > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.cu);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            ve("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void qy() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f22687nb > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.f22687nb);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.cu > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.cu;
                this.bx = jCurrentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", jCurrentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            ve("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public JSONObject rh() {
        if (this.xd.isNull("width")) {
            View view = this.f22685ma.get();
            if (view == null) {
                return this.xd;
            }
            tt(view);
        }
        return this.xd;
    }

    public void rl() {
        com.byazt.zb.c cVar = this.f22675f;
        if (cVar != null) {
            cVar.c();
        }
    }

    public JSONObject yp() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.iu.ordinal());
            jSONObject.put("safe_area_top_height", this.vi);
            jSONObject.put("safe_area_bottom_height", this.mq);
            jSONObject.put("playable_enter_from", this.to);
            jSONObject.put("playable_retry_count", this.lt);
            jSONObject.put("playable_card_session", this.sv);
            jSONObject.put("playable_video_session", this.aw);
            jSONObject.put("playable_network_type", m());
            jSONObject.put("aweme_id", this.f22678hd);
            return jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "playableInfo error", th);
            return new JSONObject();
        }
    }

    public void yv() {
        if (this.f22675f != null) {
            c cVar = c.FEED_AWEME;
        }
    }

    public Intent z() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File fileC = n.c();
        if (fileC == null) {
            return null;
        }
        intent.putExtra("output", FileProvider.getUriForFile(this.f22681j, this.f22681j.getPackageName() + ".playable.fileProvider", fileC));
        return intent;
    }

    public void zb() {
        this.f22676g = 0;
        this.hj = 0;
        this.cf = 0.0f;
        this.ij = 0;
        this.az = 0;
        this.is = 0;
        this.jt = 0;
        this.f22696w = 0;
        this.nl = 0;
        this.ej = 0;
        this.pl = 0;
        this.di = 0;
        this.jg = 0;
    }

    public void zm() {
        if (this.f22675f != null) {
            c cVar = c.FEED_AWEME;
        }
    }

    private boolean da(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    public String a() {
        return this.hg;
    }

    public JSONObject i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.f22688nc);
            return jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "getPlayableClickStatus error", th);
            return new JSONObject();
        }
    }

    public String n() {
        return this.nt;
    }

    public JSONObject sl() {
        try {
            boolean zC = n.c(this.f22681j, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zC);
            return jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public boolean sp() {
        return this.sd;
    }

    public JSONObject t() {
        try {
            boolean zC = n.c(this.f22681j, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", zC);
            return jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public JSONObject u() {
        boolean zC;
        boolean zC2;
        try {
            boolean z10 = true;
            if (Build.VERSION.SDK_INT >= 33) {
                zC = n.c(this.f22681j, "android.permission.READ_MEDIA_IMAGES");
                zC2 = true;
            } else {
                zC = n.c(this.f22681j, g.f74785i);
                zC2 = n.c(this.f22681j, g.f74786j);
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", zC);
            jSONObject.put("isHasWrite", zC2);
            if (!zC || !zC2) {
                z10 = false;
            }
            jSONObject.put("result", z10);
            return jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public String uj() {
        return this.hq;
    }

    public String ve() {
        return this.ny;
    }

    public boolean x() {
        return this.f22682k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.f22676g == view.getWidth() && this.hj == view.getHeight()) {
                return;
            }
            this.f22676g = view.getWidth();
            this.hj = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.f22676g);
            jSONObject.put("height", this.hj);
            c("resize", jSONObject);
            this.xd = jSONObject;
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "resetViewDataJsonByView error", th);
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.kp = jSONObject.optString("section");
        }
    }

    public Set<String> da() {
        Set<String> setC = this.yf.c();
        Set<String> set = this.my;
        if (set == null || set.size() <= 0) {
            return setC;
        }
        HashSet hashSet = new HashSet();
        for (String str : setC) {
            if (!this.my.contains(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public x n(JSONObject jSONObject) {
        this.gy = jSONObject;
        return this;
    }

    public void sp(JSONObject jSONObject) {
        this.f22691r = jSONObject;
        this.tk++;
        eo();
        this.f22697x.removeCallbacks(this.sl);
        if (this.gr) {
            this.pf = System.currentTimeMillis();
            this.os = System.currentTimeMillis();
            this.oz = 0L;
            int i10 = this.f22692s;
            if (i10 == 0) {
                com.byazt.nl.uj ujVar = this.dz;
                if (ujVar != null) {
                    ujVar.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.byazt.zb.x.8
                        @Override // android.webkit.ValueCallback
                        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            x.this.oz = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i10 == 1 || i10 == 2) {
                c("playable_stuck_check_ping", new JSONObject());
            }
            this.f22697x.postDelayed(this.sl, this.f22677h);
        }
    }

    public x uj(String str) {
        this.hg = str;
        return this;
    }

    public x ve(String str) {
        this.nt = str;
        return this;
    }

    public void x(JSONObject jSONObject) {
        tt(2, jSONObject != null ? jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG, "素材直接调用端上异常兜底蒙层") : "素材直接调用端上异常兜底蒙层");
    }

    public void a(String str) {
        int i10;
        int i11;
        this.f22698y = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.cu = jCurrentTimeMillis;
            long j10 = this.or;
            jSONObject.put("playable_page_show_duration", j10 != -1 ? jCurrentTimeMillis - j10 : 0L);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "reportUrlLoadStart error", th);
        }
        ve("PL_sdk_html_load_start", jSONObject);
        if (this.qy && ((i10 = this.f22692s) == 0 || i10 == 1 || i10 == 2)) {
            this.f22697x.postDelayed(this.f22679i, this.f22689p * 1000);
            if (da(this.mm) || (i11 = this.f22692s) == 1 || i11 == 2) {
                this.f22697x.postDelayed(this.f22673da, this.md * 1000);
            }
            this.qy = false;
        }
        if (this.nu) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (n.c(this.f22681j, n.f22658t)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (n.tt(this.f22681j, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (n.c(this.f22681j, n.sl)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (n.c(this.f22681j, n.f22655da)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (n.c(this.f22681j, n.f22656i)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (n.c(this.f22681j, n.f22659x)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (n.tt(this.f22681j, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (n.c(this.f22681j, n.sp)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (n.c(this.f22681j)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                ve("PL_sdk_hardware_detect", jSONObject2);
                this.nu = false;
            } catch (Throwable th2) {
                sp.c("PlayablePlugin", "Hardware detect error", th2);
            }
        }
    }

    public x n(String str) {
        int iIndexOf;
        String strDecode;
        this.vp = str;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                String host = uri.getHost();
                if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                    if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                        if (this.f22692s == -1) {
                            tt(2);
                        } else {
                            tt(1);
                        }
                    }
                } else {
                    tt(0);
                    String queryParameter = uri.getQueryParameter("url");
                    if (!TextUtils.isEmpty(queryParameter) && (strDecode = Uri.decode(queryParameter)) != null) {
                        int iIndexOf2 = strDecode.indexOf("?");
                        str = iIndexOf2 != -1 ? strDecode.substring(0, iIndexOf2) : strDecode;
                    }
                }
            } else {
                tt(0);
                if (str != null && (iIndexOf = str.indexOf("?")) != -1) {
                    str = str.substring(0, iIndexOf);
                }
            }
        } catch (Throwable unused) {
        }
        this.mm = str;
        return this;
    }

    public void uj(JSONObject jSONObject) {
        if (this.f22675f != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public x ve(boolean z10) {
        this.f22688nc = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.f22688nc);
            c("change_playable_click", jSONObject);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "setPlayableClick error", th);
        }
        return this;
    }

    private void c(Context context, ve veVar, com.byazt.zb.c cVar) {
        this.gt = UUID.randomUUID().toString();
        this.f22681j = context;
        this.f22675f = cVar;
        this.ir = veVar;
        da.c(cVar);
        this.yf = new a(this);
        qp();
    }

    public void x(String str) {
        this.f22697x.post(new Runnable() { // from class: com.byazt.zb.x.10
            @Override // java.lang.Runnable
            public void run() {
                x.t(x.this);
            }
        });
    }

    public JSONObject i(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        if (iOptInt == 1) {
            return sl();
        }
        if (iOptInt != 2) {
            return iOptInt != 3 ? jSONObject2 : u();
        }
        return t();
    }

    public void sl(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean zOptBoolean = jSONObject.optBoolean("success", true);
            if (zOptBoolean) {
                this.f22698y = 3;
                d();
            } else {
                this.f22698y = -2;
            }
            if (zOptBoolean || !this.gu) {
                return;
            }
            this.gu = false;
            this.f22697x.removeCallbacks(this.f22679i);
            this.f22697x.removeCallbacks(this.f22673da);
            c(4, "素材渲染失败");
        }
    }

    public x uj(boolean z10) {
        this.gr = z10;
        return this;
    }

    private String uj(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.yo) && !TextUtils.isEmpty(this.vp)) {
            Uri uri = Uri.parse(this.vp);
            String host = uri.getHost();
            if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                queryParameter = uri.getQueryParameter("surl");
                queryParameter2 = uri.getQueryParameter("playable_hash");
            } else {
                queryParameter = "";
                queryParameter2 = "";
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(uri.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                builderAppendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.yo = builderAppendQueryParameter.toString();
        }
        return this.yo;
    }

    public JSONObject da(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int iOptInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (iOptInt != 1) {
                if (iOptInt != 2) {
                    if (iOptInt == 3) {
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject2.put("result", n.c(this.f22681j));
                        } else {
                            jSONObject2.put("result", false);
                        }
                    }
                    return jSONObject2;
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    jSONObject2.put("result", n.tt(this.f22681j, "android.permission.CAMERA"));
                } else {
                    jSONObject2.put("result", false);
                }
            } else if (Build.VERSION.SDK_INT >= 23) {
                jSONObject2.put("result", n.tt(this.f22681j, "android.permission.RECORD_AUDIO"));
            } else {
                jSONObject2.put("result", false);
            }
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public void ve(JSONObject jSONObject) {
        com.byazt.zb.c cVar = this.f22675f;
        if (cVar == null || cVar.c(jSONObject) || jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        int iOptInt = jSONObject.optInt("resource_type", -1);
        String strOptString2 = jSONObject.optString("resource_name", "playable_media");
        if (iOptInt == 1) {
            tt(strOptString2, strOptString);
        } else if (iOptInt == 2) {
            ve(strOptString2, strOptString);
        }
    }

    public void c(View view) {
        if (view == null) {
            return;
        }
        try {
            this.f22685ma = new WeakReference<>(view);
            tt(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.bp);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "setViewForScreenSize error", th);
        }
    }

    public void i(String str) {
        this.f22697x.post(new Runnable() { // from class: com.byazt.zb.x.2
            @Override // java.lang.Runnable
            public void run() {
                x.u(x.this);
            }
        });
    }

    public x tt(String str) {
        this.ny = str;
        return this;
    }

    public JSONObject tt() {
        return this.kz;
    }

    public x tt(long j10) {
        if (j10 <= 0) {
            this.md = 10L;
        } else {
            this.md = j10;
        }
        return this;
    }

    public x c(String str, String str2) {
        this.gx.put(str, str2);
        return this;
    }

    public void sp(String str) {
        com.byazt.nl.uj ujVar;
        this.f22698y = 2;
        this.pn = str;
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.qp = jCurrentTimeMillis;
            long j10 = this.cu;
            jSONObject.put("playable_html_load_start_duration", j10 != -1 ? jCurrentTimeMillis - j10 : 0L);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "reportUrlLoadFinish error", th);
        }
        ve("PL_sdk_html_load_finish", jSONObject);
        this.f22697x.removeCallbacks(this.f22679i);
        try {
            if (this.f22692s == 0) {
                if (this.f22684m && (ujVar = this.dz) != null) {
                    this.f22684m = false;
                    ujVar.evaluateJavascript(cu(), new ValueCallback<String>() { // from class: com.byazt.zb.x.9
                        @Override // android.webkit.ValueCallback
                        public /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                        }
                    });
                }
                d();
            }
        } catch (Throwable th2) {
            sp.c("PlayablePlugin", "crashMonitor error", th2);
        }
    }

    public x tt(boolean z10) {
        if (this.f22682k == z10) {
            return this;
        }
        this.f22682k = z10;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!this.f22682k) {
                jSONObject.put("playable_background_show_type", this.kk);
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        ve(this.f22682k ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
        if (this.or == -1 && this.f22682k) {
            this.or = System.currentTimeMillis();
            ve("PL_sdk_page_show", (JSONObject) null);
        }
        if (this.or != -1 && !this.f22682k && !this.iy) {
            this.iy = true;
        }
        if (this.f22682k) {
            this.f22700zb = System.currentTimeMillis();
        } else if (this.f22700zb != -1) {
            this.f22672d += System.currentTimeMillis() - this.f22700zb;
            this.f22700zb = -1L;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("viewStatus", this.f22682k);
            c("viewableChange", jSONObject2);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "setViewable error", th);
        }
        if (this.f22682k) {
            d();
        } else {
            eo();
        }
        return this;
    }

    public Map<String, String> c() {
        return this.gx;
    }

    public void ve(String str, String str2) throws Throwable {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.f22681j, "视频保存失败", 0).show();
            return;
        }
        File fileC = n.c(str, str2);
        if (fileC != null && fileC.exists()) {
            Uri uriFromFile = Uri.fromFile(fileC);
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uriFromFile);
            this.f22681j.sendBroadcast(intent);
            Toast.makeText(this.f22681j, "视频已保存到相册", 0).show();
            return;
        }
        Toast.makeText(this.f22681j, "视频保存失败", 0).show();
    }

    public x c(String str) {
        this.hq = str;
        return this;
    }

    public x c(boolean z10) {
        this.sd = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.sd);
            c("volumeChange", jSONObject);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "setIsMute error", th);
        }
        return this;
    }

    public JSONObject uj(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        JSONObject jSONObjectC = this.yf.c(str, jSONObject);
        if (sp.c()) {
            System.currentTimeMillis();
        }
        return jSONObjectC;
    }

    private String n(String str, String str2) {
        String str3 = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.mm = str3;
        return str3;
    }

    public x c(long j10) {
        if (j10 <= 0) {
            this.f22689p = 10L;
        } else {
            this.f22689p = j10;
        }
        return this;
    }

    private void n(String str, JSONObject jSONObject) {
        try {
            int i10 = this.f22692s;
            if (i10 == 0) {
                if (this.iu != c.LAND_PAGE && !da(this.mm)) {
                    nb();
                }
                jSONObject.put("playable_url", this.mm);
            } else if (i10 == 3 || i10 == 4) {
                jSONObject.put("playable_url", n(this.pe, this.nx));
            } else if (i10 == 1 || i10 == 2) {
                jSONObject.put("playable_url", uj(this.gk, this.f22674e));
            }
            jSONObject.put("playable_render_type", this.f22692s);
            if (this.f22675f != null && this.f22692s == 0 && this.iu == c.LAND_PAGE) {
                da(this.mm);
            }
        } catch (JSONException unused) {
        }
    }

    public void c(JSONObject jSONObject) {
        if (this.f22675f != null) {
            z();
        }
    }

    private void ve(int i10, String str) {
        com.byazt.zb.c cVar = this.f22675f;
        if (cVar != null) {
            cVar.c(i10, str);
        }
    }

    public Intent c(int i10) {
        Intent intent = new Intent("android.intent.action.PICK");
        if (i10 == 0) {
            intent.setType("*/*");
        } else if (i10 == 1) {
            intent.setType("image/*");
        } else if (i10 == 2) {
            intent.setType("video/mp4");
        } else {
            intent.setType("*/*");
        }
        return intent;
    }

    public void ve(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.f22683l && this.lr > 0) {
                this.f22683l = true;
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.f22682k);
            jSONObject.put("playable_session_id", this.gt);
            int i10 = this.f22692s;
            if (i10 == 0) {
                if (this.iu != c.LAND_PAGE && !da(this.mm)) {
                    nb();
                }
                jSONObject.put("playable_url", this.mm);
            } else if (i10 == 3 || i10 == 4) {
                jSONObject.put("playable_url", n(this.pe, this.nx));
            } else if (i10 == 1 || i10 == 2) {
                jSONObject.put("playable_url", uj(this.gk, this.f22674e));
            }
            jSONObject.put("playable_full_url", this.vp);
            jSONObject.put("playable_replay_count", this.lo);
            jSONObject.put("playable_is_prerender", this.f22671ca);
            jSONObject.put("playable_is_preload", this.f22683l);
            jSONObject.put("playable_render_type", this.f22692s);
            jSONObject.put("playable_scenes_type", this.iu.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.gk) ? "" : this.gk);
            if (!TextUtils.isEmpty(this.f22674e)) {
                str2 = this.f22674e;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.5.1");
            jSONObject.put("playable_minigamelite_id", this.pe);
            jSONObject.put("playable_minigamelite_schema", this.nx);
            jSONObject.put("playable_is_debug", this.cl);
            jSONObject.put("playable_retry_count", this.lt);
            jSONObject.put("playable_enter_from", this.to);
            jSONObject.put("playable_sequence", this.tk);
            jSONObject.put("playable_current_section", this.kp);
            jSONObject.put("is_playable_finish", this.f22669b);
            jSONObject.put("playable_card_session", this.sv);
            jSONObject.put("playable_video_session", this.aw);
            jSONObject.put("playable_network_type", m());
            jSONObject.put("playable_lynx_version", this.yv);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
            jSONObject2.put(TagGameListActivity_.TAG_EXTRA, this.rl);
            jSONObject2.put("nt", 4);
            jSONObject2.put(PointParamKey.CATEGORY, BaseConstants.CATEGORY_UMENG);
            jSONObject2.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
            jSONObject2.put("refer", "playable");
            jSONObject2.put(HmInputMappingContent.FIELD_VALUE, this.gy.opt("cid"));
            jSONObject2.put("log_extra", this.gy.opt("log_extra"));
            int i11 = this.f22692s;
            if (i11 != -1 && i11 != -2) {
                if (this.f22675f != null) {
                    List<JSONObject> list = this.bj;
                    if (list != null && !list.isEmpty()) {
                        Iterator<JSONObject> it2 = this.bj.iterator();
                        while (it2.hasNext()) {
                            JSONObject jSONObjectOptJSONObject = it2.next().optJSONObject(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                            if (jSONObjectOptJSONObject != null) {
                                jSONObjectOptJSONObject.put("playable_render_type", this.f22692s);
                                jSONObjectOptJSONObject.put("playable_url", this.mm);
                            }
                        }
                        this.bj.clear();
                    }
                    if (this.f22692s == 0 && this.iu == c.LAND_PAGE) {
                        da(this.mm);
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.bj == null) {
                this.bj = new ArrayList();
            }
            this.bj.add(jSONObject2);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "reportEvent error", th);
        }
    }

    public void c(String str, JSONObject jSONObject) {
        ve veVar = this.ir;
        if (veVar != null) {
            veVar.c(str, jSONObject);
        }
    }

    public void c(int i10, String str) {
        eo();
        ve(i10, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "reportRenderFatal error", th);
        }
        ve("PL_sdk_global_faild", jSONObject);
    }

    public void tt(JSONObject jSONObject) {
        int iOptInt = 0;
        if (jSONObject != null) {
            iOptInt = jSONObject.optInt("resource_type", 0);
            n.ve = jSONObject.optInt("video_min_duration", 1);
            n.uj = jSONObject.optInt("video_max_duration", 20);
            n.f22657n = Math.min(jSONObject.optLong("video_max_size", 15360L), 15360L);
        }
        if (this.f22675f != null) {
            c(iOptInt);
        }
    }

    public void c(int i10, String str, String str2) {
        this.f22698y = -1;
        this.pn = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
        } catch (Throwable th) {
            sp.c("PlayablePlugin", "onWebReceivedError error", th);
        }
        ve("PL_sdk_html_load_error", jSONObject);
        if (this.gu) {
            this.gu = false;
            this.f22697x.removeCallbacks(this.f22679i);
            this.f22697x.removeCallbacks(this.f22673da);
            c(1, "容器加载失败");
        }
    }

    public void tt(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.f22681j, "照片保存失败", 0).show();
            return;
        }
        Bitmap bitmapTt = n.tt(str2);
        if (bitmapTt != null) {
            MediaStore.Images.Media.insertImage(this.f22681j.getContentResolver(), bitmapTt, str, "");
            Toast.makeText(this.f22681j, "照片已保存到相册", 0).show();
        } else {
            Toast.makeText(this.f22681j, "照片保存失败", 0).show();
        }
    }

    public x tt(int i10) {
        this.f22692s = i10;
        return this;
    }

    public void c(boolean z10, String str, int i10) {
        if (z10) {
            this.f22698y = -1;
            this.pn = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i10);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
            } catch (Throwable th) {
                sp.c("PlayablePlugin", "onWebReceivedHttpError error", th);
            }
            ve("PL_sdk_html_load_error", jSONObject);
            if (this.gu) {
                this.gu = false;
                this.f22697x.removeCallbacks(this.f22679i);
                this.f22697x.removeCallbacks(this.f22673da);
                c(1, "容器加载失败");
            }
        }
    }

    public void tt(int i10, String str) {
        this.pu = i10;
        if (this.f22691r == null) {
            this.f22691r = new JSONObject();
        }
        try {
            this.f22691r.put("playable_stuck_type", i10);
            this.f22691r.put("playable_stuck_reason", str);
            if (this.pf > 0) {
                this.f22691r.put("playable_stuck_duration", System.currentTimeMillis() - this.pf);
            } else {
                this.f22691r.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        ve("PL_sdk_page_stuck", this.f22691r);
        eo();
        if (this.f22675f == null || i10 != 2) {
            return;
        }
        this.f22691r = new JSONObject();
    }

    public static x c(Context context, com.byazt.nl.uj ujVar, ve veVar, com.byazt.zb.c cVar, Set<String> set, c cVar2, boolean z10) {
        if (ujVar == null || veVar == null || cVar == null) {
            return null;
        }
        return new x(context, ujVar, veVar, cVar, set, cVar2, z10);
    }

    public void tt(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        n(str, jSONObject);
    }

    private x(Context context, com.byazt.nl.uj ujVar, ve veVar, com.byazt.zb.c cVar, Set<String> set, c cVar2, boolean z10) {
        this(context, ujVar, veVar, cVar, cVar2, z10);
        this.my = set;
    }
}
