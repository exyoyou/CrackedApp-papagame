package com.byazt.cb;

import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import com.byazt.omf.gt;
import com.byazt.qqc.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 13})
public class tt extends com.byazt.qqc.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Window f12230c;
    public final String tt = "xgc_prop_bright";
    public final float ve = 255.0f;
    public final int uj = -1;

    public tt(Window window) {
        this.f12230c = window;
        if (ve.c().n() == -2.0f) {
            ve.c().c(n() / 255.0f);
        }
    }

    public void c(double d10) {
        tt(d10);
    }

    public int n() {
        return Settings.System.getInt(gt.getContext().getContentResolver(), "screen_brightness", 0);
    }

    @Override // com.byazt.qqc.c
    public void tt(int i10) {
        tt(-1.0d);
    }

    @Override // com.byazt.qqc.c
    public JSONObject uj() {
        return gt.tt().pn();
    }

    @Override // com.byazt.qqc.c
    public boolean ve() {
        if (this.f12230c == null) {
            return true;
        }
        double dN = ve.c().n();
        return dN >= 0.95d || dN <= 0.05d;
    }

    private void tt(double d10) {
        WindowManager.LayoutParams attributes = this.f12230c.getAttributes();
        if (attributes != null) {
            if (d10 != -1.0d) {
                d10 = Math.max(0.0d, Math.min(d10, 1.0d));
                if (d10 == 0.0d) {
                    d10 = -1.0d;
                }
            }
            attributes.screenBrightness = (float) d10;
            this.f12230c.setAttributes(attributes);
        }
    }

    public float c(Window window) {
        return window.getAttributes().screenBrightness;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001c A[PHI: r7
      0x001c: PHI (r7v3 double) = (r7v1 double), (r7v2 double) binds: [B:8:0x001a, B:11:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.qqc.c
    public boolean c(int i10) {
        double dTt;
        JSONObject jSONObjectUj = uj();
        if (jSONObjectUj == null) {
            return false;
        }
        ve.c();
        if (i10 == 1) {
            dTt = jSONObjectUj.optDouble(HmInputMappingContent.FIELD_VALUE, 0.0d);
            double d10 = 1.0d;
            if (dTt >= 1.0d) {
                dTt = d10;
            } else {
                d10 = -1.0d;
                if (dTt <= -1.0d) {
                    dTt = d10;
                }
            }
        } else {
            if (i10 != 2) {
                return false;
            }
            dTt = ve.c().tt();
            if (dTt == -2.0d) {
                return false;
            }
        }
        if (dTt == 0.0d) {
            return false;
        }
        if (c(this.f12230c) == -1.0f) {
            c(((double) (n() / 255.0f)) + dTt);
        }
        return true;
    }

    @Override // com.byazt.qqc.c
    public boolean tt() {
        return ve.c().ve();
    }
}
