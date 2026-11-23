package com.byazt.sa;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.cd.x;
import com.byazt.nw.Swiper;
import com.byazt.pm.i;
import com.byazt.sz.a;
import com.byazt.sz.z;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.widgets.BaseVideoView;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 795, 13})
public class tt extends com.byazt.xj.c<Swiper> implements com.byazt.nw.c {
    public String az;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    public int f19562ca;
    public float cf;
    public int cl;
    public int di;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19563e;
    public boolean ej;
    public boolean gk;
    public float hg;
    public String ij;
    public float is;
    public int iw;
    public float iy;
    public String jg;
    public float jt;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f19564k;
    public boolean kz;
    public float mq;

    /* JADX INFO: renamed from: nc, reason: collision with root package name */
    public float f19565nc;
    public float nl;
    public boolean nx;
    public boolean pe;
    public int pl;
    public JSONArray sd;
    public float vi;
    public boolean vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f19566w;
    public int yo;

    public tt(Context context) {
        super(context);
        this.yo = 0;
        this.vp = true;
        this.kz = true;
        this.vi = 500.0f;
        this.mq = -1.0f;
        this.cf = 2000.0f;
        this.ij = "slide";
        this.az = "dot";
        this.is = 8.0f;
        this.jt = 8.0f;
        this.f19566w = 50.0f;
        this.nl = 90.0f;
        this.ej = false;
        this.pl = Color.parseColor("#666666");
        this.di = Color.parseColor("#ffffff");
        this.jg = "row";
        this.hg = 1.0f;
        this.f19564k = 0.0f;
        this.iy = 0.0f;
        this.f19565nc = 0.0f;
        this.f19562ca = 0;
        this.cl = 0;
        this.gk = true;
        this.f19563e = false;
        this.pe = true;
        float fC = x.c(this.tt, 8.0f);
        this.is = fC;
        this.jt = fC;
    }

    private void a(int i10) {
        if (this.pn == null) {
            return;
        }
        if (this.iw == 0 && i10 == kk() - 1) {
            this.pn.c("SwiperView://reloop", 1);
        }
        if (this.iw == kk() - 1 && i10 == 0) {
            this.pn.c("SwiperView://reloop", 0);
        }
    }

