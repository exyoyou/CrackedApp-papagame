package com.byazt.rc;

import com.byazt.yj.sp;
import com.byazt.yj.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_CREATE_TIME, 15})
public class uj<T> implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, String> f19440c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public x f19441n;
    public int tt;
    public String uj;
    public T ve;

    public uj(int i10, T t10, String str) {
        this.tt = i10;
        this.ve = t10;
        this.uj = str;
    }

    @Override // com.byazt.yj.sp
    public x c() {
        return this.f19441n;
    }

    @Override // com.byazt.yj.sp
    public Map<String, String> n() {
        return this.f19440c;
    }

    @Override // com.byazt.yj.sp
    public int tt() {
        return this.tt;
    }

    @Override // com.byazt.yj.sp
    public String uj() {
        return this.uj;
    }

    @Override // com.byazt.yj.sp
    public T ve() {
        return this.ve;
    }

    public void c(x xVar) {
        this.f19441n = xVar;
    }

    public uj(int i10, T t10, String str, Map<String, String> map) {
        this(i10, t10, str);
        this.f19440c = map;
    }
}
