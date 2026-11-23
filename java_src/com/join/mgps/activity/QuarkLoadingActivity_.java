package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PictureHProgress;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class QuarkLoadingActivity_ extends QuarkLoadingActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ICON_URL_EXTRA = "gameIconUrl";
    public static final String GAME_NAME_EXTRA = "gameName";
    public static final String IS_LAUNCH_APP_EXTRA = "isLaunchApp";
    public static final String QUARK_GAME_URL_EXTRA = "quarkGameUrl";
    public static final String QUARK_ID_EXTRA = "quarkId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuarkLoadingActivity_.this.cancel();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuarkLoadingActivity_.this.back();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55522b;

        c(final int val$progress) {
            this.f55522b = val$progress;
        }

        @Override // java.lang.Runnable
        public void run() {
            QuarkLoadingActivity_.super.updateLaunchProgress(this.f55522b);
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55524a;

        public d(Context context) {
            super(context, (Class<?>) QuarkLoadingActivity_.class);
        }

        public d a(String gameIconUrl) {
            return (d) super.extra("gameIconUrl", gameIconUrl);
        }

        public d b(String gameName) {
            return (d) super.extra("gameName", gameName);
        }

        public d c(boolean isLaunchApp) {
            return (d) super.extra("isLaunchApp", isLaunchApp);
        }

        public d d(String quarkGameUrl) {
            return (d) super.extra(QuarkLoadingActivity_.QUARK_GAME_URL_EXTRA, quarkGameUrl);
        }

        public d e(String quarkId) {
            return (d) super.extra(QuarkLoadingActivity_.QUARK_ID_EXTRA, quarkId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55524a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) QuarkLoadingActivity_.class);
            this.f55524a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(QUARK_ID_EXTRA)) {
                this.quarkId = extras.getString(QUARK_ID_EXTRA);
            }
            if (extras.containsKey(QUARK_GAME_URL_EXTRA)) {
                this.quarkGameUrl = extras.getString(QUARK_GAME_URL_EXTRA);
            }
            if (extras.containsKey("gameName")) {
                this.gameName = extras.getString("gameName");
            }
            if (extras.containsKey("gameIconUrl")) {
                this.gameIconUrl = extras.getString("gameIconUrl");
            }
            if (extras.containsKey("isLaunchApp")) {
                this.isLaunchApp = extras.getBoolean("isLaunchApp");
            }
        }
    }

    public static d intent(Context context) {
        return new d(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_quark_loading);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.sdv_image = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_image);
        this.tv_name = (TextView) hasViews.internalFindViewById(R.id.tv_name);
        this.tv_loading_progress = (TextView) hasViews.internalFindViewById(R.id.tv_loading_progress);
        this.pb_progress = (PictureHProgress) hasViews.internalFindViewById(R.id.pb_progress);
        this.ll_back = (LinearLayout) hasViews.internalFindViewById(R.id.ll_back);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.tv_cancel);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        LinearLayout linearLayout = this.ll_back;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new b());
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
    @Override // com.join.mgps.activity.QuarkLoadingActivity
    public void updateLaunchProgress(final int progress) {
        org.androidannotations.api.b.e("", new c(progress), 0L);
    }

    public static d intent(Fragment supportFragment) {
        return new d(supportFragment);
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
