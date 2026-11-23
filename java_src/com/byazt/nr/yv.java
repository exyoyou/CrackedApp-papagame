package com.byazt.nr;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 499})
public abstract class yv {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, ConcurrentHashMap<Integer, Runnable>> f17596c = new ConcurrentHashMap<>();

    public void c(int i10, int i11, Runnable runnable) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        ConcurrentHashMap<Integer, Runnable> concurrentHashMap = this.f17596c.get(Integer.valueOf(i10));
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this.f17596c.put(Integer.valueOf(i10), concurrentHashMap);
        }
        concurrentHashMap.put(Integer.valueOf(i11), runnable);
    }

    public abstract boolean c(int i10);

    public void tt(int i10) {
        this.f17596c.remove(Integer.valueOf(i10));
    }

    public void ve(int i10) {
        Runnable value;
        ConcurrentHashMap<Integer, Runnable> concurrentHashMapRemove = this.f17596c.remove(Integer.valueOf(i10));
        if (concurrentHashMapRemove != null) {
            for (Map.Entry<Integer, Runnable> entry : concurrentHashMapRemove.entrySet()) {
                if (entry != null && (value = entry.getValue()) != null) {
                    value.run();
                }
            }
        }
    }

    public void c(int i10, int i11) {
        ConcurrentHashMap<Integer, Runnable> concurrentHashMap;
        if (i10 <= 0 || i11 <= 0 || (concurrentHashMap = this.f17596c.get(Integer.valueOf(i10))) == null) {
            return;
        }
        concurrentHashMap.remove(Integer.valueOf(i11));
    }
}
