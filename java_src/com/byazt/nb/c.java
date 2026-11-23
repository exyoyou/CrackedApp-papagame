package com.byazt.nb;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointF f17072c;
    public final PointF tt;
    public final PointF ve;

    public c() {
        this.f17072c = new PointF();
        this.tt = new PointF();
        this.ve = new PointF();
    }

    public void c(float f10, float f11) {
        this.f17072c.set(f10, f11);
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.ve.x), Float.valueOf(this.ve.y), Float.valueOf(this.f17072c.x), Float.valueOf(this.f17072c.y), Float.valueOf(this.tt.x), Float.valueOf(this.tt.y));
    }

    public void tt(float f10, float f11) {
        this.tt.set(f10, f11);
    }

    public void ve(float f10, float f11) {
        this.ve.set(f10, f11);
    }

    public PointF c() {
        return this.f17072c;
    }

    public PointF tt() {
        return this.tt;
    }

    public PointF ve() {
        return this.ve;
    }

    public c(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f17072c = pointF;
        this.tt = pointF2;
        this.ve = pointF3;
    }
}
