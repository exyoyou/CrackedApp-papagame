package com.join.mgps.activity.screenshot;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class ScreenShortUploadImagActivity_ extends ScreenShortUploadImagActivity implements a, zc.a, b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IMAGEPATH_EXTRA = "imagepath";
    public static final String TYPE_ID_EXTRA = "typeId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) ScreenShortUploadImagActivity_.class);
        }

        public IntentBuilder_ gameId(String gameId) {
            return (IntentBuilder_) super.extra("gameId", gameId);
        }

        public IntentBuilder_ imagepath(String imagepath) {
            return (IntentBuilder_) super.extra(ScreenShortUploadImagActivity_.IMAGEPATH_EXTRA, imagepath);
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
            super(fragment.getActivity(), (Class<?>) ScreenShortUploadImagActivity_.class);
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
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey(IMAGEPATH_EXTRA)) {
                this.imagepath = extras.getString(IMAGEPATH_EXTRA);
            }
            if (extras.containsKey("typeId")) {
                this.typeId = extras.getInt("typeId");
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
        setContentView(R.layout.screenshort_upload_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.finishButn = (TextView) hasViews.internalFindViewById(R.id.finishButn);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.selecter = (SlidingTabLayoutScreenShort) hasViews.internalFindViewById(R.id.selecter);
        this.commitMessage = (EditText) hasViews.internalFindViewById(R.id.commitMessage);
        this.imgUpload = (SimpleDraweeView) hasViews.internalFindViewById(R.id.imgUpload);
        TextView textView = this.finishButn;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenShortUploadImagActivity_.this.finishButn();
                }
            });
        }
        SimpleDraweeView simpleDraweeView = this.imgUpload;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenShortUploadImagActivity_.this.imgUpload();
                }
            });
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenShortUploadImagActivity_.this.back();
                }
            });
        }
        afterview();
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
    @Override // com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity
    public void uploadFailed(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortUploadImagActivity_.super.uploadFailed(message);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity
    public void uploadImagData(final String describe) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.6
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ScreenShortUploadImagActivity_.super.uploadImagData(describe);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity
    public void uploadSuccess() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortUploadImagActivity_.super.uploadSuccess();
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
