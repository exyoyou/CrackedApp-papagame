package com.join.mgps.activity.screenshot;

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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.builder.f;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class ScreenShortBigImagActivity_ extends ScreenShortBigImagActivity implements a, zc.a, b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String PN_EXTRA = "pn";
    public static final String POSITION_EXTRA = "position";
    public static final String TYPE_ID_EXTRA = "typeId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) ScreenShortBigImagActivity_.class);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
        }

        public IntentBuilder_ pn(int pn) {
            return (IntentBuilder_) super.extra("pn", pn);
        }

        public IntentBuilder_ position(int position) {
            return (IntentBuilder_) super.extra("position", position);
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

        public IntentBuilder_ typeId(int typeId) {
            return (IntentBuilder_) super.extra("typeId", typeId);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ScreenShortBigImagActivity_.class);
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
            if (extras.containsKey("position")) {
                this.position = extras.getInt("position");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("typeId")) {
                this.typeId = extras.getInt("typeId");
            }
            if (extras.containsKey("pn")) {
                this.pn = extras.getInt("pn");
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

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortBigImagActivity
    public void loadListData(final int pn) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.screenshot.ScreenShortBigImagActivity_.4
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ScreenShortBigImagActivity_.super.loadListData(pn);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
        setContentView(R.layout.screenshort_bigimag_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.positionShow = (TextView) hasViews.internalFindViewById(R.id.positionShow);
        this.message = (TextView) hasViews.internalFindViewById(R.id.message);
        this.nameAndDate = (TextView) hasViews.internalFindViewById(R.id.nameAndDate);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.bottomLayout = (LinearLayout) hasViews.internalFindViewById(R.id.bottomLayout);
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortBigImagActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenShortBigImagActivity_.this.viewPager();
                }
            });
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortBigImagActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenShortBigImagActivity_.this.back();
                }
            });
        }
        afterview();
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
    @Override // com.join.mgps.activity.screenshot.ScreenShortBigImagActivity
    public void updateUi(final List<ScreenShortListItemBean> itemBeans) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortBigImagActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortBigImagActivity_.super.updateUi(itemBeans);
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
