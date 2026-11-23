package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class ChangeAccountNickNameActivity_ extends ChangeAccountNickNameActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) ChangeAccountNickNameActivity_.class);
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
            super(fragment.getActivity(), (Class<?>) ChangeAccountNickNameActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.error(message);
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.change_account_nickname_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.close = hasViews.internalFindViewById(R.id.close);
        this.nickNameBution = (TextView) hasViews.internalFindViewById(R.id.nickNameBution);
        this.nickName = (EditText) hasViews.internalFindViewById(R.id.nickName);
        this.userIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIcon);
        View view = this.close;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.close();
                }
            });
        }
        SimpleDraweeView simpleDraweeView = this.userIcon;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.userIcon();
                }
            });
        }
        TextView textView = this.nickNameBution;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ChangeAccountNickNameActivity_.this.nickNameBution();
                }
            });
        }
        afterview();
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
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void showFinishPage(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.showFinishPage(accountBean);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.ChangeAccountNickNameActivity
    public void showKeyborad(final EditText commentEditText) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                ChangeAccountNickNameActivity_.super.showKeyborad(commentEditText);
            }
        }, 600L);
    }

    public static IntentBuilder_ intent(Fragment supportFragment) {
        return new IntentBuilder_(supportFragment);
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
