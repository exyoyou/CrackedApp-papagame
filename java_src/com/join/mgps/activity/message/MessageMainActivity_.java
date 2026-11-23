package com.join.mgps.activity.message;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class MessageMainActivity_ extends MessageMainActivity implements xc.a, zc.a, zc.b {
    public static final String INDEX_EXTRA = "index";
    public static final String INTENT_DATE_BEAN_EXTRA = "intentDateBean";
    public static final String IS_LIKE_EXTRA = "isLike";
    public static final String IS_MESSAGE_EXTRA = "isMessage";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageMainActivity_.this.back();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageMainActivity_.this.setting();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageMainActivity_.super.reCheckRed();
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MessageMainActivity_.super.getData();
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
                MessageMainActivity_.super.getRedPointData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57521a;

        public f(Context context) {
            super(context, (Class<?>) MessageMainActivity_.class);
        }

        public f a(int index) {
            return (f) super.extra("index", index);
        }

        public f b(IntentDateBean intentDateBean) {
            return (f) super.extra("intentDateBean", intentDateBean);
        }

        public f c(boolean isLike) {
            return (f) super.extra(MessageMainActivity_.IS_LIKE_EXTRA, isLike);
        }

        public f d(boolean isMessage) {
            return (f) super.extra(MessageMainActivity_.IS_MESSAGE_EXTRA, isMessage);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f57521a;
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
            super(fragment.getActivity(), (Class<?>) MessageMainActivity_.class);
            this.f57521a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("index")) {
                this.index = extras.getInt("index");
            }
            if (extras.containsKey(IS_LIKE_EXTRA)) {
                this.isLike = extras.getBoolean(IS_LIKE_EXTRA);
            }
            if (extras.containsKey(IS_MESSAGE_EXTRA)) {
                this.isMessage = extras.getBoolean(IS_MESSAGE_EXTRA);
            }
            if (extras.containsKey("intentDateBean")) {
                this.intentDateBean = (IntentDateBean) extras.getSerializable("intentDateBean");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void getData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void getRedPointData() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_message_main);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.tableLayout = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tableLayout);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setting);
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void reCheckRed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    public static f intent(Fragment supportFragment) {
        return new f(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
