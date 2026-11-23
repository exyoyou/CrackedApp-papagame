package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGameEditActivity_ extends MyGameEditActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55035b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final int val$index) {
            super(id2, delay, serial);
            this.f55035b = val$index;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameEditActivity_.super.removeGame(this.f55035b);
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
            MyGameEditActivity_.this.editAll();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.editGameNumber();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.setNetwork();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.isSelector();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.editCancel();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55042b;

        g(final String val$text) {
            this.f55042b = val$text;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.setDialogTextView(this.f55042b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.hideDialog();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.showDialog();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.notifyDataSetChanged();
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55047a;

        public k(Context context) {
            super(context, (Class<?>) MyGameEditActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55047a;
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
            super(fragment.getActivity(), (Class<?>) MyGameEditActivity_.class);
            this.f55047a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static k intent(Context context) {
        return new k(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void hideDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_mygame_edit);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.isSelector = (ImageView) hasViews.internalFindViewById(R.id.isSelector);
        this.listView = (ListView) hasViews.internalFindViewById(R.id.listView);
        this.editGameNumber = (Button) hasViews.internalFindViewById(R.id.editGameNumber);
        this.noneLayout = (LinearLayout) hasViews.internalFindViewById(R.id.noneLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.editAll);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.editCancel);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        Button button = this.editGameNumber;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        ImageView imageView = this.isSelector;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void removeGame(final int index) {
        org.androidannotations.api.a.l(new a("", 0L, "", index));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void setDialogTextView(final String text) {
        org.androidannotations.api.b.e("", new g(text), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
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
