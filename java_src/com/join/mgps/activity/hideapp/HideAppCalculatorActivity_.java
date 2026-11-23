package com.join.mgps.activity.hideapp;

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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;

/* JADX INFO: loaded from: classes4.dex */
public final class HideAppCalculatorActivity_ extends HideAppCalculatorActivity implements xc.a, zc.a, zc.b {
    public static final String IS_FROM_BACKGROUND_EXTRA = "isFromBackground";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HideAppCalculatorActivity_.this.back_image();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HideAppCalculatorActivity_.super.del();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f57300c;

        c(final String val$s, final boolean val$isOp) {
            this.f57299b = val$s;
            this.f57300c = val$isOp;
        }

        @Override // java.lang.Runnable
        public void run() {
            HideAppCalculatorActivity_.super.writeText(this.f57299b, this.f57300c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57302b;

        d(final String val$message) {
            this.f57302b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            HideAppCalculatorActivity_.super.showMessage(this.f57302b);
        }
    }

    public static class e extends org.androidannotations.api.builder.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57304a;

        public e(Context context) {
            super(context, (Class<?>) HideAppCalculatorActivity_.class);
        }

        public e a(boolean isFromBackground) {
            return (e) super.extra("isFromBackground", isFromBackground);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int requestCode) {
            Fragment fragment = this.f57304a;
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
            return new f(this.context);
        }

        public e(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) HideAppCalculatorActivity_.class);
            this.f57304a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("isFromBackground")) {
            return;
        }
        this.isFromBackground = extras.getBoolean("isFromBackground");
    }

    public static e intent(Context context) {
        return new e(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.hideapp.HideAppCalculatorActivity
    public void del() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_hide_app_calculator);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.tvCalResult = (TextView) hasViews.internalFindViewById(R.id.tvCalResult);
        this.rvKeyBoard = (RecyclerView) hasViews.internalFindViewById(R.id.rvKeyBoard);
        this.hideAppMask = (LinearLayout) hasViews.internalFindViewById(R.id.hideAppMask);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.hideapp.HideAppCalculatorActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.hideapp.HideAppCalculatorActivity
    public void writeText(final String s10, final boolean isOp) {
        org.androidannotations.api.b.e("", new c(s10, isOp), 0L);
    }

    public static e intent(Fragment supportFragment) {
        return new e(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
