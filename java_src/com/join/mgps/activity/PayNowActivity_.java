package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PayNowActivity_ extends PayNowActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_BEAN_EXTRA = "extBean";
    public static final String INTENT_DATA_MAIN_EXTRA = "intentDataMain";
    public static final String ORDER_EXTRA = "order";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver weichartPayResultReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.PayNowActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PayNowActivity_.this.weichartPayResult(intent);
        }
    };

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PayNowActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.anotherPayType();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.ok();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.weichatPay();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.aliPay();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.unionpay();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.creditCardPay();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.pabiPay();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PayNowActivity_.this.hongbaoPay();
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55487a;

        public j(Context context) {
            super(context, (Class<?>) PayNowActivity_.class);
        }

        public j a(ExtBean extBean) {
            return (j) super.extra("extBean", extBean);
        }

        public j b(IntentDataMain intentDataMain) {
            return (j) super.extra("intentDataMain", intentDataMain);
        }

        public j c(PapayOrder order) {
            return (j) super.extra(PayNowActivity_.ORDER_EXTRA, order);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55487a;
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
            super(fragment.getActivity(), (Class<?>) PayNowActivity_.class);
            this.f55487a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.L);
        registerReceiver(this.weichartPayResultReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(ORDER_EXTRA)) {
                this.order = (PapayOrder) extras.getSerializable(ORDER_EXTRA);
            }
            if (extras.containsKey("intentDataMain")) {
                this.intentDataMain = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
            if (extras.containsKey("extBean")) {
                this.extBean = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    public static j intent(Context context) {
        return new j(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PayNowActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
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
        setContentView(R.layout.activity_pay_now);
    }

    @Override // com.join.mgps.activity.PayNowActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.weichartPayResultReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.papa_pay = (LinearLayout) hasViews.internalFindViewById(R.id.papa_pay);
        this.payTitle = (TextView) hasViews.internalFindViewById(R.id.payTitle);
        this.payDefault = (LinearLayout) hasViews.internalFindViewById(R.id.payDefault);
        this.payChoisePayType = (HorizontalScrollView) hasViews.internalFindViewById(R.id.payChoisePayType);
        this.payLoding = (LinearLayout) hasViews.internalFindViewById(R.id.payLoding);
        this.payProduct = (TextView) hasViews.internalFindViewById(R.id.payProduct);
        this.payMoney = (TextView) hasViews.internalFindViewById(R.id.payMoney);
        this.anotherPayType = (TextView) hasViews.internalFindViewById(R.id.anotherPayType);
        this.ok = (Button) hasViews.internalFindViewById(R.id.ok);
        this.weichatPay = (ImageView) hasViews.internalFindViewById(R.id.weichatPay);
        this.aliPay = (ImageView) hasViews.internalFindViewById(R.id.aliPay);
        this.unionpay = (ImageView) hasViews.internalFindViewById(R.id.unionpay);
        this.creditCardPay = (ImageView) hasViews.internalFindViewById(R.id.creditCardPay);
        this.layoutPabiPay = (LinearLayout) hasViews.internalFindViewById(R.id.layoutPabiPay);
        this.layouthongbaoPay = (LinearLayout) hasViews.internalFindViewById(R.id.layouthongbaoPay);
        this.layoutWeixin = (LinearLayout) hasViews.internalFindViewById(R.id.layoutWeixin);
        this.layoutAlipay = (LinearLayout) hasViews.internalFindViewById(R.id.layoutAlipay);
        this.layoutUnionpay = (LinearLayout) hasViews.internalFindViewById(R.id.layoutUnionpay);
        this.layoutCreditCardPay = (LinearLayout) hasViews.internalFindViewById(R.id.layoutCreditCardPay);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.pabiPay);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.hongbaoPay);
        TextView textView = this.anotherPayType;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        Button button = this.ok;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        ImageView imageView = this.weichatPay;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        ImageView imageView2 = this.aliPay;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        ImageView imageView3 = this.unionpay;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new f());
        }
        ImageView imageView4 = this.creditCardPay;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new g());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
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
