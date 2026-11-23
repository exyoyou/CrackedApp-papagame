package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class WufunGameDownFirstNotPermissDialog_ extends WufunGameDownFirstNotPermissDialog implements a, zc.a, b {
    public static final String FROM_EXTRA = "from";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) WufunGameDownFirstNotPermissDialog_.class);
        }

        public IntentBuilder_ from(int from) {
            return (IntentBuilder_) super.extra("from", from);
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

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) WufunGameDownFirstNotPermissDialog_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("from")) {
            return;
        }
        this.from = extras.getInt("from");
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
        setContentView(R.layout.wufungame_first_downpermiss_dialog);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.img = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img);
        this.gameName = (TextView) hasViews.internalFindViewById(R.id.gameName);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mainxxx);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.settingInfo);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.startButn);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.close);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WufunGameDownFirstNotPermissDialog_.this.mainxxx();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WufunGameDownFirstNotPermissDialog_.this.settingInfo();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WufunGameDownFirstNotPermissDialog_.this.startButn();
                }
            });
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WufunGameDownFirstNotPermissDialog_.this.close();
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
