package com.byazt.tlp;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.nr.z;
import com.byazt.sa.n;
import com.byazt.xj.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_VIDEO_DIFF_THRESHOLD, 20})
public class c extends ve<UgenGif> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20258c;
    public ImageView.ScaleType yo;

    public c(Context context) {
        super(context);
        this.yo = ImageView.ScaleType.FIT_CENTER;
    }

    private ImageView.ScaleType sl(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fitXY":
                return ImageView.ScaleType.FIT_XY;
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    private void x() {
        if (TextUtils.isEmpty(this.f20258c)) {
            return;
        }
        if (!this.f20258c.startsWith("local://")) {
            n.c().tt().c(this.f21874i, this.f20258c, (ImageView) this.f21881n, null);
            return;
        }
        try {
            z.c(this.tt, this.f20258c.replace("local://", ""), (ImageView) this.f21881n, 320);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void n() {
        super.n();
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public UgenGif c() {
        UgenGif ugenGif = new UgenGif(this.tt);
        this.f21881n = ugenGif;
        ugenGif.c(this);
        return (UgenGif) this.f21881n;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        x();
        ((UgenGif) this.f21881n).setScaleType(this.yo);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        if (str.equals("scaleType")) {
            this.yo = sl(str2);
        } else if (str.equals("src")) {
            this.f20258c = str2;
        }
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void c(boolean z10) {
        super.c(z10);
        if (z10) {
            tt();
        }
    }
}
