package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class OemDetailActivity_ extends OemDetailActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OemDetailActivity_.this.back_image();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55217b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f55217b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                OemDetailActivity_.super.loadForumoemDetailData(this.f55217b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                OemDetailActivity_.super.receveCdk();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55220a;

        public d(Context context) {
            super(context, (Class<?>) OemDetailActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55220a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) OemDetailActivity_.class);
            this.f55220a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static d intent(Context context) {
        return new d(context);
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
    @Override // com.join.mgps.activity.OemDetailActivity
    public void loadForumoemDetailData(final int page) {
        org.androidannotations.api.a.l(new b("", 0L, "", page));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_forum_gift_detail_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = hasViews.internalFindViewById(R.id.back_image);
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.bottom = hasViews.internalFindViewById(R.id.bottom);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.oemTypeLayout1 = (LinearLayout) hasViews.internalFindViewById(R.id.oemTypeLayout1);
        this.oemTypeLayout2 = (LinearLayout) hasViews.internalFindViewById(R.id.oemTypeLayout2);
        this.oemTypeLayout3 = (LinearLayout) hasViews.internalFindViewById(R.id.oemTypeLayout3);
        this.giftIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.giftIcon);
        this.giftName = (TextView) hasViews.internalFindViewById(R.id.giftName);
        this.giftExpireDate = (TextView) hasViews.internalFindViewById(R.id.giftExpireDate);
        this.giftRetainLayout = (LinearLayout) hasViews.internalFindViewById(R.id.giftRetainLayout);
        this.giftRetain = (TextView) hasViews.internalFindViewById(R.id.giftRetain);
        this.cdkNum = (TextView) hasViews.internalFindViewById(R.id.cdkNum);
        this.giftTip = (TextView) hasViews.internalFindViewById(R.id.giftTip);
        this.receiveButton = (Button) hasViews.internalFindViewById(R.id.receiveButton);
        this.goToOem = (Button) hasViews.internalFindViewById(R.id.goToOem);
        this.giftTitle = (TextView) hasViews.internalFindViewById(R.id.giftTitle);
        this.giftContent = (TextView) hasViews.internalFindViewById(R.id.giftContent);
        this.giftUseTitle = (TextView) hasViews.internalFindViewById(R.id.giftUseTitle);
        this.giftUseContent = (TextView) hasViews.internalFindViewById(R.id.giftUseContent);
        this.myGiftPackage = hasViews.internalFindViewById(R.id.myGiftPackage);
        this.myGiftPackageCount = (TextView) hasViews.internalFindViewById(R.id.myGiftPackageCount);
        View view = this.back_image;
        if (view != null) {
            view.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.OemDetailActivity
    public void receveCdk() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    public static d intent(Fragment supportFragment) {
        return new d(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
