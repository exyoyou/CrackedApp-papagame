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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DownloadArgs;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class QuarkPromptActivity_ extends QuarkPromptActivity implements xc.a, zc.a, zc.b {
    public static final String ARGS_EXTRA = "args";
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuarkPromptActivity_.this.v_quark_down();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuarkPromptActivity_.this.tvDownloadNormal();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QuarkPromptActivity_.super.updateDownloadBtn();
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55534a;

        public d(Context context) {
            super(context, (Class<?>) QuarkPromptActivity_.class);
        }

        public d a(DownloadArgs args) {
            return (d) super.extra(QuarkPromptActivity_.ARGS_EXTRA, args);
        }

        public d b(String gameId) {
            return (d) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55534a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) QuarkPromptActivity_.class);
            this.f55534a = fragment;
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
            if (extras.containsKey(ARGS_EXTRA)) {
                this.args = (DownloadArgs) extras.getSerializable(ARGS_EXTRA);
            }
        }
    }

    public static d intent(Context context) {
        return new d(context);
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
        setContentView(R.layout.activity_quark_prompt);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.tvDownloadQuark = (TextView) hasViews.internalFindViewById(R.id.tvDownloadQuark);
        this.tvDownloadNormal = (TextView) hasViews.internalFindViewById(R.id.tvDownloadNormal);
        this.tv_count_down = (TextView) hasViews.internalFindViewById(R.id.tv_count_down);
        this.tv_count_desc = (TextView) hasViews.internalFindViewById(R.id.tv_count_desc);
        this.container = hasViews.internalFindViewById(R.id.container);
        this.rv_tip_list = (RecyclerView) hasViews.internalFindViewById(R.id.rv_tip_list);
        this.tv_count_pre = (TextView) hasViews.internalFindViewById(R.id.tv_count_pre);
        this.tv_file_name = (TextView) hasViews.internalFindViewById(R.id.tv_file_name);
        this.tv_file_time = (TextView) hasViews.internalFindViewById(R.id.tv_file_time);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.v_quark_down);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        TextView textView = this.tvDownloadNormal;
        if (textView != null) {
            textView.setOnClickListener(new b());
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.QuarkPromptActivity
    public void updateDownloadBtn() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static d intent(Fragment supportFragment) {
        return new d(supportFragment);
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
