package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameTransferActivity_ extends GameTransferActivity implements xc.a, zc.a, zc.b {
    public static final String FLAG_EXTRA = "Flag";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameTransferActivity_.super.sendGame();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferActivity_.this.onClick(view);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53323b;

        h(final String val$message) {
            this.f53323b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.toast(this.f53323b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f53325b;

        i(final DownloadTask val$downloadTask) {
            this.f53325b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.backAchivedData(this.f53325b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameTransferActivity_.super.showDialog();
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53328a;

        public k(Context context) {
            super(context, (Class<?>) GameTransferActivity_.class);
        }

        public k a(int Flag) {
            return (k) super.extra(GameTransferActivity_.FLAG_EXTRA, Flag);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53328a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameTransferActivity_.class);
            this.f53328a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.powerManager = (PowerManager) getSystemService("power");
        this.gameListAdapter = com.join.mgps.adapter.y2.z(this, null);
        this.histroyGameListAdapter = com.join.mgps.adapter.w2.y(this, null);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(FLAG_EXTRA)) {
            return;
        }
        this.Flag = extras.getInt(FLAG_EXTRA);
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void backAchivedData(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new i(downloadTask), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_transfer);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleTxt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_title_txt);
        this.other_phone_modle_txt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_right_phone_txt);
        this.game_transfer_list = (RecyclerView) hasViews.internalFindViewById(R.id.game_transfer_list_rv);
        this.game_transfer_historyList = (RecyclerView) hasViews.internalFindViewById(R.id.game_transfer_historyList_rv);
        this.left_nagivation_bar_txt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_bottom_navigation_left_txt);
        this.right_nagivation_bar_txt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_bottom_navigation_right_txt);
        this.tansfer_ok_btn = (Button) hasViews.internalFindViewById(R.id.game_transfer_ok_btn);
        this.select_num_txt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_selected_num_txt);
        this.select_all_txt = (TextView) hasViews.internalFindViewById(R.id.game_transfer_list_choose_all_txt);
        this.histroy_hint_rl = (RelativeLayout) hasViews.internalFindViewById(R.id.game_transfer_history_hint_rl);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.game_transfer_list_hint_close_img);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.game_transfer_back_img);
        TextView textView = this.left_nagivation_bar_txt;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        TextView textView2 = this.right_nagivation_bar_txt;
        if (textView2 != null) {
            textView2.setOnClickListener(new c());
        }
        Button button = this.tansfer_ok_btn;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        TextView textView3 = this.select_all_txt;
        if (textView3 != null) {
            textView3.setOnClickListener(new f());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new g());
        }
        doSomeAfterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void sendGame() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.GameTransferActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameTransferActivity
    public void toast(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
