package com.byazt.nb;

import com.byazt.jx.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17086a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<m> f17087c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f17088n;
    public final char tt;
    public final double uj;
    public final double ve;

    public uj(List<m> list, char c10, double d10, double d11, String str, String str2) {
        this.f17087c = list;
        this.tt = c10;
        this.ve = d10;
        this.uj = d11;
        this.f17088n = str;
        this.f17086a = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public int hashCode() {
        return c(this.tt, this.f17086a, this.f17088n);
    }

    public double tt() {
        return this.uj;
    }

    public List<m> c() {
        return this.f17087c;
    }
}
