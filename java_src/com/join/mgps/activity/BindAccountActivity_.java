package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class BindAccountActivity_ extends BindAccountActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f50396b;

        a(final UserInfo val$result) {
            this.f50396b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            BindAccountActivity_.super.loginSuccess(this.f50396b);
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50398b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$phoneNumber) {
            super(id2, delay, serial);
            this.f50398b = val$phoneNumber;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                BindAccountActivity_.super.bindCode(this.f50398b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50401c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$phoneNumber, final String val$code) {
            super(id2, delay, serial);
            this.f50400b = val$phoneNumber;
            this.f50401c = val$code;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                BindAccountActivity_.super.bindAccount(this.f50400b, this.f50401c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onClose();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onClearClick();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onCodeClick();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onSubmitClick();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onAgreeClick();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onAgreeClick();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onXYClick();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BindAccountActivity_.this.onOtherLoginClick();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageResponseStatus.ResponseStatusResult f50411b;

        l(final MessageResponseStatus.ResponseStatusResult val$result) {
            this.f50411b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            BindAccountActivity_.super.updateCodeUI(this.f50411b);
        }
    }

    public static class m extends org.androidannotations.api.builder.a<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50413a;

        public m(Context context) {
            super(context, (Class<?>) BindAccountActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50413a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) BindAccountActivity_.class);
            this.f50413a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static m intent(Context context) {
        return new m(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BindAccountActivity
    public void bindAccount(final String phoneNumber, final String code) {
        org.androidannotations.api.a.l(new c("", 0L, "", phoneNumber, code));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BindAccountActivity
    public void bindCode(final String phoneNumber) {
        org.androidannotations.api.a.l(new b("", 0L, "", phoneNumber));
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
    @Override // com.join.mgps.activity.BindAccountActivity
    public void loginSuccess(final UserInfo result) {
        org.androidannotations.api.b.e("", new a(result), 0L);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_bind_account);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.iv_btn_1 = (ImageView) hasViews.internalFindViewById(R.id.iv_btn_1);
        this.et_1 = (EditText) hasViews.internalFindViewById(R.id.et_1);
        this.et_2 = (EditText) hasViews.internalFindViewById(R.id.et_2);
        this.tv_btn_1 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_1);
        this.tv_btn_2 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_2);
        this.iv_1 = (ImageView) hasViews.internalFindViewById(R.id.iv_1);
        this.tv_text_8 = (TextView) hasViews.internalFindViewById(R.id.tv_text_8);
        this.tv_btn_3 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_3);
        this.iv_clear = (ImageView) hasViews.internalFindViewById(R.id.iv_clear);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.tv_label_6);
        ImageView imageView = this.iv_btn_1;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        ImageView imageView2 = this.iv_clear;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        TextView textView = this.tv_btn_1;
        if (textView != null) {
            textView.setOnClickListener(new f());
        }
        TextView textView2 = this.tv_btn_2;
        if (textView2 != null) {
            textView2.setOnClickListener(new g());
        }
        ImageView imageView3 = this.iv_1;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new h());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        TextView textView3 = this.tv_text_8;
        if (textView3 != null) {
            textView3.setOnClickListener(new j());
        }
        TextView textView4 = this.tv_btn_3;
        if (textView4 != null) {
            textView4.setOnClickListener(new k());
        }
        afterViews();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BindAccountActivity
    public void updateCodeUI(final MessageResponseStatus.ResponseStatusResult result) {
        org.androidannotations.api.b.e("", new l(result), 0L);
    }

    public static m intent(Fragment supportFragment) {
        return new m(supportFragment);
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
