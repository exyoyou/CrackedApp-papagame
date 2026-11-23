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
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PapaPlugGuideActivity_ extends PapaPlugGuideActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaPlugGuideActivity_.this.iKnow();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaPlugGuideActivity_.super.netTip();
        }
    }

    public static class c extends org.androidannotations.api.builder.a<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55456a;

        public c(Context context) {
            super(context, (Class<?>) PapaPlugGuideActivity_.class);
        }

        public c a(int from) {
            return (c) super.extra("from", from);
        }

        public c b(String gameId) {
            return (c) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55456a;
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

        public c(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) PapaPlugGuideActivity_.class);
            this.f55456a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
        }
    }

    public static c intent(Context context) {
        return new c(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaPlugGuideActivity
    public void netTip() {
        org.androidannotations.api.b.e("", new b(), 1000L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.papa_plug_guide_notice_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.guideImage = (SimpleDraweeView) hasViews.internalFindViewById(R.id.guideImage);
        this.iKnow = (TextView) hasViews.internalFindViewById(R.id.iKnow);
        this.describe = (TextView) hasViews.internalFindViewById(R.id.describe);
        this.describe2 = (TextView) hasViews.internalFindViewById(R.id.describe2);
        TextView textView = this.iKnow;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        afterview();
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

    public static c intent(Fragment supportFragment) {
        return new c(supportFragment);
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
