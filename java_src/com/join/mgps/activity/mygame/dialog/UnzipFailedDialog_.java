package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class UnzipFailedDialog_ extends UnzipFailedDialog implements a, zc.a, b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) UnzipFailedDialog_.class);
        }

        public IntentBuilder_ from(int from) {
            return (IntentBuilder_) super.extra("from", from);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
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
            super(fragment.getActivity(), (Class<?>) UnzipFailedDialog_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        ((UnzipFailedDialog) this).prefDef_ = new PrefDef_(this);
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.mygame.dialog.UnzipFailedDialog
    public void getPrivateDomain(final String gameId, final int location) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.8
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UnzipFailedDialog_.super.getPrivateDomain(gameId, location);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
        setContentView(R.layout.wufungame_unzipfailed_dialog);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.moreSelecter = (LinearLayout) hasViews.internalFindViewById(R.id.moreSelecter);
        this.message = (TextView) hasViews.internalFindViewById(R.id.message);
        this.gameName = (TextView) hasViews.internalFindViewById(R.id.gameName);
        this.startButn = (TextView) hasViews.internalFindViewById(R.id.startButn);
        this.goH5 = (TextView) hasViews.internalFindViewById(R.id.goH5);
        this.icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.icon);
        this.sdv_image = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_image);
        this.llReUnzip = (LinearLayout) hasViews.internalFindViewById(R.id.llReUnzip);
        this.main = hasViews.internalFindViewById(R.id.main);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.tvReUnzip);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.tvReDownload);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.close);
        TextView textView = this.startButn;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.startButn();
                }
            });
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.tvReUnzip();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.tvReDownload();
                }
            });
        }
        TextView textView2 = this.goH5;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.goH5();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.close();
                }
            });
        }
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
    @Override // com.join.mgps.activity.mygame.dialog.UnzipFailedDialog
    public void showDefaultUI() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.7
            @Override // java.lang.Runnable
            public void run() {
                UnzipFailedDialog_.super.showDefaultUI();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.mygame.dialog.UnzipFailedDialog
    public void showDomainUI(final DomainInfoBean domainInfoBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.6
            @Override // java.lang.Runnable
            public void run() {
                UnzipFailedDialog_.super.showDomainUI(domainInfoBean);
            }
        }, 0L);
    }

    public static IntentBuilder_ intent(Fragment supportFragment) {
        return new IntentBuilder_(supportFragment);
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
