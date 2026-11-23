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
import com.join.mgps.dto.ExtInfoBean;
import com.join.mgps.dto.WebDiskInfo;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class QuarkDownGameActivity_ extends QuarkDownGameActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_INFO_EXTRA = "extInfo";
    public static final String GAME_ICON_URL_EXTRA = "gameIconUrl";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GAME_NAME_EXTRA = "gameName";
    public static final String WEB_DISK_INFO_EXTRA = "web_disk_info";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class a extends org.androidannotations.api.builder.a<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55504a;

        public a(Context context) {
            super(context, (Class<?>) QuarkDownGameActivity_.class);
        }

        public a a(ExtInfoBean extInfo) {
            return (a) super.extra(QuarkDownGameActivity_.EXT_INFO_EXTRA, extInfo);
        }

        public a b(String gameIconUrl) {
            return (a) super.extra("gameIconUrl", gameIconUrl);
        }

        public a c(String gameId) {
            return (a) super.extra("gameId", gameId);
        }

        public a d(String gameName) {
            return (a) super.extra("gameName", gameName);
        }

        public a e(WebDiskInfo web_disk_info) {
            return (a) super.extra(QuarkDownGameActivity_.WEB_DISK_INFO_EXTRA, web_disk_info);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55504a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) QuarkDownGameActivity_.class);
            this.f55504a = fragment;
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
            if (extras.containsKey(WEB_DISK_INFO_EXTRA)) {
                this.web_disk_info = (WebDiskInfo) extras.getSerializable(WEB_DISK_INFO_EXTRA);
            }
            if (extras.containsKey(EXT_INFO_EXTRA)) {
                this.extInfo = (ExtInfoBean) extras.getSerializable(EXT_INFO_EXTRA);
            }
            if (extras.containsKey("gameName")) {
                this.gameName = extras.getString("gameName");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("gameIconUrl")) {
                this.gameIconUrl = extras.getString("gameIconUrl");
            }
        }
    }

    public static a intent(Context context) {
        return new a(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_quark_down_game);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.v_close1 = hasViews.internalFindViewById(R.id.v_close1);
        this.tv_download = (TextView) hasViews.internalFindViewById(R.id.tv_download);
        this.tv_not_ask = (TextView) hasViews.internalFindViewById(R.id.tv_not_ask);
        this.tv_desc = (TextView) hasViews.internalFindViewById(R.id.tv_desc);
        this.sdv_game_icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_game_icon);
        this.tv_game_name = (TextView) hasViews.internalFindViewById(R.id.tv_game_name);
        this.tv_game_price = (TextView) hasViews.internalFindViewById(R.id.tv_game_price);
        this.tv_label = (TextView) hasViews.internalFindViewById(R.id.tv_label);
        ((QuarkDownGameActivity) this).contentView = hasViews.internalFindViewById(R.id.cl_content);
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    public static a intent(Fragment supportFragment) {
        return new a(supportFragment);
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
