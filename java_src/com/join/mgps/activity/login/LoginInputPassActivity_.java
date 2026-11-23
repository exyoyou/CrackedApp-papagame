package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class LoginInputPassActivity_ extends LoginInputPassActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IS_FORCED_LOGIN_EXTRA = "isForcedLogin";
    public static final String IS_SET_PWD_EXTRA = "isSetPwd";
    public static final String PHONE_NUMBER_EXTRA = "phoneNumber";
    public static final String THIRD_REQUESTBEAN_EXTRA = "thirdRequestbean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) LoginInputPassActivity_.class);
        }

        public IntentBuilder_ from(int from) {
            return (IntentBuilder_) super.extra("from", from);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
        }

        public IntentBuilder_ isForcedLogin(boolean isForcedLogin) {
            return (IntentBuilder_) super.extra("isForcedLogin", isForcedLogin);
        }

        public IntentBuilder_ isSetPwd(boolean isSetPwd) {
            return (IntentBuilder_) super.extra(LoginInputPassActivity_.IS_SET_PWD_EXTRA, isSetPwd);
        }

        public IntentBuilder_ phoneNumber(String phoneNumber) {
            return (IntentBuilder_) super.extra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA, phoneNumber);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.fragmentSupport_;
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

        public IntentBuilder_ thirdRequestbean(AccountRegisterThirdwaiRequestBean thirdRequestbean) {
            return (IntentBuilder_) super.extra("thirdRequestbean", thirdRequestbean);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) LoginInputPassActivity_.class);
            this.fragmentSupport_ = fragment;
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
            if (extras.containsKey(PHONE_NUMBER_EXTRA)) {
                this.phoneNumber = extras.getString(PHONE_NUMBER_EXTRA);
            }
            if (extras.containsKey("thirdRequestbean")) {
                this.thirdRequestbean = (AccountRegisterThirdwaiRequestBean) extras.getSerializable("thirdRequestbean");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey(IS_SET_PWD_EXTRA)) {
                this.isSetPwd = extras.getBoolean(IS_SET_PWD_EXTRA);
            }
            if (extras.containsKey("isForcedLogin")) {
                this.isForcedLogin = extras.getBoolean("isForcedLogin");
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void bindCode() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.17
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.bindCode();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.error(message);
            }
        }, 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void getLogin(final String username, final String password) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.14
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.getLogin(username, password);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.15
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.joinDevice();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void loginSuccess(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.loginSuccess(accountBean);
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.wufunlogin_inputpass_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleMessage = (TextView) hasViews.internalFindViewById(R.id.titleMessage);
        this.codeLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.codeLayout);
        this.passLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.passLayout);
        this.inputCode = (EditText) hasViews.internalFindViewById(R.id.inputCode);
        this.inputPass = (EditText) hasViews.internalFindViewById(R.id.inputPass);
        this.getCode = (TextView) hasViews.internalFindViewById(R.id.getCode);
        this.clear = (ImageView) hasViews.internalFindViewById(R.id.clear);
        this.sendLogin = (TextView) hasViews.internalFindViewById(R.id.sendLogin);
        this.fergetPass = (TextView) hasViews.internalFindViewById(R.id.fergetPass);
        this.bindmessage = (TextView) hasViews.internalFindViewById(R.id.bindmessage);
        this.loginMessage = (TextView) hasViews.internalFindViewById(R.id.loginMessage);
        this.permissLayout = hasViews.internalFindViewById(R.id.permissLayout);
        this.seePass = (CheckBox) hasViews.internalFindViewById(R.id.seePass);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.shengming);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.xieyi);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.shengming();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.xieyi();
                }
            });
        }
        ImageView imageView = this.clear;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.clear();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.back();
                }
            });
        }
        TextView textView = this.getCode;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.getCode();
                }
            });
        }
        TextView textView2 = this.fergetPass;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.fergetPass();
                }
            });
        }
        TextView textView3 = this.sendLogin;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginInputPassActivity_.this.sendLogin();
                }
            });
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void phoneRegin() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.18
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.phoneRegin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void resendgetCode(final int type) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.16
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.resendgetCode(type);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void resetPass(final String password, final String codex) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.resetPass(password, codex);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showKeyborad(final EditText view) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showKeyborad(view);
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showLoding();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.showLodingDismis();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void success() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                LoginInputPassActivity_.super.success();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void thirdPartyLogin() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.20
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.thirdPartyLogin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginInputPassActivity
    public void thirdRegin() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginInputPassActivity_.19
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginInputPassActivity_.super.thirdRegin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static IntentBuilder_ intent(Fragment supportFragment) {
        return new IntentBuilder_(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
