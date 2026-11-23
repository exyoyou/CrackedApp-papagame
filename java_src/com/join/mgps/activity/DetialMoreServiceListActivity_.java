package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ServiceState;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DetialMoreServiceListActivity_ extends DetialMoreServiceListActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.relodingimag();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.back_image();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DetialMoreServiceListActivity_.this.mg_loading();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.showLoding();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.showLodingFailed();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51178b;

        f(final List val$subList) {
            this.f51178b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.showMain(this.f51178b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.updateListFooter();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DetialMoreServiceListActivity_.super.noMore();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DetialMoreServiceListActivity_.super.getListData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51183a;

        public j(Context context) {
            super(context, (Class<?>) DetialMoreServiceListActivity_.class);
        }

        public j a(String gameId) {
            return (j) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51183a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, requestCode);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, requestCode, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DetialMoreServiceListActivity_.class);
            this.f51183a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.gameId = extras.getString("gameId");
    }

    public static j intent(Context context) {
        return new j(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void getListData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.gamedetial_more_service_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.rankListView = (XListView) hasViews.internalFindViewById(R.id.rankListView);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        ImageView imageView = this.relodingimag;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new b());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void showMain(final List<ServiceState> subList) {
        org.androidannotations.api.b.e("", new f(subList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DetialMoreServiceListActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    public static j intent(Fragment supportFragment) {
        return new j(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
