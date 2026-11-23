package com.byazt.rc;

import com.byazt.yj.a;
import com.byazt.yj.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_CREATE_TIME, 54})
public class ve implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19442c;
    public boolean tt;
    public gt uj;
    public boolean ve;

    public ve(String str, boolean z10, boolean z11, gt gtVar) {
        this.f19442c = str;
        this.tt = z10;
        this.ve = z11;
        this.uj = gtVar;
    }

    @Override // com.byazt.yj.a
    public String c() {
        return this.f19442c;
    }

    @Override // com.byazt.yj.a
    public boolean tt() {
        return this.tt;
    }

    @Override // com.byazt.yj.a
    public gt uj() {
        return this.uj;
    }

    @Override // com.byazt.yj.a
    public boolean ve() {
        return this.ve;
    }
}
