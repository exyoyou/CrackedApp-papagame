package com.byazt.om;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.vx.p;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE, 91})
public class sp implements c.InterfaceC0392c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c> f17906c;
    public com.byazt.iz.tt tt;
    public int uj;
    public int ve;

    public sp(List<c> list) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f17906c = copyOnWriteArrayList;
        this.ve = 0;
        this.uj = 0;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    public static /* synthetic */ int a(sp spVar) {
        int i10 = spVar.uj;
        spVar.uj = i10 + 1;
        return i10;
    }

    public static /* synthetic */ int uj(sp spVar) {
        int i10 = spVar.ve;
        spVar.ve = i10 + 1;
        return i10;
    }

    @Override // com.byazt.om.c.InterfaceC0392c
    public void c(com.byazt.iz.tt ttVar) {
        if (this.tt != ttVar && ttVar != null) {
            this.tt = ttVar;
        }
        if (p.c(this.f17906c)) {
            return;
        }
        com.byazt.eu.n.c(new Runnable() { // from class: com.byazt.om.sp.1
            @Override // java.lang.Runnable
            public void run() {
                if (sp.this.ve == 0 && sp.this.tt != null) {
                    sp.this.tt.tt(SystemClock.elapsedRealtime());
                }
                if (sp.this.f17906c.size() > sp.this.ve) {
                    ((c) sp.this.f17906c.get(sp.uj(sp.this))).c(sp.this);
                }
            }
        });
    }

    @Override // com.byazt.om.c.InterfaceC0392c
    public com.byazt.iz.tt c() {
        return this.tt;
    }

    @Override // com.byazt.om.c.InterfaceC0392c
    public void c(String str) {
        com.byazt.iz.tt ttVar;
        if (!TextUtils.isEmpty(str) && (ttVar = this.tt) != null) {
            ttVar.tt(str);
        }
        com.byazt.eu.n.c(new Runnable() { // from class: com.byazt.om.sp.2
            @Override // java.lang.Runnable
            public void run() {
                if (sp.this.f17906c.size() > sp.this.uj) {
                    ((c) sp.this.f17906c.get(sp.a(sp.this))).tt(sp.this);
                }
            }
        });
    }
}
