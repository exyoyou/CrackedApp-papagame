package com.join.mgps.activity.vipzone;

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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class VipSpecialZoneActivity_ extends VipSpecialZoneActivity implements xc.a, zc.a, zc.b {
    public static final String BOARD_ID_EXTRA = "boardId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) VipSpecialZoneActivity_.class);
        }

        public IntentBuilder_ boardId(int boardId) {
            return (IntentBuilder_) super.extra(VipSpecialZoneActivity_.BOARD_ID_EXTRA, boardId);
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
            super(fragment.getActivity(), (Class<?>) VipSpecialZoneActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(BOARD_ID_EXTRA)) {
            return;
        }
        this.boardId = extras.getInt(BOARD_ID_EXTRA);
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
        setContentView(R.layout.vip_specialzone_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.search = (ImageView) hasViews.internalFindViewById(R.id.search);
        this.filter = hasViews.internalFindViewById(R.id.filter);
        this.filterArr = hasViews.internalFindViewById(R.id.filterArr);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.downloadView);
        this.recyclerView = (XRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.appbar = hasViews.internalFindViewById(R.id.appbar);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VipSpecialZoneActivity_.this.downloadView();
                }
            });
        }
        View view = this.filter;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.filter();
                }
            });
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.back();
                }
            });
        }
        ImageView imageView2 = this.search;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.search();
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.vipzone.VipSpecialZoneActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                VipSpecialZoneActivity_.super.updateDownloadView();
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

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
