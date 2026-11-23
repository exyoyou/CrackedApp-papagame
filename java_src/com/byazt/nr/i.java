package com.byazt.nr;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 42})
public class i extends TouchDelegate {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f17578c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17579n;
    public Rect tt;
    public boolean uj;
    public Rect ve;

    public i(Rect rect, View view) {
        super(rect, view);
        this.tt = rect;
        this.f17579n = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.ve = rect2;
        int i10 = this.f17579n;
        rect2.inset(-i10, -i10);
        this.f17578c = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains;
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z11 = this.uj;
                if (z11) {
                    zContains = this.ve.contains(x10, y10);
                    z10 = z11;
                } else {
                    z10 = z11;
                }
            } else if (action != 3) {
                zContains = true;
                z10 = false;
            } else {
                boolean z12 = this.uj;
                this.uj = false;
                z10 = z12;
            }
            zContains = true;
        } else if (this.tt.contains(x10, y10)) {
            this.uj = true;
            zContains = true;
        } else {
            this.uj = false;
            zContains = true;
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        View view = this.f17578c;
        if (zContains) {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        } else {
            float f10 = -(this.f17579n * 2);
            motionEvent.setLocation(f10, f10);
        }
        if (view.getVisibility() == 0) {
            return view.dispatchTouchEvent(motionEvent);
        }
        return false;
    }
}
