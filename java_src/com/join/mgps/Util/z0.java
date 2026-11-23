package com.join.mgps.Util;

import android.os.Handler;
import android.os.Message;
import androidx.fragment.app.Fragment;
import com.join.mgps.customview.LoopViewPager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class z0 extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f50184c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f50185d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f50186e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f50187f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f50188g = 5000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<a> f50189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f50190b = 0;

    public static class a extends Fragment {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected z0 f50191c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected LoopViewPager f50192d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z0(WeakReference<? extends a> wk) {
        this.f50189a = wk;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        super.handleMessage(msg);
        a aVar = this.f50189a.get();
        if (aVar == null) {
            return;
        }
        if (aVar.f50191c.hasMessages(1)) {
            aVar.f50191c.removeMessages(1);
        }
        int i10 = msg.what;
        if (i10 == 1) {
            LoopViewPager loopViewPager = aVar.f50192d;
            if (loopViewPager != null && loopViewPager.getAdapter() != null) {
                aVar.f50192d.setCurrentItem(aVar.f50192d.getCurrentItem() + 1);
            }
            aVar.f50191c.sendEmptyMessageDelayed(1, 5000L);
            return;
        }
        if (i10 == 3) {
            aVar.f50191c.sendEmptyMessageDelayed(1, 5000L);
        } else {
            if (i10 != 4) {
                return;
            }
            this.f50190b = msg.arg1;
            aVar.f50191c.sendEmptyMessageDelayed(1, 5000L);
        }
    }
}
