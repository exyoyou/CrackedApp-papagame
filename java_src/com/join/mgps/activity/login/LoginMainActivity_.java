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
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.pref.PrefDef_;
import com.netease.nis.quicklogin.QuickLogin;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class LoginMainActivity_ extends LoginMainActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String INTENT_FROM_EXTRA = "intentFrom";
    public static final String IS_FORCED_LOGIN_EXTRA = "isForcedLogin";
    public static final String LOGIN_PARAMS_EXTRA = "loginParams";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) LoginMainActivity_.class);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
        }

        public IntentBuilder_ intentFrom(int intentFrom) {
            return (IntentBuilder_) super.extra("intentFrom", intentFrom);
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
            super(fragment.getActivity(), (Class<?>) LoginMainActivity_.class);
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
            if (extras.containsKey("intentFrom")) {
                this.intentFrom = extras.getInt("intentFrom");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("isForcedLogin")) {
                this.isForcedLogin = extras.getBoolean("isForcedLogin");
            }
            if (extras.containsKey("loginParams")) {
                this.loginParams = (LoginParams) extras.getSerializable("loginParams");
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void checkPhoneLogin(final String token, final String accessToken, final QuickLogin quickLogin, final String phone) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginMainActivity_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginMainActivity_.super.checkPhoneLogin(token, accessToken, quickLogin, phone);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void delayFinish() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.delayFinish();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.20
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.error(message);
            }
        }, 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void goRegin(final AccountRegisterThirdwaiRequestBean thirdRequestbean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.19
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.goRegin(thirdRequestbean);
            }
        }, 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginMainActivity_.23
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginMainActivity_.super.joinDevice();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void login(final int type, final String userId, final String name, final int gender, final String userIcon) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.LoginMainActivity_.22
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    LoginMainActivity_.super.login(type, userId, name, gender, userIcon);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void loginSuccess(final UserInfo user_info, final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.18
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.loginSuccess(user_info, rewardBean);
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.loginmain_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.phoneNumber = (EditText) hasViews.internalFindViewById(R.id.phoneNumber);
        this.clear = hasViews.internalFindViewById(R.id.clear);
        this.otherLogin = hasViews.internalFindViewById(R.id.otherLogin);
        this.cancleLogin = hasViews.internalFindViewById(R.id.cancleLogin);
        this.nextStep = hasViews.internalFindViewById(R.id.nextStep);
        this.xieyi = (TextView) hasViews.internalFindViewById(R.id.xieyi);
        this.checkBox = (CheckBox) hasViews.internalFindViewById(R.id.checkBox);
        this.iv_tip = (ImageView) hasViews.internalFindViewById(R.id.iv_tip);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.shengming);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.toOtherLogin);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.cancle);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.loginQQLayout);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.loginWechatLayout);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.loginWeiboLayout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LoginMainActivity_.this.shengming();
                }
            });
        }
        View view = this.otherLogin;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LoginMainActivity_.this.otherLogin();
                }
            });
        }
        TextView textView = this.xieyi;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LoginMainActivity_.this.xieyi();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LoginMainActivity_.this.toOtherLogin();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LoginMainActivity_.this.cancle();
                }
            });
        }
        View view2 = this.cancleLogin;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    LoginMainActivity_.this.cancleLogin();
                }
            });
        }
        View view3 = this.clear;
        if (view3 != null) {
            view3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view4) {
                    LoginMainActivity_.this.clear();
                }
            });
        }
        View view4 = this.nextStep;
        if (view4 != null) {
            view4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view5) {
                    LoginMainActivity_.this.nextStep();
                }
            });
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view5) {
                    LoginMainActivity_.this.back();
                }
            });
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view5) {
                    LoginMainActivity_.this.loginQQLayout();
                }
            });
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view5) {
                    LoginMainActivity_.this.loginWechatLayout();
                }
            });
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.LoginMainActivity_.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view5) {
                    LoginMainActivity_.this.loginWeiboLayout();
                }
            });
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
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
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void showKeyborad(final EditText commentEditText) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.showKeyborad(commentEditText);
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.15
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.showLoding();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.16
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.showLodingDismis();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.LoginMainActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.LoginMainActivity_.17
            @Override // java.lang.Runnable
            public void run() {
                LoginMainActivity_.super.showMessage(message);
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
