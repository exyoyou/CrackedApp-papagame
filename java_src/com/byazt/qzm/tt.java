package com.byazt.qzm;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.fk.sp;
import com.byazt.jzl.uj;
import com.byazt.nr.m;
import com.byazt.xj.ve;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 694, 13})
public class tt extends ve<NativeVideoView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f19391c;
    public boolean cf;
    public c ij;
    public String kz;
    public ic mq;
    public uj vi;
    public String vp;
    public String yo;

    public tt(Context context) {
        super(context);
        this.cf = false;
    }

    private void r() {
        if (!this.f19391c) {
            this.mq = new ic();
            this.vi = new uj();
            return;
        }
        if (!TextUtils.isEmpty(this.kz)) {
            try {
                this.mq = com.byazt.omf.c.c(new JSONObject(this.kz));
                this.kz = null;
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        ic icVar = this.mq;
        if (icVar == null) {
            this.mq = new ic();
            this.vi = new uj();
            return;
        }
        uj ujVarZ = xd.z(icVar);
        this.vi = ujVarZ;
        if (ujVarZ == null) {
            this.vi = new uj();
        }
    }

    public void b() {
        c((com.byazt.ua.c) null);
    }

    public void kk() {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((NativeVideoView) t10).x();
            if (this.f19391c) {
                ((NativeVideoView) this.f21881n).c(true, false);
            } else {
                ((NativeVideoView) this.f21881n).c(this.vp);
            }
        }
    }

    public boolean os() {
        sp spVarNu;
        T t10 = this.f21881n;
        if (t10 == 0 || ((NativeVideoView) t10).getNativeVideoController() == null || (spVarNu = ((NativeVideoView) this.f21881n).getNativeVideoController().nu()) == null) {
            return false;
        }
        return spVarNu.isCompleted();
    }

    public void oz() {
        if (os()) {
            T t10 = this.f21881n;
            if (t10 != 0) {
                ((NativeVideoView) t10).my();
                return;
            }
            return;
        }
        if (v()) {
            kk();
        } else {
            q();
        }
    }

    public void q() {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((NativeVideoView) t10).S_();
        }
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public NativeVideoView c() {
        NativeVideoView nativeVideoView = new NativeVideoView(this.tt);
        nativeVideoView.c(this);
        return nativeVideoView;
    }

    public void tx() {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((NativeVideoView) t10).n();
            ((NativeVideoView) this.f21881n).c(this.vp);
        }
    }

    public boolean v() {
        sp spVarNu;
        T t10 = this.f21881n;
        if (t10 == 0 || ((NativeVideoView) t10).getNativeVideoController() == null || (spVarNu = ((NativeVideoView) this.f21881n).getNativeVideoController().nu()) == null) {
            return false;
        }
        return spVarNu.isPlaying();
    }

    public boolean x() {
        T t10 = this.f21881n;
        return (t10 == 0 || ((NativeVideoView) t10).getNativeVideoController() == null) ? this.cf : ((NativeVideoView) this.f21881n).getNativeVideoController().my();
    }

    public void n(boolean z10) {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((NativeVideoView) t10).setNeedNativeVideoPlayBtnVisible(z10);
        }
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        r();
        this.vi.setVideo_url(this.yo);
        this.vi.setResolution(this.f21889u + "x" + this.yp);
        this.vi.setCover_url(this.vp);
        this.mq.c(this.vi);
        ((NativeVideoView) this.f21881n).setMaterialMeta(this.mq);
        ((NativeVideoView) this.f21881n).setIsAutoPlay(true);
        ((NativeVideoView) this.f21881n).setIsQuiet(this.cf);
        ((NativeVideoView) this.f21881n).setVisibility(0);
        ((NativeVideoView) this.f21881n).setEnableAutoCheck(false);
        ((NativeVideoView) this.f21881n).c(this.tt, 25, this.vp);
        ((NativeVideoView) this.f21881n).c(0L, true, false);
        ((NativeVideoView) this.f21881n).c(this.vp);
        com.byazt.dh.ve nativeVideoController = ((NativeVideoView) this.f21881n).getNativeVideoController();
        if (nativeVideoController != null) {
            c cVar = new c();
            this.ij = cVar;
            nativeVideoController.c(cVar);
        }
    }

    public void uj(boolean z10) {
        this.cf = z10;
        T t10 = this.f21881n;
        if (t10 == 0 || ((NativeVideoView) t10).getNativeVideoController() == null) {
            return;
        }
        ((NativeVideoView) this.f21881n).getNativeVideoController().tt(z10);
    }

    public void c(com.byazt.ua.c cVar) {
        ic icVar;
        if (da() != null && (icVar = this.mq) != null) {
            if (icVar.id() == 0) {
                int iOptInt = da().optInt("image_mode");
                this.mq.ic(iOptInt);
                this.mq.c(new bx(da()));
                if (iOptInt == 166) {
                    this.mq.q(-2);
                    ((NativeVideoView) this.f21881n).setPlayerType(-2);
                }
            }
        } else {
            ((NativeVideoView) this.f21881n).setPlayerType(0);
        }
        if (cVar != null) {
            com.byazt.dh.ve nativeVideoController = ((NativeVideoView) this.f21881n).getNativeVideoController();
            nativeVideoController.uj(cVar.uj);
            nativeVideoController.tt(cVar.f20529x);
            if (cVar.f20527c) {
                nativeVideoController.tt(0L);
            } else {
                nativeVideoController.tt(cVar.sp);
            }
        }
        ((NativeVideoView) this.f21881n).uj();
    }

    @com.byazt.zqa.c(c = {0, 1, 694, 194})
    private class c implements com.byazt.dh.ve.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.byazt.dh.ve.c f19392c;

        private c() {
        }

        @Override // com.byazt.dh.ve.c
        public void c(long j10, int i10) {
            if (tt.this.f19391c) {
                if (tt.this.f21881n != null) {
                    ((NativeVideoView) tt.this.f21881n).setComplete(true);
                }
                if (tt.this.f21881n != null) {
                    ((NativeVideoView) tt.this.f21881n).c(true, true);
                }
            }
            com.byazt.dh.ve.c cVar = this.f19392c;
            if (cVar != null) {
                cVar.c(j10, i10);
            }
        }

        @Override // com.byazt.dh.ve.c
        public void tt(long j10, int i10) {
            com.byazt.dh.ve.c cVar = this.f19392c;
            if (cVar != null) {
                cVar.tt(j10, i10);
            }
        }

        @Override // com.byazt.dh.ve.c
        public void c() {
            com.byazt.dh.ve.c cVar = this.f19392c;
            if (cVar != null) {
                cVar.c();
            }
        }

        @Override // com.byazt.dh.ve.c
        public void c(long j10, long j11) {
            com.byazt.dh.ve.c cVar = this.f19392c;
            if (cVar != null) {
                cVar.c(j10, j11);
            }
        }
    }

    @Override // com.byazt.xj.ve
    public void c(JSONObject jSONObject) {
        super.c(jSONObject);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "coverSrc":
                this.vp = str2;
                break;
            case "src":
                this.yo = str2;
                break;
            case "isLp":
                try {
                    boolean zBooleanValue = Boolean.valueOf(str2).booleanValue();
                    this.f19391c = zBooleanValue;
                    T t10 = this.f21881n;
                    if (t10 != 0) {
                        ((NativeVideoView) t10).setLp(zBooleanValue);
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
                break;
            case "mate":
                this.kz = str2;
                break;
        }
    }

    public void c(Map<String, Object> map) {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((NativeVideoView) t10).setExtraMap(map);
        }
    }
}
