package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class NoticeTopAnimActivityDialog_ extends NoticeTopAnimActivityDialog implements xc.a, zc.a, zc.b {
    public static final String COIN_NUMBER_EXTRA = "coinNumber";
    public static final String MESSAGE_EXTRA = "message";
    public static final String STATE_EXTRA = "state";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.iv_close();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.nonticeText();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.dialog_button_ok();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NoticeTopAnimActivityDialog_.super.finishActivity();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55203b;

        e(final int val$from) {
            this.f55203b = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            NoticeTopAnimActivityDialog_.super.animtopOut(this.f55203b);
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55205a;

        public f(Context context) {
            super(context, (Class<?>) NoticeTopAnimActivityDialog_.class);
        }

        public f a(int coinNumber) {
            return (f) super.extra(NoticeTopAnimActivityDialog_.COIN_NUMBER_EXTRA, coinNumber);
        }

        public f b(String message) {
            return (f) super.extra("message", message);
        }

        public f c(int state) {
            return (f) super.extra(NoticeTopAnimActivityDialog_.STATE_EXTRA, state);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55205a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) NoticeTopAnimActivityDialog_.class);
            this.f55205a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("message")) {
                this.message = extras.getString("message");
            }
            if (extras.containsKey(STATE_EXTRA)) {
                this.state = extras.getInt(STATE_EXTRA);
            }
            if (extras.containsKey(COIN_NUMBER_EXTRA)) {
                this.coinNumber = extras.getInt(COIN_NUMBER_EXTRA);
            }
        }
    }

    public static f intent(Context context) {
        return new f(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog
    public void animtopOut(final int from) {
        org.androidannotations.api.b.e("", new e(from), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog
    public void finishActivity() {
        org.androidannotations.api.b.e("", new d(), 500L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.nontice_top_anim_dialog_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.dialogLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.dialogLayout);
        this.nonticeText = (TextView) hasViews.internalFindViewById(R.id.nonticeText);
        this.tv_position = (TextView) hasViews.internalFindViewById(R.id.tv_position);
        this.sub_content = (TextView) hasViews.internalFindViewById(R.id.sub_content);
        this.dialog_content = (TextView) hasViews.internalFindViewById(R.id.dialog_content);
        this.iv_close = (LinearLayout) hasViews.internalFindViewById(R.id.iv_close);
        this.dialog_button_ok = (Button) hasViews.internalFindViewById(R.id.dialog_button_ok);
        LinearLayout linearLayout = this.iv_close;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        TextView textView = this.nonticeText;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        Button button = this.dialog_button_ok;
        if (button != null) {
            button.setOnClickListener(new c());
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

    public static f intent(Fragment supportFragment) {
        return new f(supportFragment);
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
