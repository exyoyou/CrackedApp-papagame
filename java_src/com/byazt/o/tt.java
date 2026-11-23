package com.byazt.o;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, 13})
public class tt {
    public static final void c(uj ujVar, int i10) throws IOException {
        int iTt = ujVar.tt();
        if (iTt == i10) {
            return;
        }
        throw new IOException("Expected chunk of type 0x" + Integer.toHexString(i10) + ", read 0x" + Integer.toHexString(iTt) + o0.f49827a);
    }
}