    private void b() {
        List<com.byazt.xj.ve<View>> list = ((com.byazt.xj.c) this).f21852c;
        if (list == null || list.isEmpty()) {
            return;
        }
        com.byazt.xj.ve<View> veVar = ((com.byazt.xj.c) this).f21852c.get(0);
        if (this.sd == null) {
            return;
        }
        for (int i10 = 0; i10 < this.sd.length(); i10++) {
            z zVar = new z(this.tt);
            c(zVar);
            zVar.c(this.hq);
            try {
                JSONObject jSONObjectOptJSONObject = this.sd.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    if (jSONObjectOptJSONObject.has("$chunk")) {
                        this.uj.put("$item", jSONObjectOptJSONObject.optJSONArray("$chunk"));
                    } else {
                        this.uj.put("$item", jSONObjectOptJSONObject);
                    }
                    ((Swiper) this.f21881n).c(zVar.c(veVar.md(), this.uj, (JSONObject) null));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private int kk() {
        if (this.f19562ca == 1) {
            List<com.byazt.xj.ve<View>> list = ((com.byazt.xj.c) this).f21852c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
        JSONArray jSONArray = this.sd;
        if (jSONArray != null) {
            return jSONArray.length();
        }
        return 0;
    }

    private void q() {
        for (int i10 = 0; i10 < ((com.byazt.xj.c) this).f21852c.size(); i10++) {
            com.byazt.xj.ve<View> veVar = ((com.byazt.xj.c) this).f21852c.get(i10);
            if (veVar != null) {
                z zVar = new z(this.tt);
                c(zVar);
                zVar.c(this.hq);
                ((Swiper) this.f21881n).c(zVar.c(veVar.md(), this.uj, (JSONObject) null));
            }
        }
    }

    private void sp(int i10) {
        i iVar = this.pn;
        if (iVar == null) {
            return;
        }
        iVar.c("SwiperView://slide", Integer.valueOf(this.iw), Integer.valueOf(i10), Integer.valueOf(!this.nx ? 1 : 0));
    }

    @Override // com.byazt.xj.ve
    public View c() {
        Swiper swiper = new Swiper(this.tt);
        this.f21881n = swiper;
        swiper.c((uj) this);
        return this.f21881n;
    }

    @Override // com.byazt.xj.c, com.byazt.xj.ve
    public void tt() {
        super.tt();
        ((Swiper) this.f21881n).ve((int) this.vi).n(this.f19563e).c(this.az).c(this.is).tt(this.jt).ve(this.f19566w).uj(this.nl).tt(this.jg).c(this.yo).tt().uj(this.vp).c(this.kz).tt((int) this.vi).uj((int) this.cf).n((int) this.mq).tt(this.gk).ve(this.ej).sp(this.pl).a(this.di).i((int) this.iy).da((int) this.f19565nc).x((int) this.f19564k).n(this.hg).ve(this.ij).yp(this.cl);
        ((Swiper) this.f21881n).setOnPageChangeListener(this);
        if (this.f19562ca == 1) {
            q();
        } else {
            b();
        }
        ((Swiper) this.f21881n).ve();
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar) {
        if (veVar == null) {
            return;
        }
        ((com.byazt.xj.c) this).f21852c.add(veVar);
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar, ViewGroup.LayoutParams layoutParams) {
        if (veVar == null) {
            return;
        }
        ((com.byazt.xj.c) this).f21852c.add(veVar);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case -1598524863:
                if (str.equals("startDelay")) {
                    b10 = 0;
                }
                break;
            case -1593646704:
                if (str.equals("startIndex")) {
                    b10 = 1;
                }
                break;
            case -1575751020:
                if (str.equals("indicatorColor")) {
                    b10 = 2;
                }
                break;
            case -1560813342:
                if (str.equals("indicatorStyle")) {
                    b10 = 3;
                }
                break;
            case -1557466889:
                if (str.equals("indicatorWidth")) {
                    b10 = 4;
                }
                break;
            case -1469828074:
                if (str.equals("indicatorHeight")) {
                    b10 = 5;
                }
                break;
            case -1453344127:
                if (str.equals("nextMargin")) {
                    b10 = 6;
                }
                break;
            case -1367379379:
                if (str.equals("driveMode")) {
                    b10 = 7;
                }
                break;
            case -1306084975:
                if (str.equals("effect")) {
                    b10 = 8;
                }
                break;
            case -962590849:
                if (str.equals(HmInputMappingContent.FIELD_DIRECTION)) {
                    b10 = 9;
                }
                break;
            case -855614293:
                if (str.equals("disableOnInteraction")) {
                    b10 = 10;
                }
                break;
            case -711999985:
                if (str.equals("indicator")) {
                    b10 = 11;
                }
                break;
            case -597162967:
                if (str.equals("indicatorX")) {
                    b10 = 12;
                }
                break;
            case -597162966:
                if (str.equals("indicatorY")) {
                    b10 = 13;
                }
                break;
            case -202057851:
                if (str.equals("previousMargin")) {
                    b10 = 14;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    b10 = 15;
                }
                break;
            case 95467907:
                if (str.equals("delay")) {
                    b10 = 16;
                }
                break;
            case 109641799:
                if (str.equals(BaseVideoView.GPS_SPEED)) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 195414576:
                if (str.equals("indicatorDirection")) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 497874535:
                if (str.equals("allowTouchMove")) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 857882560:
                if (str.equals("pageCount")) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case 1097821469:
                if (str.equals("pageMargin")) {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
            case 1196931001:
                if (str.equals("indicatorSelectedColor")) {
                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                }
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    b10 = BinaryMemcacheOpcodes.QUITQ;
                }
                break;
            case 1788817256:
                if (str.equals("dataList")) {
                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                }
                break;
        }
        switch (b10) {
            case 0:
                this.mq = com.byazt.cd.ve.c(str2, -1.0f);
                break;
            case 1:
                this.cl = com.byazt.cd.ve.c(str2, 0);
                break;
            case 2:
                this.pl = com.byazt.cd.c.c(str2, this.pl);
                break;
            case 3:
                this.az = str2;
                break;
            case 4:
                this.is = x.c(this.tt, com.byazt.cd.ve.c(str2, 8.0f));
                break;
            case 5:
                this.jt = x.c(this.tt, com.byazt.cd.ve.c(str2, 8.0f));
                break;
            case 6:
                this.f19565nc = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 7:
                this.f19562ca = com.byazt.cd.ve.c(str2, 0);
                break;
            case 8:
                this.ij = str2;
                break;
            case 9:
                if (TextUtils.equals(str2, "vertical")) {
                    this.yo = 1;
                } else {
                    this.yo = 0;
                }
                break;
            case 10:
                this.f19563e = com.byazt.cd.ve.c(str2, false);
                break;
            case 11:
                this.ej = com.byazt.cd.ve.c(str2, false);
                break;
            case 12:
                this.f19566w = com.byazt.cd.ve.c(str2, 50.0f);
                break;
            case 13:
                this.nl = com.byazt.cd.ve.c(str2, 90.0f);
                break;
            case 14:
                this.iy = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 15:
                this.vp = com.byazt.cd.ve.c(str2, true);
                break;
            case 16:
                this.cf = com.byazt.cd.ve.c(str2, 2000.0f);
                break;
            case 17:
                this.vi = com.byazt.cd.ve.c(str2, 500.0f);
                break;
            case 18:
                this.jg = str2;
                break;
            case 19:
                this.gk = com.byazt.cd.ve.c(str2, true);
                break;
            case 20:
                this.hg = com.byazt.cd.ve.c(str2, 1.0f);
                break;
            case 21:
                this.f19564k = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 22:
                this.di = com.byazt.cd.c.c(str2, this.di);
                break;
            case 23:
                this.kz = com.byazt.cd.ve.c(str2, true);
                break;
            case 24:
                this.sd = com.byazt.cd.tt.c(this.uj, str2, null);
                break;
        }
    }

    @Override // com.byazt.nw.c
    public void c(boolean z10, int i10, float f10, int i11) {
        c(z10, i10, f10);
    }

    @Override // com.byazt.nw.c
    public void c(boolean z10, int i10, int i11, boolean z11, boolean z12) {
        if (this.iw != i10) {
            a(i10);
            sp(i10);
            this.iw = i10;
        }
    }

    @Override // com.byazt.nw.c
    public void c(boolean z10, int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                return;
            }
            this.nx = true;
        } else {
            if (!z10) {
                this.pe = true;
            }
            this.nx = false;
        }
    }

    private void c(boolean z10, int i10, float f10) {
        if (this.pn != null && !z10 && i10 == kk() - 1 && f10 == 0.0f && this.pe) {
            this.pn.c("SwiperView://finish", new Object[0]);
            this.pe = false;
        }
    }

    private void c(z zVar) {
        if (this.f19563e) {
            zVar.c(new a() { // from class: com.byazt.sa.tt.1
                @Override // com.byazt.sz.a
                public void c(com.byazt.xj.ve veVar, String str, List<com.byazt.pm.a.c> list) {
                    if ((TextUtils.equals(str, "tap") || TextUtils.equals(str, "slide") || TextUtils.equals(str, "touchStart") || TextUtils.equals(str, "touchEnd")) && tt.this.f21881n != null) {
                        ((Swiper) tt.this.f21881n).n();
                    }
                }
            });
        }
    }
}
