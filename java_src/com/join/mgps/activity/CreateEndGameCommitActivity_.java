package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ArchiveListBean;
import com.join.mgps.dto.BossBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateEndGameCommitActivity_ extends CreateEndGameCommitActivity implements xc.a, zc.a, zc.b {
    public static final String ARCHIVE_BEAN_EXTRA = "archiveBean";
    public static final String BOSS_BEAN_EXTRA = "bossBean";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String TIME_EXTRA = "time";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onUploadSuccess();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.dismissUploading();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onCreateSuccess();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51144b;

        d(final String val$msg) {
            this.f51144b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.showToast(this.f51144b);
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51147c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final String val$upFilePath, final int val$type) {
            super(id2, delay, serial);
            this.f51146b = val$upFilePath;
            this.f51147c = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CreateEndGameCommitActivity_.super.uploadFile(this.f51146b, this.f51147c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CreateEndGameCommitActivity_.super.commitCreateEndGame();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51150b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final String val$sourcePath) {
            super(id2, delay, serial);
            this.f51150b = val$sourcePath;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CreateEndGameCommitActivity_.super.compressVideo(this.f51150b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameCommitActivity_.this.back();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameCommitActivity_.this.createEndGame();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameCommitActivity_.this.onDeleteVideo();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameCommitActivity_.this.chooseVideo();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onCompressStart();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51157b;

        m(final int val$progress) {
            this.f51157b = val$progress;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onUpdateProgress(this.f51157b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onCompressSuccess();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51160b;

        o(final int val$type) {
            this.f51160b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onUploadStart(this.f51160b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51162b;

        p(final int val$progress) {
            this.f51162b = val$progress;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameCommitActivity_.super.onUpdateUploadProgress(this.f51162b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51164a;

        public q(Context context) {
            super(context, (Class<?>) CreateEndGameCommitActivity_.class);
        }

        public q a(ArchiveListBean archiveBean) {
            return (q) super.extra(CreateEndGameCommitActivity_.ARCHIVE_BEAN_EXTRA, archiveBean);
        }

        public q b(BossBean bossBean) {
            return (q) super.extra(CreateEndGameCommitActivity_.BOSS_BEAN_EXTRA, bossBean);
        }

        public q c(String gameId) {
            return (q) super.extra("gameId", gameId);
        }

        public q d(Long time) {
            return (q) super.extra("time", time);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51164a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CreateEndGameCommitActivity_.class);
            this.f51164a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey(BOSS_BEAN_EXTRA)) {
                this.bossBean = (BossBean) extras.getSerializable(BOSS_BEAN_EXTRA);
            }
            if (extras.containsKey(ARCHIVE_BEAN_EXTRA)) {
                this.archiveBean = (ArchiveListBean) extras.getSerializable(ARCHIVE_BEAN_EXTRA);
            }
            if (extras.containsKey("time")) {
                ((CreateEndGameCommitActivity) this).time = (Long) extras.getSerializable("time");
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void commitCreateEndGame() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void compressVideo(final String sourcePath) {
        org.androidannotations.api.a.l(new g("", 0L, "", sourcePath));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void dismissUploading() {
        org.androidannotations.api.b.e("", new b(), 0L);
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
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onCompressStart() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onCompressSuccess() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_create_end_game_commit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onCreateSuccess() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onUpdateProgress(final int progress) {
        org.androidannotations.api.b.e("", new m(progress), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onUpdateUploadProgress(final int progress) {
        org.androidannotations.api.b.e("", new p(progress), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onUploadStart(final int type) {
        org.androidannotations.api.b.e("", new o(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void onUploadSuccess() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.et_title = (EditText) hasViews.internalFindViewById(R.id.et_title);
        this.et_desc = (EditText) hasViews.internalFindViewById(R.id.et_desc);
        this.svv_view = (StandardVideoView) hasViews.internalFindViewById(R.id.svv_view);
        this.ll_choose_video = (LinearLayout) hasViews.internalFindViewById(R.id.ll_choose_video);
        this.iv_thumb = (ImageView) hasViews.internalFindViewById(R.id.iv_thumb);
        this.rl_video = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_video);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.iv_back);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.tv_commit);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.iv_delete_video);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new j());
        }
        LinearLayout linearLayout = this.ll_choose_video;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
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
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new d(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameCommitActivity
    public void uploadFile(final String upFilePath, final int type) {
        org.androidannotations.api.a.l(new e("", 0L, "", upFilePath, type));
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
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
