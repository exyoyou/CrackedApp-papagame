package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class EndGameLaunchActivity_ extends EndGameLaunchActivity implements xc.a, zc.a, zc.b {
    public static final String ENDGAME_INFO_EXTRA = "endgameInfo";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String PLAY_BACK_URL_EXTRA = "playBackUrl";
    public static final String START_MODE_EXTRA = "startMode";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity_.super.startPlayBack();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51374b;

        b(final String val$path) {
            this.f51374b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity_.super.toRePlayGame(this.f51374b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity_.super.startEndGame();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51377b;

        d(final int val$p) {
            this.f51377b = val$p;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity_.super.setLoadingProgress(this.f51377b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51379b;

        e(final String val$message) {
            this.f51379b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity_.super.showTost(this.f51379b);
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51381a;

        public f(Context context) {
            super(context, (Class<?>) EndGameLaunchActivity_.class);
        }

        public f a(EndGameBean endgameInfo) {
            return (f) super.extra(EndGameLaunchActivity_.ENDGAME_INFO_EXTRA, endgameInfo);
        }

        public f b(String gameId) {
            return (f) super.extra("gameId", gameId);
        }

        public f c(String playBackUrl) {
            return (f) super.extra(EndGameLaunchActivity_.PLAY_BACK_URL_EXTRA, playBackUrl);
        }

        public f d(int startMode) {
            return (f) super.extra("startMode", startMode);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51381a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) EndGameLaunchActivity_.class);
            this.f51381a = fragment;
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
            if (extras.containsKey(ENDGAME_INFO_EXTRA)) {
                this.endgameInfo = (EndGameBean) extras.getSerializable(ENDGAME_INFO_EXTRA);
            }
            if (extras.containsKey("startMode")) {
                this.startMode = extras.getInt("startMode");
            }
            if (extras.containsKey(PLAY_BACK_URL_EXTRA)) {
                this.playBackUrl = extras.getString(PLAY_BACK_URL_EXTRA);
            }
        }
    }

    public static f intent(Context context) {
        return new f(context);
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
        setContentView(R.layout.activity_end_game_launch);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.ivGameIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivGameIcon);
        this.progress = (FrameLayout) hasViews.internalFindViewById(R.id.progress);
        this.tvLoading = (TextView) hasViews.internalFindViewById(R.id.tvLoading);
        afterviews();
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
    @Override // com.join.mgps.activity.EndGameLaunchActivity
    public void setLoadingProgress(final int p10) {
        org.androidannotations.api.b.e("", new d(p10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameLaunchActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new e(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameLaunchActivity
    public void startEndGame() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameLaunchActivity
    public void startPlayBack() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameLaunchActivity
    public void toRePlayGame(final String path) {
        org.androidannotations.api.b.e("", new b(path), 0L);
    }

    public static f intent(Fragment supportFragment) {
        return new f(supportFragment);
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
