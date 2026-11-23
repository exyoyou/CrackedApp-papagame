package com.byazt.nr;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.dna.qp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 512})
public class d extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<qp.c> f17570c;

    public d(qp.c cVar) {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (cVar != null) {
            this.f17570c = new WeakReference<>(cVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        qp.c cVar;
        WeakReference<qp.c> weakReference = this.f17570c;
        if (weakReference == null || (cVar = weakReference.get()) == null || message == null) {
            return;
        }
        cVar.handleMsg(message);
    }

    public d(Looper looper, qp.c cVar) {
        super(looper);
        if (cVar != null) {
            this.f17570c = new WeakReference<>(cVar);
        }
    }
}
