package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DetailResultBean;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CheckInviteDialogActivity_ extends CheckInviteDialogActivity implements xc.a, zc.a, zc.b {
    public static final String DATA_EXTRA = "data";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.upDateUI();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.showLodingFailed();
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.goToGame();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f50436b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final DetailResultBean val$detialResultBean) {
            super(id2, delay, serial);
            this.f50436b = val$detialResultBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.checkRomAndPlug(this.f50436b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CheckInviteDialogActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.dialog_button_cancle();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.dialog_button_ok();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.relodingimag();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CheckInviteDialogActivity_.this.setNetwork();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f50443b;

        j(final GameRoom val$gameRoom) {
            this.f50443b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.showHintDialog(this.f50443b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f50445b;

        k(final ArenaResponse val$response) {
            this.f50445b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.handleError(this.f50445b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50447b;

        l(final String val$info) {
            this.f50447b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.showToast(this.f50447b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50449b;

        m(final int val$time) {
            this.f50449b = val$time;
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.initUI(this.f50449b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity_.super.go();
        }
    }

    public static class o extends org.androidannotations.api.builder.a<o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50452a;

        public o(Context context) {
            super(context, (Class<?>) CheckInviteDialogActivity_.class);
        }

        public o a(String data) {
            return (o) super.extra("data", data);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50452a;
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

        public o(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CheckInviteDialogActivity_.class);
            this.f50452a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("data")) {
            return;
        }
        this.data = extras.getString("data");
    }

    public static o intent(Context context) {
        return new o(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void checkRomAndPlug(final DetailResultBean detialResultBean) {
        org.androidannotations.api.a.l(new d("", 0L, "", detialResultBean));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void getData() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void go() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void goToGame() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void handleError(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new k(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void initUI(final int time) {
        org.androidannotations.api.b.e("", new m(time), 0L);
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
        setContentView(R.layout.net_whole_invite_dialog);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.dialog_content = (TextView) hasViews.internalFindViewById(R.id.dialog_content);
        this.dialog_button_cancle = (Button) hasViews.internalFindViewById(R.id.dialog_button_cancle);
        this.dialog_button_ok = (Button) hasViews.internalFindViewById(R.id.dialog_button_ok);
        this.romImgIv = (SimpleDraweeView) hasViews.internalFindViewById(R.id.romImgIv);
        this.romNameTv = (TextView) hasViews.internalFindViewById(R.id.romNameTv);
        this.romSizeTv = (TextView) hasViews.internalFindViewById(R.id.romSizeTv);
        this.plugImgIv = (SimpleDraweeView) hasViews.internalFindViewById(R.id.plugImgIv);
        this.plugNameTv = (TextView) hasViews.internalFindViewById(R.id.plugNameTv);
        this.plugSizeTv = (TextView) hasViews.internalFindViewById(R.id.plugSizeTv);
        this.game_lay = (LinearLayout) hasViews.internalFindViewById(R.id.game_lay);
        this.rom_lay = (LinearLayout) hasViews.internalFindViewById(R.id.rom_lay);
        this.plug_lay = (LinearLayout) hasViews.internalFindViewById(R.id.plug_lay);
        this.loading_lay = (LinearLayout) hasViews.internalFindViewById(R.id.loading_lay);
        this.dialog_content_2 = (TextView) hasViews.internalFindViewById(R.id.dialog_content_2);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        Button button = this.dialog_button_cancle;
        if (button != null) {
            button.setOnClickListener(new f());
        }
        Button button2 = this.dialog_button_ok;
        if (button2 != null) {
            button2.setOnClickListener(new g());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        afterViews();
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void showHintDialog(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new j(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new l(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CheckInviteDialogActivity
    public void upDateUI() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    public static o intent(Fragment supportFragment) {
        return new o(supportFragment);
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
