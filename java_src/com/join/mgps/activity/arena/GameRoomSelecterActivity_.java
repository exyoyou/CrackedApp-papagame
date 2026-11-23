package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;

/* JADX INFO: loaded from: classes4.dex */
public final class GameRoomSelecterActivity_ extends GameRoomSelecterActivity implements xc.a, zc.a, zc.b {
    public static final String M_GAME_INFO_EXTRA = "mGameInfo";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class a extends org.androidannotations.api.builder.a<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56664a;

        public a(Context context) {
            super(context, (Class<?>) GameRoomSelecterActivity_.class);
        }

        public a a(GameInfoBean mGameInfo) {
            return (a) super.extra("mGameInfo", mGameInfo);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int requestCode) {
            Fragment fragment = this.f56664a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameRoomSelecterActivity_.class);
            this.f56664a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("mGameInfo")) {
            return;
        }
        this.mGameInfo = (GameInfoBean) extras.getSerializable("mGameInfo");
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.newarena_gameroom_selecter_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.recyclerViewGamelist = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerViewGamelist);
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
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
