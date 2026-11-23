package com.byazt.zo;

import android.view.View;
import com.byazt.ete.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ANSWER_RECV_TIME, 54})
public class ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile int f22936n;
    public View uj;
    public da ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.hkv.uj f22937x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c> f22935c = new ArrayList();
    public Map<String, Object> tt = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile int f22934a = 0;
    public long sp = -1;

    public ve(com.byazt.hkv.uj ujVar) {
        this.f22937x = ujVar;
    }

    private void ve() {
        this.f22936n = 0;
        this.f22934a = 0;
    }

    public long c() {
        return this.sp;
    }

    public void tt() {
        this.sp = System.currentTimeMillis();
        ((com.byazt.vis.c) this.f22937x.c(com.byazt.vis.c.class)).c(false);
        ve();
        c(0);
    }

    public void c(View view) {
        this.uj = view;
    }

    public void c(c cVar) {
        this.f22935c.add(cVar);
    }

    public void c(da daVar) {
        this.ve = daVar;
        Iterator<c> it2 = this.f22935c.iterator();
        while (it2.hasNext()) {
            it2.next().c(this.ve);
        }
    }

    private void c(int i10) {
        int size = this.f22935c.size();
        while (i10 < size) {
            int i11 = i10 + 1;
            this.f22936n = i11;
            c cVar = this.f22935c.get(i10);
            cVar.c(this.uj);
            this.f22934a = cVar.c(this.tt, this);
            if (this.f22934a != 0) {
                if (this.f22934a == 2) {
                    ((com.byazt.vis.c) this.f22937x.c(com.byazt.vis.c.class)).c(this.tt, this);
                    return;
                }
                return;
            }
            i10 = i11;
        }
    }

    public <T extends c> T c(Class<T> cls) {
        return (T) this.f22937x.c(cls);
    }
}
