package com.papa.gsyvideoplayer.cache;

import android.content.Context;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        void h(File file, String str, int i10);
    }

    boolean b(Context context, File file, String str);

    void e(Context context, File file, String str);

    boolean f();

    void g(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file);

    void i(a aVar);

    void release();
}
