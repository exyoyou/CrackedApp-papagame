package com.papa.gsyvideoplayer.video.base;

import android.content.Context;
import android.view.Surface;
import com.papa.gsyvideoplayer.player.c;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface a {
    boolean A();

    void B(int i10);

    void a(float f10, boolean z10);

    boolean b(Context context, File file, String str);

    void c(float f10, boolean z10);

    long d();

    void e(Context context, File file, String str);

    int f();

    boolean g();

    long getCurrentPosition();

    int getCurrentVideoHeight();

    int getCurrentVideoWidth();

    long getDuration();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void i(String str);

    boolean isPlaying();

    int j();

    void k(String str, Map<String, String> map, boolean z10, float f10, boolean z11, File file, String str2);

    int l();

    v7.a m();

    int n();

    void o(int i10);

    c p();

    void pause();

    void q(Surface surface);

    void r(int i10);

    String s();

    void seekTo(long j10);

    void start();

    void stop();

    void t(Surface surface);

    void u(String str, Map<String, String> map, boolean z10, float f10, boolean z11, File file);

    void v(int i10);

    v7.a w();

    void x(v7.a aVar);

    void y();

    void z(v7.a aVar);
}
