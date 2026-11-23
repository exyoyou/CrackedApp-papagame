package com.join.mgps.fragment;

import android.os.Handler;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e extends Fragment {
    protected Handler mHandler = new Handler();
    private Boolean isFirst = Boolean.TRUE;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69349b;

        a(final String val$msg) {
            this.f69349b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.Util.a3.b(e.this.getContext()).d(this.f69349b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        lazyLoad();
        this.isFirst = Boolean.FALSE;
    }

    private void onVisible() {
        if (getLifecycle().getCurrentState() == Lifecycle.State.STARTED && this.isFirst.booleanValue()) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f69208b.N();
                }
            }, lazyLoadTime().longValue());
        }
    }

    void T(final String msg) {
        this.mHandler.post(new a(msg));
    }

    protected abstract void lazyLoad();

    public Long lazyLoadTime() {
        return 300L;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.isFirst = Boolean.TRUE;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        onVisible();
    }
}
