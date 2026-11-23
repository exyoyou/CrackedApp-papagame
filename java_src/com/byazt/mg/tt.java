package com.byazt.mg;

import android.annotation.TargetApi;
import android.os.Debug;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f16909c = new C0371tt();

    @com.byazt.zqa.c(c = {0, 1, 170, 194})
    private static class c {
        private c() {
        }

        public int c(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int tt(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int ve(Debug.MemoryInfo memoryInfo) {
            return -1;
        }
    }

    /* JADX INFO: renamed from: com.byazt.mg.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 170, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    @TargetApi(19)
    private static class C0371tt extends c {
        private C0371tt() {
            super();
        }

        @Override // com.byazt.mg.tt.c
        public int c(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override // com.byazt.mg.tt.c
        public int tt(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }

        @Override // com.byazt.mg.tt.c
        public int ve(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }
    }

    public static int c(Debug.MemoryInfo memoryInfo) {
        return f16909c.c(memoryInfo);
    }

    public static int tt(Debug.MemoryInfo memoryInfo) {
        return f16909c.tt(memoryInfo);
    }

    public static int ve(Debug.MemoryInfo memoryInfo) {
        return f16909c.ve(memoryInfo);
    }
}
