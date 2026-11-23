package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class PlugDownDialogAcitivity_ extends PlugDownDialogAcitivity implements a, zc.a, b {
    public static final String DOWNLOAD_TYPE_EXTRA = "downloadType";
    public static final String GAMEID_EXTRA = "gameid";
    public static final String PLUG_NUMBER_EXTRA = "plugNumber";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) PlugDownDialogAcitivity_.class);
        }

        public IntentBuilder_ downloadType(int downloadType) {
            return (IntentBuilder_) super.extra(PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, downloadType);
        }

        public IntentBuilder_ gameid(String gameid) {
            return (IntentBuilder_) super.extra("gameid", gameid);
        }

        public IntentBuilder_ plugNumber(String plugNumber) {
            return (IntentBuilder_) super.extra("plugNumber", plugNumber);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int requestCode) {
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
            return new f(this.context);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) PlugDownDialogAcitivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("plugNumber")) {
                this.plugNumber = extras.getString("plugNumber");
            }
            if (extras.containsKey("gameid")) {
                ((PlugDownDialogAcitivity) this).gameid = extras.getString("gameid");
            }
            if (extras.containsKey(DOWNLOAD_TYPE_EXTRA)) {
                this.downloadType = extras.getInt(DOWNLOAD_TYPE_EXTRA);
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity
    public void downloadGameNotSelfSupport(final String gameId, final DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.6
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    PlugDownDialogAcitivity_.super.downloadGameNotSelfSupport(gameId, downloadTask);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
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
    @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity
    public void notifyUi() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.3
            @Override // java.lang.Runnable
            public void run() {
                PlugDownDialogAcitivity_.super.notifyUi();
            }
        }, 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
        setContentView(R.layout.plugdown_dialog_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.progressBarZip = (ProgressBar) hasViews.internalFindViewById(R.id.progressBarZip);
        this.progressBar = (ProgressBar) hasViews.internalFindViewById(R.id.progressBar);
        this.appSize = (TextView) hasViews.internalFindViewById(R.id.appSize);
        this.lodingInfo = (TextView) hasViews.internalFindViewById(R.id.lodingInfo);
        this.cancle = (TextView) hasViews.internalFindViewById(R.id.cancle);
        this.ok = (TextView) hasViews.internalFindViewById(R.id.ok);
        this.info = (TextView) hasViews.internalFindViewById(R.id.info);
        TextView textView = this.cancle;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PlugDownDialogAcitivity_.this.cancle();
                }
            });
        }
        TextView textView2 = this.ok;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PlugDownDialogAcitivity_.this.ok();
                }
            });
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
    @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.4
            @Override // java.lang.Runnable
            public void run() {
                PlugDownDialogAcitivity_.super.showTost(message);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity
    public void updateUnzipRes(final long size, final long unzipSize, final int progress) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_.5
            @Override // java.lang.Runnable
            public void run() {
                PlugDownDialogAcitivity_.super.updateUnzipRes(size, unzipSize, progress);
            }
        }, 0L);
    }

    public static IntentBuilder_ intent(Fragment supportFragment) {
        return new IntentBuilder_(supportFragment);
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
