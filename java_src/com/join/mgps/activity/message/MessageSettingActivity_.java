package com.join.mgps.activity.message;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class MessageSettingActivity_ extends MessageSettingActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.back();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.isGetMessageIv();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.isGetReplayIv();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.isGetLikeIv();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountResultMainBean f57526b;

        e(final AccountResultMainBean val$result) {
            this.f57526b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.checkIsGetNotifresult(this.f57526b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.checkIsGetNotif();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountResultMainBean f57529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f57530c;

        g(final AccountResultMainBean val$result, final int val$num) {
            this.f57529b = val$result;
            this.f57530c = val$num;
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.setNotifresult(this.f57529b, this.f57530c);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MessageSettingActivity_.super.getJPushSetting();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57533b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final int val$num) {
            super(id2, delay, serial);
            this.f57533b = val$num;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MessageSettingActivity_.super.setJPushSetting(this.f57533b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57535a;

        public j(Context context) {
            super(context, (Class<?>) MessageSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f57535a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MessageSettingActivity_.class);
            this.f57535a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static j intent(Context context) {
        return new j(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void checkIsGetNotif() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void checkIsGetNotifresult(final AccountResultMainBean<JPushJoinDeviceResult> result) {
        org.androidannotations.api.b.e("", new e(result), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void getJPushSetting() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
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
        setContentView(R.layout.activity_message_setting);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.isGetMessageIv = (ImageView) hasViews.internalFindViewById(R.id.isGetMessageIv);
        this.isGetReplayIv = (ImageView) hasViews.internalFindViewById(R.id.isGetReplayIv);
        this.isGetLikeIv = (ImageView) hasViews.internalFindViewById(R.id.isGetLikeIv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.isGetMessageIv;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        ImageView imageView2 = this.isGetReplayIv;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        ImageView imageView3 = this.isGetLikeIv;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new d());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void setJPushSetting(final int num) {
        org.androidannotations.api.a.l(new i("", 0L, "", num));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void setNotifresult(final AccountResultMainBean<JPushJoinDeviceResult> result, final int num) {
        org.androidannotations.api.b.e("", new g(result, num), 0L);
    }

    public static j intent(Fragment supportFragment) {
        return new j(supportFragment);
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
