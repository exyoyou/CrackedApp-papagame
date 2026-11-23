package com.byazt.yhr;

import com.byazt.lz.sp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM, 54})
public class ve implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.je.ve f22223c;

    public ve(com.byazt.je.ve veVar) {
        this.f22223c = veVar;
    }

    @Override // com.byazt.lz.sp
    public int getAge() {
        return this.f22223c.n();
    }

    @Override // com.byazt.lz.sp
    public String getChannel() {
        return this.f22223c.ve();
    }

    @Override // com.byazt.lz.sp
    public Map<String, String> getCustomInfos() {
        return this.f22223c.c();
    }

    @Override // com.byazt.lz.sp
    public String getGender() {
        return this.f22223c.a();
    }

    @Override // com.byazt.lz.sp
    public String getSubChannel() {
        return this.f22223c.uj();
    }

    @Override // com.byazt.lz.sp
    public String getUserId() {
        return this.f22223c.tt();
    }

    @Override // com.byazt.lz.sp
    public String getUserValueGroup() {
        return this.f22223c.sp();
    }
}
