package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayResult;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PapayFinishActivity_ extends PapayFinishActivity implements xc.a, zc.a, zc.b {
    public static final String PAPAY_RESULT_EXTRA = "papayResult";
    public static final String VIP_RECHARGE_SUCCESS_EXTRA = "vipRechargeSuccess";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapayFinishActivity_.this.backButn();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapayFinishActivity_.this.back_image();
        }
    }

    public static class c extends org.androidannotations.api.builder.a<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55459a;

        public c(Context context) {
            super(context, (Class<?>) PapayFinishActivity_.class);
        }

        public c a(PapayResult papayResult) {
            return (c) super.extra("papayResult", papayResult);
        }

        public c b(boolean vipRechargeSuccess) {
            return (c) super.extra(PapayFinishActivity_.VIP_RECHARGE_SUCCESS_EXTRA, vipRechargeSuccess);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55459a;
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
            super(fragment.getActivity(), (Class<?>) PapayFinishActivity_.class);
            this.f55459a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("papayResult")) {
                this.papayResult = (PapayResult) extras.getSerializable("papayResult");
            }
            if (extras.containsKey(VIP_RECHARGE_SUCCESS_EXTRA)) {
                this.vipRechargeSuccess = extras.getBoolean(VIP_RECHARGE_SUCCESS_EXTRA);
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_papay_finish);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.userName = (TextView) hasViews.internalFindViewById(R.id.userName);
        this.pabiNumber = (TextView) hasViews.internalFindViewById(R.id.pabiNumber);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.vipRecharge = (TextView) hasViews.internalFindViewById(R.id.vipRecharge);
        this.imageSuccessOrFailed = (ImageView) hasViews.internalFindViewById(R.id.imageSuccessOrFailed);
        this.backButn = (Button) hasViews.internalFindViewById(R.id.backButn);
        this.orderid = (TextView) hasViews.internalFindViewById(R.id.orderid);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        Button button = this.backButn;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
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
