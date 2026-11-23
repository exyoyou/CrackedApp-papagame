package com.byazt.on;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE, 13})
public class tt extends uj {
    public void c(int i10) {
        c((byte) (i10 & 255));
        c((byte) ((i10 >> 8) & 255));
        c((byte) ((i10 >> 16) & 255));
        c((byte) ((i10 >> 24) & 255));
    }

    public void tt(int i10) {
        c((byte) ((i10 >> 24) & 255));
        c((byte) ((i10 >> 16) & 255));
        c((byte) ((i10 >> 8) & 255));
        c((byte) (i10 & 255));
    }

    @Override // com.byazt.on.uj
    public void ve(int i10) {
        super.ve(i10);
        this.f18164c.order(ByteOrder.BIG_ENDIAN);
    }
}
