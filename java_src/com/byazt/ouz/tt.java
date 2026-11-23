package com.byazt.ouz;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.ete.ic;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 13})
public abstract class tt extends com.byazt.nc.yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer[] f18512c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Dialog f18513i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public c f18514x;

    @com.byazt.zqa.c(c = {0, 1, 27, 194})
    protected static class c implements com.byazt.pop.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<com.byazt.pop.c> f18516c;
        public String tt;

        public c(com.byazt.pop.c cVar, String str) {
            this.tt = "";
            this.f18516c = new WeakReference<>(cVar);
            this.tt = str;
        }

        public void c(com.byazt.pop.c cVar) {
            this.f18516c = new WeakReference<>(cVar);
        }

        @Override // com.byazt.pop.c
        public void tt(long j10, long j11, String str, String str2) {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().tt(j10, j11, str, str2);
            }
            com.byazt.nt.c.tt(this.tt, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void ve(long j10, long j11, String str, String str2) {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().ve(j10, j11, str, str2);
            }
            com.byazt.nt.c.ve(this.tt, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void c() {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().c();
            }
            com.byazt.nt.c.c(this.tt);
        }

        @Override // com.byazt.pop.c
        public void c(long j10, long j11, String str, String str2) {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().c(j10, j11, str, str2);
            }
            com.byazt.nt.c.c(this.tt, j10, j11);
        }

        @Override // com.byazt.pop.c
        public void c(long j10, String str, String str2) {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().c(j10, str, str2);
            }
            com.byazt.nt.c.tt(this.tt);
        }

        @Override // com.byazt.pop.c
        public void c(String str, String str2) {
            WeakReference<com.byazt.pop.c> weakReference = this.f18516c;
            if (weakReference != null && weakReference.get() != null) {
                this.f18516c.get().c(str, str2);
            }
            com.byazt.nt.c.ve(this.tt);
        }
    }

    public void c(Dialog dialog) {
    }

    @Override // com.byazt.nc.yp
    public void destroy() {
        if (getMaterialMeta() != null) {
            com.byazt.omf.rl.c(getMaterialMeta().rl());
            com.byazt.omf.rl.c(getMaterialMeta().lw());
        }
    }

    @Override // com.byazt.nc.yp
    public com.byazt.nc.sp getDislikeDialog(Activity activity) {
        return null;
    }

    @Override // com.byazt.nc.yp
    public com.byazt.nc.uj getDislikeInfo() {
        return null;
    }

    @Override // com.byazt.nc.yp
    public View getExpressAdView() {
        return null;
    }

    @Override // com.byazt.nc.yp
    public int getImageMode() {
        return 0;
    }

    @Override // com.byazt.nc.yp
    public int getInteractionType() {
        return 0;
    }

    public abstract ic getMaterialMeta();

    @Override // com.byazt.nc.yp
    public Map<String, Object> getMediaExtraInfo() {
        return null;
    }

    public com.byazt.ua.c getVideoModel() {
        return null;
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
    }

    @Override // com.byazt.nc.yp
    public void render() {
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        if (getMaterialMeta() != null) {
            com.byazt.omf.rl.c(getMaterialMeta().rl(), ttVar, com.byazt.ocd.tt.class);
        }
    }

    @Override // com.byazt.nc.yp
    public void setCanInterruptVideoPlay(boolean z10) {
    }

    @Override // com.byazt.nc.yp
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
    }

    @Override // com.byazt.nc.yp
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        this.f18513i = dialog;
        this.f18512c = numArr;
        try {
            dialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.ouz.tt.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (tt.this.getMaterialMeta() != null) {
                        tt ttVar = tt.this;
                        ttVar.c(ttVar.getMaterialMeta().wq());
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        } catch (Throwable unused) {
        }
        c(this.f18513i);
    }

    @Override // com.byazt.nc.yp
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
    }

    @Override // com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.c cVar) {
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
    }

    @Override // com.byazt.nc.yp
    public void setSlideIntervalTime(int i10) {
    }

    @Override // com.byazt.nc.yp
    public void setVideoAdListener(com.byazt.ft.ve veVar) {
    }

    @Override // com.byazt.nc.yp
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
    }

    public void c(com.byazt.vo.tt ttVar) {
        Dialog dialog;
        if (ttVar == null || (dialog = this.f18513i) == null) {
            return;
        }
        com.byazt.pr.tt.c(ttVar, dialog, this.f18512c);
    }

    @Override // com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.tt ttVar) {
    }
}
