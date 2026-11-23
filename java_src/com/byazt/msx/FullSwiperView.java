package com.byazt.msx;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.dl.uj;
import com.byazt.ete.h;
import com.byazt.ete.ic;
import com.byazt.ete.or;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nw.BaseSwiper;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_POS, 704})
public class FullSwiperView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f16981a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BaseSwiper<ViewGroup> f16982c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public List<Long> f16983da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<Integer> f16984i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f16985n;
    public List<FullSwiperItemView> sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f16986t;
    public List<c> tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f16987u;
    public float uj;
    public TTBaseVideoActivity ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<Integer> f16988x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public AtomicBoolean f16989z;

    public FullSwiperView(TTBaseVideoActivity tTBaseVideoActivity) {
        super(tTBaseVideoActivity);
        this.sp = false;
        this.f16987u = true;
        this.yp = true;
        this.f16989z = new AtomicBoolean(false);
        this.ve = tTBaseVideoActivity;
        this.f16988x = new ArrayList();
        this.f16984i = new ArrayList();
        this.f16983da = new ArrayList();
        this.f16982c = new SwiperView(tTBaseVideoActivity);
        this.sl = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f16982c, layoutParams);
    }

    public int getCurrentPosition() {
        return this.f16986t;
    }

    public void a() {
        BaseSwiper<ViewGroup> baseSwiper = this.f16982c;
        if (baseSwiper != null) {
            baseSwiper.sp();
        }
    }

    public void n() {
        for (FullSwiperItemView fullSwiperItemView : this.sl) {
            if (fullSwiperItemView != null) {
                fullSwiperItemView.rh();
            }
        }
    }

    public void sp() {
        BaseSwiper<ViewGroup> baseSwiper = this.f16982c;
        if (baseSwiper != null) {
            baseSwiper.yp(this.f16986t + 1);
        }
    }

    public void uj() {
        a();
    }

    public void ve() {
        FullSwiperItemView fullSwiperItemViewVe = ve(this.f16986t);
        if (fullSwiperItemViewVe != null) {
            fullSwiperItemViewVe.m();
        }
        if (this.f16986t == this.sl.size() - 1) {
            return;
        }
        this.f16982c.yp(this.f16986t);
        List<Integer> list = this.f16984i;
        if (list == null || this.f16986t >= list.size()) {
            return;
        }
        if (!this.f16987u && (!this.f16989z.get() || or.yp() == 1)) {
            c(this.f16984i.get(this.f16986t).intValue());
        }
        this.f16987u = false;
    }

    public FullSwiperView c(List<c> list) {
        this.tt = list;
        return this;
    }

    public FullSwiperView tt(float f10) {
        this.f16985n = f10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10) {
        FullSwiperItemView fullSwiperItemViewVe = ve(i10);
        if (fullSwiperItemViewVe != null) {
            fullSwiperItemViewVe.u();
        }
    }

    public FullSwiperView c(float f10) {
        this.uj = f10;
        return this;
    }

    public FullSwiperView c(String str) {
        this.f16981a = str;
        return this;
    }

    public void c() {
        h hVarZo;
        List<c> list = this.tt;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f16982c.c(false).c("dot").uj(false).ve(false).tt(false);
        this.f16982c.setOnPageChangeListener(new com.byazt.nw.c() { // from class: com.byazt.msx.FullSwiperView.1
            @Override // com.byazt.nw.c
            public void c(boolean z10, int i10) {
            }

            @Override // com.byazt.nw.c
            public void c(boolean z10, int i10, float f10, int i11) {
            }

            @Override // com.byazt.nw.c
            public void c(boolean z10, int i10, int i11, boolean z11, boolean z12) {
                if (FullSwiperView.this.yp && i10 == 1) {
                    return;
                }
                FullSwiperView.this.yp = false;
                FullSwiperView.this.f16986t = i10;
                FullSwiperItemView fullSwiperItemViewVe = FullSwiperView.this.ve(i10);
                if (fullSwiperItemViewVe != null && FullSwiperView.this.f16986t != 0) {
                    fullSwiperItemViewVe.tt(false);
                }
                FullSwiperItemView fullSwiperItemViewVe2 = FullSwiperView.this.ve(i10 - 1);
                if (fullSwiperItemViewVe2 != null) {
                    fullSwiperItemViewVe2.z();
                    fullSwiperItemViewVe2.nu();
                }
                FullSwiperView.this.tt(i10 + 1);
                if (!FullSwiperView.this.sp && i10 > 0) {
                    FullSwiperView.this.sp = true;
                    uj.tt(FullSwiperView.this.f16981a);
                }
                int iIntValue = ((Integer) FullSwiperView.this.f16988x.get(i10)).intValue();
                if (iIntValue > 0 && i10 != FullSwiperView.this.sl.size() - 1) {
                    FullSwiperView.this.f16983da.add(i10, Long.valueOf(System.currentTimeMillis()));
                    int i12 = iIntValue / 1000;
                    int iMin = Math.min(or.tt(false), i12);
                    int iMax = Math.max(i12 - or.tt(false), 0);
                    if (iMin > 0) {
                        FullSwiperView.this.f16989z.set(false);
                        FullSwiperView.this.ve.c(-1, iMin, iMax);
                    } else {
                        if (or.yp() != 1) {
                            if (FullSwiperView.this.f16989z.get()) {
                                return;
                            }
                            FullSwiperView.this.c(iIntValue);
                            return;
                        }
                        FullSwiperView.this.c(iIntValue);
                    }
                }
            }
        });
        for (c cVar : this.tt) {
            ic icVarC = cVar.c();
            if (icVarC != null && (hVarZo = icVarC.zo()) != null) {
                this.f16988x.add(Integer.valueOf((int) hVarZo.tt()));
                this.f16984i.add(0);
                this.f16983da.add(Long.valueOf(System.currentTimeMillis()));
                FullSwiperItemView fullSwiperItemView = new FullSwiperItemView(this.ve, cVar, this.uj, this.f16985n);
                fullSwiperItemView.setOnSwiperItemInteractListener(new FullSwiperItemView.c() { // from class: com.byazt.msx.FullSwiperView.2
                    @Override // com.byazt.msx.FullSwiperItemView.c
                    public void c() {
                        if (or.yp() == 0) {
                            FullSwiperView.this.a();
                            FullSwiperView.this.ve.tx();
                        }
                        FullSwiperView.this.f16989z.set(true);
                    }
                });
                this.f16982c.c(fullSwiperItemView);
                this.sl.add(fullSwiperItemView);
            }
        }
        final FullSwiperItemView fullSwiperItemView2 = this.sl.get(0);
        fullSwiperItemView2.setOnSwiperItemRenderResultListener(new FullSwiperItemView.tt() { // from class: com.byazt.msx.FullSwiperView.3
            @Override // com.byazt.msx.FullSwiperItemView.tt
            public void c(View view, float f10, float f11) {
                int iIntValue = ((Integer) FullSwiperView.this.f16988x.get(0)).intValue();
                if (iIntValue <= 0) {
                    FullSwiperView.this.f16982c.a();
                } else {
                    FullSwiperView.this.f16983da.add(0, Long.valueOf(System.currentTimeMillis()));
                    FullSwiperView.this.f16982c.a();
                    if (FullSwiperView.this.sl.size() > 1) {
                        int i10 = iIntValue / 1000;
                        int iMin = Math.min(or.tt(false), i10);
                        int iMax = Math.max(i10 - or.tt(false), 0);
                        if (iMin > 0) {
                            FullSwiperView.this.ve.c(-1, iMin, iMax);
                        } else {
                            FullSwiperView.this.c(iIntValue);
                        }
                    }
                }
                fullSwiperItemView2.tt(true);
                FullSwiperView.this.tt(1);
            }
        });
        fullSwiperItemView2.u();
    }

    public void tt() {
        FullSwiperItemView fullSwiperItemViewVe = ve(this.f16986t);
        if (fullSwiperItemViewVe != null) {
            fullSwiperItemViewVe.z();
        }
        List<Long> list = this.f16983da;
        if (list != null && this.f16986t < list.size()) {
            this.f16984i.add(this.f16986t, Integer.valueOf(this.f16988x.get(this.f16986t).intValue() - ((int) (System.currentTimeMillis() - this.f16983da.get(this.f16986t).longValue()))));
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FullSwiperItemView ve(int i10) {
        List<FullSwiperItemView> list = this.sl;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return null;
        }
        return this.sl.get(i10);
    }

    public void c(int i10) {
        BaseSwiper<ViewGroup> baseSwiper;
        if (Math.min(or.tt(false), i10 / 1000) <= 0 && (baseSwiper = this.f16982c) != null) {
            baseSwiper.z(i10);
        }
    }
}
