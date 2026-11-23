package com.byazt.yhr;

import com.byazt.lz.a;
import com.byazt.lz.sp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM, 13})
public class tt implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.je.c f22221c;
    public sp tt;

    public tt(com.byazt.je.c cVar) {
        this.f22221c = cVar;
    }

    @Override // com.byazt.lz.a
    public JSONObject getCustomLocalConfig() {
        return this.f22221c.a();
    }

    @Override // com.byazt.lz.a
    public boolean getHttps() {
        return this.f22221c.n();
    }

    @Override // com.byazt.lz.a
    public Map<String, Object> getLocalExtra() {
        return this.f22221c.uj();
    }

    @Override // com.byazt.lz.a
    public sp getMediationConfigUserInfoForSegment() {
        if (this.tt == null) {
            com.byazt.je.ve veVarVe = this.f22221c.ve();
            if (veVarVe == null) {
                return null;
            }
            this.tt = new ve(veVarVe);
        }
        return this.tt;
    }

    @Override // com.byazt.lz.a
    public String getOpensdkVer() {
        return this.f22221c.sp();
    }

    @Override // com.byazt.lz.a
    public String getPublisherDid() {
        return this.f22221c.c();
    }

    @Override // com.byazt.lz.a
    public boolean isOpenAdnTest() {
        return this.f22221c.tt();
    }

    @Override // com.byazt.lz.a
    public boolean isSupportH265() {
        return this.f22221c.i();
    }

    @Override // com.byazt.lz.a
    public boolean isSupportSplashZoomout() {
        return this.f22221c.da();
    }

    @Override // com.byazt.lz.a
    public boolean isWxInstalled() {
        return this.f22221c.x();
    }

    @Override // com.byazt.lz.a
    public String wxAppId() {
        return this.f22221c.sl();
    }
}
