package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.UpLoadGameConfig;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class UploadActivity_ extends UploadActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateUIReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.UploadActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f56366b = "upload_result";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UploadActivity_.this.updateUI((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getInt("upload_result"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.stopupload();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.re_continue_upload();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.continue_upload();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.reupload();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.upLoad();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.showToast();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.uploadFinishInUI();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadActivity_.super.uploadFaildInUI();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UploadActivity_.super.zipFile();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f56377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UpLoadGameConfig f56378c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ File f56379d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final Context val$context, final UpLoadGameConfig val$upLoadGameConfig, final File val$file) {
            super(id2, delay, serial);
            this.f56377b = val$context;
            this.f56378c = val$upLoadGameConfig;
            this.f56379d = val$file;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UploadActivity_.super.syncUpLoadInfo(this.f56377b, this.f56378c, this.f56379d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.gameType_lay();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.platformType_lay();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.file_lay();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.gameIcon_lay();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.img_lay();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.backImage();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.uploadDsc();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadActivity_.this.uploadBtn();
        }
    }

    public static class s extends org.androidannotations.api.builder.a<s> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56389a;

        public s(Context context) {
            super(context, (Class<?>) UploadActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56389a;
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

        public s(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) UploadActivity_.class);
            this.f56389a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        UploadActivity.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.intentFilter1_.addAction(UploadActivity.UPLOAD_RECEIVE);
    }

    public static s intent(Context context) {
        return new s(context);
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
        setContentView(R.layout.upload_layout);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        unregisterReceiver(this.updateUIReceiver_);
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        registerReceiver(this.updateUIReceiver_, this.intentFilter1_);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.gameType = (TextView) hasViews.internalFindViewById(R.id.gameType);
        this.platformType = (TextView) hasViews.internalFindViewById(R.id.platformType);
        this.fileName = (TextView) hasViews.internalFindViewById(R.id.fileName);
        this.gameIcon = (TextView) hasViews.internalFindViewById(R.id.gameIcon);
        this.img_1 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_1);
        this.img_2 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_2);
        this.img_3 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_3);
        this.gameName = (EditText) hasViews.internalFindViewById(R.id.gameName);
        this.gameDsc = (EditText) hasViews.internalFindViewById(R.id.gameDsc);
        this.lay_1 = (ScrollView) hasViews.internalFindViewById(R.id.lay_1);
        this.lay_2 = (LinearLayout) hasViews.internalFindViewById(R.id.lay_2);
        this.lay_3 = (LinearLayout) hasViews.internalFindViewById(R.id.lay_3);
        this.lay_4 = (LinearLayout) hasViews.internalFindViewById(R.id.lay_4);
        this.dscIngTxt = (TextView) hasViews.internalFindViewById(R.id.dscIngTxt);
        this.dscFaildTxt = (TextView) hasViews.internalFindViewById(R.id.dscFaildTxt);
        this.dscSuccessTxt = (TextView) hasViews.internalFindViewById(R.id.dscSuccessTxt);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.gameType_lay);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.platformType_lay);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.file_lay);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.gameIcon_lay);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.img_lay);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.backImage);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.uploadDsc);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.uploadBtn);
        View viewInternalFindViewById9 = hasViews.internalFindViewById(R.id.stopupload);
        View viewInternalFindViewById10 = hasViews.internalFindViewById(R.id.re_continue_upload);
        View viewInternalFindViewById11 = hasViews.internalFindViewById(R.id.continue_upload);
        View viewInternalFindViewById12 = hasViews.internalFindViewById(R.id.reupload);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new l());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new m());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new n());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new o());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new p());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new q());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new r());
        }
        if (viewInternalFindViewById9 != null) {
            viewInternalFindViewById9.setOnClickListener(new a());
        }
        if (viewInternalFindViewById10 != null) {
            viewInternalFindViewById10.setOnClickListener(new b());
        }
        if (viewInternalFindViewById11 != null) {
            viewInternalFindViewById11.setOnClickListener(new c());
        }
        if (viewInternalFindViewById12 != null) {
            viewInternalFindViewById12.setOnClickListener(new d());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void showToast() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.join.mgps.activity.UploadActivity
    public void syncUpLoadInfo(final Context context, final UpLoadGameConfig upLoadGameConfig, final File file) {
        org.androidannotations.api.a.l(new j("", 0L, "", context, upLoadGameConfig, file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void upLoad() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void uploadFaildInUI() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void uploadFinishInUI() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UploadActivity
    public void zipFile() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    public static s intent(Fragment supportFragment) {
        return new s(supportFragment);
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
