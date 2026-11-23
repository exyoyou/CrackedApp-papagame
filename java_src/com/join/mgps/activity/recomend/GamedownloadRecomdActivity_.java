package com.join.mgps.activity.recomend;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class GamedownloadRecomdActivity_ extends GamedownloadRecomdActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_NAME_EXTRA = "gameName";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) GamedownloadRecomdActivity_.class);
        }

        public IntentBuilder_ gameName(String gameName) {
            return (IntentBuilder_) super.extra("gameName", gameName);
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
            super(fragment.getActivity(), (Class<?>) GamedownloadRecomdActivity_.class);
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
        if (extras == null || !extras.containsKey("gameName")) {
            return;
        }
        this.gameName = extras.getString("gameName");
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
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
        setContentView(R.layout.game_download_recomd_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.close = (ImageView) hasViews.internalFindViewById(R.id.close);
        this.close3 = (ImageView) hasViews.internalFindViewById(R.id.close3);
        this.icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.icon);
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.speedLayout = hasViews.internalFindViewById(R.id.speedLayout);
        this.downNumber = (TextView) hasViews.internalFindViewById(R.id.downNumber);
        this.tip = (TextView) hasViews.internalFindViewById(R.id.tip);
        this.seetext = (TextView) hasViews.internalFindViewById(R.id.seetext);
        this.close2 = hasViews.internalFindViewById(R.id.close2);
        this.main = hasViews.internalFindViewById(R.id.main);
        this.xx = hasViews.internalFindViewById(R.id.xx);
        this.appbar = (AppBarLayout) hasViews.internalFindViewById(R.id.appbar);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.downloadAcc);
        ImageView imageView = this.close;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GamedownloadRecomdActivity_.this.close();
                }
            });
        }
        View view = this.close2;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    GamedownloadRecomdActivity_.this.close2();
                }
            });
        }
        ImageView imageView2 = this.close3;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    GamedownloadRecomdActivity_.this.close3();
                }
            });
        }
        View view2 = this.main;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    GamedownloadRecomdActivity_.this.main();
                }
            });
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    GamedownloadRecomdActivity_.this.downloadAcc();
                }
            });
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.activity.recomend.GamedownloadRecomdActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
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
