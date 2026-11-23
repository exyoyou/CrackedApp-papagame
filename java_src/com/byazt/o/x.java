package com.byazt.o;

import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 71})
public class x extends Exception {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f17756c;
    public int tt;
    public int ve;

    public x(String str, sp spVar, Throwable th) {
        String str2;
        String str3;
        StringBuilder sb2 = new StringBuilder();
        String str4 = "";
        if (str == null) {
            str2 = "";
        } else {
            str2 = str + " ";
        }
        sb2.append(str2);
        if (spVar == null) {
            str3 = "";
        } else {
            str3 = "(position:" + spVar.uj() + ") ";
        }
        sb2.append(str3);
        if (th != null) {
            str4 = "caused by: " + th;
        }
        sb2.append(str4);
        super(sb2.toString());
        this.tt = -1;
        this.ve = -1;
        if (spVar != null) {
            this.tt = spVar.ve();
            this.ve = spVar.a();
        }
        this.f17756c = th;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.f17756c == null) {
            super.printStackTrace();
            return;
        }
        synchronized (System.err) {
            System.err.println(super.getMessage() + "; nested exception is:");
            m.c(this.f17756c);
        }
    }
}
