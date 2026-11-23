package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.pref.PrefDef_;
import com.netease.nis.quicklogin.QuickLogin;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class LoginSplashActivity_ extends LoginSplashActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IS_BACK_FROM_OTHER_LOGIN_EXTRA = "isBackFromOtherLogin";
    public static final String IS_FORCED_LOGIN_EXTRA = "isForcedLogin";
    public static final String LOGIN_PARAMS_EXTRA = "loginParams";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) LoginSplashActivity_.class);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
        }

        public IntentBuilder_ isBackFromOtherLogin(boolean isBackFromOtherLogin) {
            return (IntentBuilder_) super.extra(LoginSplashActivity_.IS_BACK_FROM_OTHER_LOGIN_EXTRA, isBackFromOtherLogin);
        }

        public IntentBuilder_ isForcedLogin(boolean isForcedLogin) {
            return (IntentBuilder_) super.extra("isForcedLogin", isForcedLogin);
        }

        public IntentBuilder_ loginParams(LoginParams loginParams) {
            return (IntentBuilder_) super.extra("loginParams", loginParams);
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

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) LoginSplashActivity_.class);
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
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("isForcedLogin")) {
                this.isForcedLogin = extras.getBoolean("isForcedLogin");
            }
            if (extras.containsKey(IS_BACK_FROM_OTHER_LOGIN_EXTRA)) {
                this.isBackFromOtherLogin = extras.getBoolean(IS_BACK_FROM_OTHER_LOGIN_EXTRA);
            }
            if (extras.containsKey("loginParams")) {
                this.loginParams = (LoginParams) extras.getSerializable("loginParams");
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.dismissLoadingDialog();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.error(message);
            }
        }, 0L);
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
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginSplashActivity_.7
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginSplashActivity_.super.joinDevice();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void loginSuccess(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.loginSuccess(accountBean);
            }
        }, 0L);
    }

    @Override // com.join.mgps.activity.login.LoginSplashActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.wufunlogin_splash_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.close = hasViews.internalFindViewById(R.id.close);
        this.login = hasViews.internalFindViewById(R.id.login);
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void oneKeyLogin(final String token, final String accessToken, final QuickLogin quickLogin) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginSplashActivity_.6
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginSplashActivity_.super.oneKeyLogin(token, accessToken, quickLogin);
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
    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void quitActivity() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.quitActivity();
            }
        }, 0L);
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

    @Override // com.join.mgps.activity.login.LoginSplashActivity
    public void showLoadingDialog() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginSplashActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                LoginSplashActivity_.super.showLoadingDialog();
            }
        }, 0L);
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
