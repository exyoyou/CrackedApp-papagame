package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallAppDialogV2Activity_ extends InstallAppDialogV2Activity implements xc.a, zc.a, zc.b {
    public static final String COVER_EXTRA = "cover";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String TITLE_EXTRA = "title";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InstallAppDialogV2Activity_.this.tvInstall();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InstallAppDialogV2Activity_.this.ivClose();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InstallAppDialogV2Activity_.super.updateUI();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54042b;

        d(final String val$msg) {
            this.f54042b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            InstallAppDialogV2Activity_.super.showToast(this.f54042b);
        }
    }

    public static class e extends org.androidannotations.api.builder.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54044a;

        public e(Context context) {
            super(context, (Class<?>) InstallAppDialogV2Activity_.class);
        }

        public e a(String cover) {
            return (e) super.extra(InstallAppDialogV2Activity_.COVER_EXTRA, cover);
        }

        public e b(String gameId) {
            return (e) super.extra("gameId", gameId);
        }

        public e c(String title) {
            return (e) super.extra("title", title);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54044a;
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

        public e(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) InstallAppDialogV2Activity_.class);
            this.f54044a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("title")) {
                this.title = extras.getString("title");
            }
            if (extras.containsKey(COVER_EXTRA)) {
                this.cover = extras.getString(COVER_EXTRA);
            }
        }
    }

    public static e intent(Context context) {
        return new e(context);
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
        setContentView(R.layout.activity_install_app_dialog_v2);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.gameImg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameImg);
        this.tvGameName = (TextView) hasViews.internalFindViewById(R.id.tvGameName);
        this.tvDesc = (TextView) hasViews.internalFindViewById(R.id.tvDesc);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.tvInstall);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.ivClose);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        afterviews();
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
    @Override // com.join.mgps.activity.InstallAppDialogV2Activity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new d(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.InstallAppDialogV2Activity
    public void updateUI() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static e intent(Fragment supportFragment) {
        return new e(supportFragment);
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
