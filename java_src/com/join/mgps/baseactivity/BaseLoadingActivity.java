package com.join.mgps.baseactivity;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i0;
import com.join.mgps.customview.LoadingLayout;

/* JADX INFO: loaded from: classes3.dex */
public class BaseLoadingActivity extends BaseActivity implements LoadingLayout.b, LoadingLayout.a {
    protected String loadingHintMsg = null;
    protected Handler mHandler;
    protected LoadingLayout mLoadingLayout;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseLoadingActivity.this.mLoadingLayout;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.mLoadingLayout;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.mLoadingLayout;
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
            LoadingLayout loadingLayout = BaseLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseLoadingActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.j();
            }
        }
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        showLoadingLayout();
        loadData();
    }

    public int getLoadingLayoutResID() {
        return 0;
    }

    public int getLoadingMarginTop() {
        return i0.a(this, 48.0f);
    }

    public void hideLoadingLayout() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new b());
        }
    }

    public boolean isHindeLoadingLayout() {
        return this.mLoadingLayout.e();
    }

    public void loadData() {
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public void setLoadingFailMsg(String loadingFailMsg) {
        this.mLoadingLayout.setFailedMessage(loadingFailMsg);
    }

    public void setLoadingHintMsg(String msg) {
        this.loadingHintMsg = msg;
    }

    public void setNoDataListener() {
        this.mLoadingLayout.setNoDataCallBackListener(this);
    }

    public void setTextViewNoData(String text) {
        LoadingLayout loadingLayout = this.mLoadingLayout;
        if (loadingLayout != null) {
            loadingLayout.setTextViewNoData(text);
        }
    }

    public void setmLoadingHintMsgLoading(String msg) {
        this.mLoadingLayout.setLoadingHintMsg(msg);
    }

    public void showFailLayout() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new d());
        }
    }

    public void showLoadingLayout() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new a());
        }
    }

    public void showNoDataLayout() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new c());
        }
    }

    public void showNoDataLayoutTwo() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new e());
        }
    }
}
