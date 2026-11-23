package com.join.mgps.baseactivity;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i0;
import com.join.mgps.customview.LoadingLayout;

/* JADX INFO: loaded from: classes3.dex */
public class BaseFragmentLoadingActivity extends BaseFragmentActivity implements LoadingLayout.b, LoadingLayout.a {
    String loadingHintMsg = null;
    protected LoadingLayout mLoadingLayout;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseFragmentLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        showLoadingLayout();
        loadData();
    }

    protected int getLoadingLayoutResID() {
        return 0;
    }

    protected int getLoadingMarginTop() {
        return i0.a(this, 48.0f);
    }

    protected void hideLoadingLayout() {
        new Handler(Looper.getMainLooper()).post(new b());
    }

    public void loadData() {
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.mLoadingLayout = loadingLayout;
        String str = this.loadingHintMsg;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.mLoadingLayout.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.mLoadingLayout.setRefreshCallBackListener(this);
            this.mLoadingLayout.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
    }

    protected void setLoadingFailMsg(String loadingFailMsg) {
        this.mLoadingLayout.setFailedMessage(loadingFailMsg);
    }

    public void setLoadingHintMsg(String msg) {
        this.loadingHintMsg = msg;
    }

    protected void setNoDataListener() {
        this.mLoadingLayout.setNoDataCallBackListener(this);
    }

    public void setmLoadingHintMsgLoading(String msg) {
        this.mLoadingLayout.setLoadingHintMsg(msg);
    }

    protected void showFailLayout() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    protected void showLoadingLayout() {
        new Handler(Looper.getMainLooper()).post(new a());
    }

    protected void showNoDataLayout() {
        new Handler(Looper.getMainLooper()).post(new c());
    }
}
