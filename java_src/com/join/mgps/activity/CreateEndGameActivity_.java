package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BossBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.UserGameListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateEndGameActivity_ extends CreateEndGameActivity implements xc.a, zc.a, zc.b {
    public static final String CONFIG_BEAN_EXTRA = "configBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51117b;

        a(final List val$list) {
            this.f51117b = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameActivity_.super.updateBossUi(this.f51117b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51119b;

        b(final String val$msg) {
            this.f51119b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameActivity_.super.showToast(this.f51119b);
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51121b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final boolean val$update) {
            super(id2, delay, serial);
            this.f51121b = val$update;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CreateEndGameActivity_.super.loadUserGamesData(this.f51121b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51123b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final boolean val$update) {
            super(id2, delay, serial);
            this.f51123b = val$update;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CreateEndGameActivity_.super.loadBossData(this.f51123b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.back();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.onClickQuestion();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.chooseSlot();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.onClickNext();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.onDeleteSlot();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.chooseBoss();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.chooseGame();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CreateEndGameActivity_.this.onChooseTime();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51133b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f51134c;

        m(final boolean val$update, final List val$list) {
            this.f51133b = val$update;
            this.f51134c = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CreateEndGameActivity_.super.updateGamesUi(this.f51133b, this.f51134c);
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51136a;

        public n(Context context) {
            super(context, (Class<?>) CreateEndGameActivity_.class);
        }

        public n a(GameMainV4DataBean.EndGameConfigBean configBean) {
            return (n) super.extra("configBean", configBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51136a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CreateEndGameActivity_.class);
            this.f51136a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("configBean")) {
            return;
        }
        this.configBean = (GameMainV4DataBean.EndGameConfigBean) extras.getSerializable("configBean");
    }

    public static n intent(Context context) {
        return new n(context);
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
    @Override // com.join.mgps.activity.CreateEndGameActivity
    public void loadBossData(final boolean update) {
        org.androidannotations.api.a.l(new d("", 0L, "", update));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameActivity
    public void loadUserGamesData(final boolean update) {
        org.androidannotations.api.a.l(new c("", 0L, "", update));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_create_end_game);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.tv_time_label = (TextView) hasViews.internalFindViewById(R.id.tv_time_label);
        this.tv_time = (TextView) hasViews.internalFindViewById(R.id.tv_time);
        this.iv_arrow = (ImageView) hasViews.internalFindViewById(R.id.iv_arrow);
        this.iv_arrow_game = (ImageView) hasViews.internalFindViewById(R.id.iv_arrow_game);
        this.ll_boss_info = (LinearLayout) hasViews.internalFindViewById(R.id.ll_boss_info);
        this.tv_boss_title = (TextView) hasViews.internalFindViewById(R.id.tv_boss_title);
        this.tv_boss_sub_title = (TextView) hasViews.internalFindViewById(R.id.tv_boss_sub_title);
        this.tv_choose_boos = (TextView) hasViews.internalFindViewById(R.id.tv_choose_boos);
        this.iv_archive_image = (ImageView) hasViews.internalFindViewById(R.id.iv_archive_image);
        this.rl_slot = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_slot);
        this.ll_choose_slot = (LinearLayout) hasViews.internalFindViewById(R.id.ll_choose_slot);
        this.iv_question = (ImageView) hasViews.internalFindViewById(R.id.iv_question);
        this.tv_choose_game = (TextView) hasViews.internalFindViewById(R.id.tv_choose_game);
        this.sdv_image_game = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_image_game);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.iv_back);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.btn_next);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.iv_delete_slot);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.cv_boss);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.cv_game);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.cv_time);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        ImageView imageView = this.iv_question;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        LinearLayout linearLayout = this.ll_choose_slot;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new g());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new h());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new i());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new j());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new k());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new l());
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
    @Override // com.join.mgps.activity.CreateEndGameActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new b(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameActivity
    public void updateBossUi(final List<BossBean> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CreateEndGameActivity
    public void updateGamesUi(final boolean update, final List<UserGameListBean> list) {
        org.androidannotations.api.b.e("", new m(update, list), 0L);
    }

    public static n intent(Fragment supportFragment) {
        return new n(supportFragment);
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
