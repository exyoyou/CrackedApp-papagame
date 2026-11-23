package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClipImageLayout;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class CropPicActivity_ extends CropPicActivity implements xc.a, zc.a, zc.b {
    public static final String CAPTURE_URI_EXTRA = "CaptureUri";
    public static final String FROM_EXTRA = "from";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f34862b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final File val$iconFile) {
            super(id2, delay, serial);
            this.f34862b = val$iconFile;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CropPicActivity_.super.uploadPortrait(this.f34862b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CropPicActivity_.this.back_image();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CropPicActivity_.this.searchImage();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.showLoading();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bitmap f34867b;

        e(final Bitmap val$bitmapTemp) {
            this.f34867b = val$bitmapTemp;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.showMainUi(this.f34867b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.dialogLoading();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.showLodingDismis();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.finishUi();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34872b;

        i(final String val$error_msg) {
            this.f34872b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.error(this.f34872b);
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CropPicActivity_.super.showPic();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f34875a;

        public k(Context context) {
            super(context, (Class<?>) CropPicActivity_.class);
        }

        public k a(String CaptureUri) {
            return (k) super.extra(CropPicActivity_.CAPTURE_URI_EXTRA, CaptureUri);
        }

        public k b(int from) {
            return (k) super.extra("from", from);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f34875a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CropPicActivity_.class);
            this.f34875a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(CAPTURE_URI_EXTRA)) {
                this.CaptureUri = extras.getString(CAPTURE_URI_EXTRA);
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
        }
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void dialogLoading() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new i(error_msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void finishUi() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.crop_pic_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.searchImage = (Button) hasViews.internalFindViewById(R.id.searchImage);
        this.id_clipImageLayout = (ClipImageLayout) hasViews.internalFindViewById(R.id.id_clipImageLayout);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        Button button = this.searchImage;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showMainUi(final Bitmap bitmapTemp) {
        org.androidannotations.api.b.e("", new e(bitmapTemp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showPic() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void uploadPortrait(final File iconFile) {
        org.androidannotations.api.a.l(new a("", 0L, "", iconFile));
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
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
