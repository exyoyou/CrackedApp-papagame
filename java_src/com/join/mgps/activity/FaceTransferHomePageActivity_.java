package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class FaceTransferHomePageActivity_ extends FaceTransferHomePageActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.nopapaTip();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferHomePageActivity_.this.onClick(view);
        }
    }

    public static class e extends org.androidannotations.api.builder.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51409a;

        public e(Context context) {
            super(context, (Class<?>) FaceTransferHomePageActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51409a;
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

        public e(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) FaceTransferHomePageActivity_.class);
            this.f51409a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.title = resources.getString(R.string.title_face_transfer_homepage);
    }

    public static e intent(Context context) {
        return new e(context);
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
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.face_transfer_homepage_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.hearTitleTxt = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.nopapaTip = (TextView) hasViews.internalFindViewById(R.id.nopapaTip);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.face_transfer_rel_create_hotspot);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.face_transfer_rel_join_hotspot);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back_image);
        TextView textView = this.nopapaTip;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new c());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new d());
        }
        doSomeAfterView();
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

    public static e intent(Fragment supportFragment) {
        return new e(supportFragment);
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
