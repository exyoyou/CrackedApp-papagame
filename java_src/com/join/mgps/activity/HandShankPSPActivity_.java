package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class HandShankPSPActivity_ extends HandShankPSPActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankPSPActivity_.this.backImage();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankPSPActivity_.this.okButn();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankPSPActivity_.this.resetButn();
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53844a;

        public d(Context context) {
            super(context, (Class<?>) HandShankPSPActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53844a;
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
            super(fragment.getActivity(), (Class<?>) HandShankPSPActivity_.class);
            this.f53844a = fragment;
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_psp_key_map);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.select = (Button) hasViews.internalFindViewById(R.id.select);
        this.start = (Button) hasViews.internalFindViewById(R.id.start);
        this.f53828l = (Button) hasViews.internalFindViewById(R.id.f35471l);
        this.f53829r = (Button) hasViews.internalFindViewById(R.id.f35481r);
        this.f53831y = (Button) hasViews.internalFindViewById(R.id.f35492y);
        this.f53830x = (Button) hasViews.internalFindViewById(R.id.f35491x);
        this.f53827b = (Button) hasViews.internalFindViewById(R.id.f35453b);
        this.f53826a = (Button) hasViews.internalFindViewById(R.id.f35449a);
        this.resetButn = (Button) hasViews.internalFindViewById(R.id.resetButn);
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.okButn);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        Button button = this.resetButn;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
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

    public static d intent(Fragment supportFragment) {
        return new d(supportFragment);
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
