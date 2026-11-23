package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadMethodMultiDialog_ extends DownloadMethodMultiDialog implements xc.a, zc.a, zc.b {
    public static final String DATA_EXTRA = "data";
    public static final String DISABLE_SHOW_SPEED_UP_PROMPT_EXTRA = "disableShowSpeedUpPrompt";
    public static final String DOWNLOAD_ARGS_EXTRA = "downloadArgs";
    public static final String DOWNLOAD_HTMLS_EXTRA = "downloadHtmls";
    public static final String EXT_EXTRA = "ext";
    public static final String FROM_EXTRA = "_from";
    public static final String FROM_RECOM_DOWN_EXTRA = "fromRecomDown";
    public static final String FROM_TYPE_EXTRA = "_from_type";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String HIDE_NO_MORE_EXTRA = "hideNoMore";
    public static final String IS_FORCE_SHOW_EXTRA = "isForceShow";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadMethodMultiDialog_.super.load();
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
            DownloadMethodMultiDialog_.this.close();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.outside();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.download();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.protocol();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.res();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.checkboxAgreement();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodMultiDialog_.this.llNoMore();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f67305b;

        i(final String val$msg) {
            this.f67305b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodMultiDialog_.super.T(this.f67305b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f67307b;

        j(final QueryDownloadInfoResponseData val$data) {
            this.f67307b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodMultiDialog_.super.update(this.f67307b);
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f67309a;

        public k(Context context) {
            super(context, (Class<?>) DownloadMethodMultiDialog_.class);
        }

        public k a(int _from) {
            return (k) super.extra("_from", _from);
        }

        public k b(int _from_type) {
            return (k) super.extra("_from_type", _from_type);
        }

        public k c(QueryDownloadInfoResponseData data) {
            return (k) super.extra("data", data);
        }

        public k d(boolean disableShowSpeedUpPrompt) {
            return (k) super.extra("disableShowSpeedUpPrompt", disableShowSpeedUpPrompt);
        }

        public k e(DownloadGameArgsBean downloadArgs) {
            return (k) super.extra(DownloadMethodMultiDialog_.DOWNLOAD_ARGS_EXTRA, downloadArgs);
        }

        public k f(ArrayList<String> downloadHtmls) {
            return (k) super.extra(DownloadMethodMultiDialog_.DOWNLOAD_HTMLS_EXTRA, downloadHtmls);
        }

        public k g(String ext) {
            return (k) super.extra("ext", ext);
        }

        public k h(boolean fromRecomDown) {
            return (k) super.extra("fromRecomDown", fromRecomDown);
        }

        public k i(String gameId) {
            return (k) super.extra("gameId", gameId);
        }

        public k j(boolean hideNoMore) {
            return (k) super.extra(DownloadMethodMultiDialog_.HIDE_NO_MORE_EXTRA, hideNoMore);
        }

        public k k(boolean isForceShow) {
            return (k) super.extra("isForceShow", isForceShow);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f67309a;
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
            super(fragment.getActivity(), (Class<?>) DownloadMethodMultiDialog_.class);
            this.f67309a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.pref = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("ext")) {
                this.ext = extras.getString("ext");
            }
            if (extras.containsKey("isForceShow")) {
                this.isForceShow = extras.getBoolean("isForceShow");
            }
            if (extras.containsKey("fromRecomDown")) {
                this.fromRecomDown = extras.getBoolean("fromRecomDown");
            }
            if (extras.containsKey(DOWNLOAD_ARGS_EXTRA)) {
                this.downloadArgs = (DownloadGameArgsBean) extras.getSerializable(DOWNLOAD_ARGS_EXTRA);
            }
            if (extras.containsKey("disableShowSpeedUpPrompt")) {
                this.disableShowSpeedUpPrompt = extras.getBoolean("disableShowSpeedUpPrompt");
            }
            if (extras.containsKey("data")) {
                this.data = (QueryDownloadInfoResponseData) extras.getSerializable("data");
            }
            if (extras.containsKey("_from")) {
                this._from = extras.getInt("_from");
            }
            if (extras.containsKey("_from_type")) {
                this._from_type = extras.getInt("_from_type");
            }
            if (extras.containsKey(DOWNLOAD_HTMLS_EXTRA)) {
                this.downloadHtmls = extras.getStringArrayList(DOWNLOAD_HTMLS_EXTRA);
            }
            if (extras.containsKey(HIDE_NO_MORE_EXTRA)) {
                this.hideNoMore = extras.getBoolean(HIDE_NO_MORE_EXTRA);
            }
        }
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.dialog.DownloadMethodMultiDialog
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new i(msg), 0L);
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
    @Override // com.join.mgps.dialog.DownloadMethodMultiDialog
    public void load() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // com.join.mgps.dialog.DownloadMethodMultiDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.layout_sheet_game_resource);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.link = (TextView) hasViews.internalFindViewById(R.id.link);
        this.download = (TextView) hasViews.internalFindViewById(R.id.download);
        this.subTitle = (TextView) hasViews.internalFindViewById(R.id.subTitle);
        this.userProtocolTxt = (TextView) hasViews.internalFindViewById(R.id.userProtocolTxt);
        this.protocol = (TextView) hasViews.internalFindViewById(R.id.protocol);
        this.checkboxAgreement = (ImageView) hasViews.internalFindViewById(R.id.checkboxAgreement);
        this.checkboxNoMore = (ImageView) hasViews.internalFindViewById(R.id.checkboxNoMore);
        this.llAgreement = (LinearLayout) hasViews.internalFindViewById(R.id.llAgreement);
        this.llNoMore = (LinearLayout) hasViews.internalFindViewById(R.id.llNoMore);
        this.constraintLayout = hasViews.internalFindViewById(R.id.constraintLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.close);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.outside);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.res);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new c());
        }
        TextView textView = this.download;
        if (textView != null) {
            textView.setOnClickListener(new d());
        }
        TextView textView2 = this.protocol;
        if (textView2 != null) {
            textView2.setOnClickListener(new e());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new f());
        }
        ImageView imageView = this.checkboxAgreement;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        LinearLayout linearLayout = this.llNoMore;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.dialog.DownloadMethodMultiDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.dialog.DownloadMethodMultiDialog
    public void update(final QueryDownloadInfoResponseData data) {
        org.androidannotations.api.b.e("", new j(data), 0L);
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
