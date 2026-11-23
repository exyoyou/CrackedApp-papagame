package com.byazt.lo;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.aas.pf;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_IGNORE_BACKGROUND_RENDERSTALL, 54})
public class ve implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f16695a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f16696c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16697n;
    public float tt;
    public c uj;
    public boolean ve;

    public interface c {
        void c();

        void tt();
    }

    public ve(Context context, c cVar, int i10) {
        this.f16695a = context;
        this.f16697n = i10;
        this.uj = cVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f16696c = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY();
                this.tt = y10;
                if (Math.abs(y10 - this.f16696c) > 10.0f) {
                    this.ve = true;
                }
            }
        } else {
            if (!this.ve) {
                c cVar = this.uj;
                if (cVar != null) {
                    cVar.tt();
                }
                return true;
            }
            int iUj = pf.uj(this.f16695a, Math.abs(this.tt - this.f16696c));
            if (this.tt - this.f16696c >= 0.0f || iUj <= this.f16697n) {
                c cVar2 = this.uj;
                if (cVar2 != null) {
                    cVar2.tt();
                }
            } else {
                c cVar3 = this.uj;
                if (cVar3 != null) {
                    cVar3.c();
                }
            }
        }
        return true;
    }
}
