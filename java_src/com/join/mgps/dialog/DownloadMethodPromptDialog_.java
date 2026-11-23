package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadMethodPromptDialog_ extends DownloadMethodPromptDialog implements xc.a, zc.a, zc.b {
    public static final String DATA_EXTRA = "data";
    public static final String DISABLE_SHOW_SPEED_UP_PROMPT_EXTRA = "disableShowSpeedUpPrompt";
    public static final String EXT_EXTRA = "ext";
    public static final String FROM_EXTRA = "_from";
    public static final String FROM_RECOM_DOWN_EXTRA = "fromRecomDown";
    public static final String FROM_TYPE_EXTRA = "_from_type";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IS_FORCE_SHOW_EXTRA = "isForceShow";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f67312b;

        a(final QueryDownloadInfoResponseData val$data) {
            this.f67312b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodPromptDialog_.super.update(this.f67312b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadMethodPromptDialog_.super.load();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.close();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.outside();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.download();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.protocol();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.res();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.protocolCheckPlaceholder();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.textView77();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.noPromptCheckPlaceholder();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f67323b;

        k(final String val$msg) {
            this.f67323b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodPromptDialog_.super.T(this.f67323b);
        }
    }

    public static class l extends org.androidannotations.api.builder.a<l> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f67325a;

        public l(Context context) {
            super(context, (Class<?>) DownloadMethodPromptDialog_.class);
        }

        public l a(int _from) {
            return (l) super.extra("_from", _from);
        }

        public l b(int _from_type) {
            return (l) super.extra("_from_type", _from_type);
        }

        public l c(QueryDownloadInfoResponseData data) {
            return (l) super.extra("data", data);
        }

        public l d(boolean disableShowSpeedUpPrompt) {
            return (l) super.extra("disableShowSpeedUpPrompt", disableShowSpeedUpPrompt);
        }

        public l e(String ext) {
            return (l) super.extra("ext", ext);
        }

        public l f(boolean fromRecomDown) {
            return (l) super.extra("fromRecomDown", fromRecomDown);
        }

        public l g(String gameId) {
            return (l) super.extra("gameId", gameId);
        }

        public l h(boolean isForceShow) {
            return (l) super.extra("isForceShow", isForceShow);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f67325a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DownloadMethodPromptDialog_.class);
            this.f67325a = fragment;
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
        }
    }

    public static l intent(Context context) {
        return new l(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new k(msg), 0L);
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
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void load() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.dialog_download_method_prompt);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.protocolCheck = hasViews.internalFindViewById(R.id.protocolCheck);
        this.noPromptCheck = hasViews.internalFindViewById(R.id.noPromptCheck);
        this.noPrompt = hasViews.internalFindViewById(R.id.noPrompt);
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.name = (TextView) hasViews.internalFindViewById(R.id.name);
        this.link = (TextView) hasViews.internalFindViewById(R.id.link);
        this.download = (TextView) hasViews.internalFindViewById(R.id.download);
        this.subTitle = (TextView) hasViews.internalFindViewById(R.id.subTitle);
        this.userProtocolTxt = (TextView) hasViews.internalFindViewById(R.id.userProtocolTxt);
        this.protocol = (TextView) hasViews.internalFindViewById(R.id.protocol);
        this.constraintLayout = hasViews.internalFindViewById(R.id.constraintLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.close);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.outside);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.res);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.protocolCheckPlaceholder);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.textView77);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.noPromptCheckPlaceholder);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        TextView textView = this.download;
        if (textView != null) {
            textView.setOnClickListener(new e());
        }
        TextView textView2 = this.protocol;
        if (textView2 != null) {
            textView2.setOnClickListener(new f());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new g());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new h());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new i());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void update(final QueryDownloadInfoResponseData data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }

    public static l intent(Fragment supportFragment) {
        return new l(supportFragment);
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
