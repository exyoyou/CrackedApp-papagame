package com.join.mgps.activity.recomend;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class RecommendActivity_ extends RecommendActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) RecommendActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
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
            return new org.androidannotations.api.builder.f(this.context);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) RecommendActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void delayRequest() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivity_.super.delayRequest();
            }
        }, BaseCloudFileManager.ACK_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void downv2(final boolean onlyDownNet) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 2000L, "") { // from class: com.join.mgps.activity.recomend.RecommendActivity_.8
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    RecommendActivity_.super.downv2(onlyDownNet);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void finishActivit() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivity_.super.finishActivit();
            }
        }, 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void getData() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.recomend.RecommendActivity_.7
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    RecommendActivity_.super.getData();
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.recommend_activity_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.recycleView = (RecyclerView) hasViews.internalFindViewById(R.id.recycleView);
        this.enterGame = (TextView) hasViews.internalFindViewById(R.id.enterGame);
        this.protocol = hasViews.internalFindViewById(R.id.protocol);
        this.protocolCheck = hasViews.internalFindViewById(R.id.protocolCheck);
        this.userProtocolTxt = (TextView) hasViews.internalFindViewById(R.id.userProtocolTxt);
        this.lodingImg = (ImageView) hasViews.internalFindViewById(R.id.lodingImg);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.protocolCheckPlaceholder);
        TextView textView = this.enterGame;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RecommendActivity_.this.enterGame();
                }
            });
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RecommendActivity_.this.protocolCheckPlaceholder();
                }
            });
        }
        afterView();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivity_.super.showToast(message);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecommendActivity
    public void updateUI(final RecommendDataBean dataBean, final UserProtocolBean protocol) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivity_.super.updateUI(dataBean, protocol);
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
