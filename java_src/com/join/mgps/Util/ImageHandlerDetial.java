package com.join.mgps.Util;

import android.os.Handler;
import android.os.Message;
import com.BaseActivity;
import com.join.mgps.customview.LoopViewPager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class ImageHandlerDetial extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f49384c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f49385d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f49386e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f49387f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f49388g = 5000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<AdFragment> f49389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f49390b = 0;

    public static class AdFragment extends BaseActivity {
        protected ImageHandlerDetial handlerDetial;
        protected LoopViewPager topAdViewpager;

        public LoopViewPager getTopAdViewpager() {
            return this.topAdViewpager;
        }

        public void setTopAdViewpager(LoopViewPager topAdViewpager) {
            this.topAdViewpager = topAdViewpager;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImageHandlerDetial(WeakReference<? extends AdFragment> wk) {
        this.f49389a = wk;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        super.handleMessage(msg);
        AdFragment adFragment = this.f49389a.get();
        if (adFragment == null) {
            return;
        }
        if (adFragment.handlerDetial.hasMessages(1)) {
            adFragment.handlerDetial.removeMessages(1);
        }
        int i10 = msg.what;
        if (i10 == 1) {
            LoopViewPager loopViewPager = adFragment.topAdViewpager;
            if (loopViewPager != null && loopViewPager.getAdapter() != null) {
                adFragment.topAdViewpager.setCurrentItem(adFragment.topAdViewpager.getCurrentItem() + 1);
            }
            adFragment.handlerDetial.sendEmptyMessageDelayed(1, 5000L);
            return;
        }
        if (i10 == 3) {
            adFragment.handlerDetial.sendEmptyMessageDelayed(1, 5000L);
        } else {
            if (i10 != 4) {
                return;
            }
            this.f49390b = msg.arg1;
            adFragment.handlerDetial.sendEmptyMessageDelayed(1, 5000L);
        }
    }
}
