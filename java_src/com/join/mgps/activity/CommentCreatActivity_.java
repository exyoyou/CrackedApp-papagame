package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CommentCreatActivity_ extends CommentCreatActivity implements xc.a, zc.a, zc.b {
    public static final String BESPEAK_SWITCH_EXTRA = "bespeakSwitch";
    public static final String COMMENT_CONTENT_EXTRA = "commentContent";
    public static final String COMMENT_ID_EXTRA = "commentId";
    public static final String COMMENT_SCORE_SWITCH_EXTRA = "commentScoreSwitch";
    public static final String COMMENT_STARS_EXTRA = "commentStars";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GAME_IS_START_EXTRA = "gameIsStart";
    public static final String GAME_TYPE_EXTRA = "gameType";
    public static final String IS_EDIT_EXTRA = "isEdit";
    public static final String PACKAGE_NAME_EXTRA = "packageName";
    public static final String PHONE_MODEL_EXTRA = "phoneModel";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentCreatActivity_.this.back_image();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentCreatActivity_.this.textTopRight();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ double f50926c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50927d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50928e;

        c(final int val$type, final double val$starNum, final String val$str, final String val$upPhoneModel) {
            this.f50925b = val$type;
            this.f50926c = val$starNum;
            this.f50927d = val$str;
            this.f50928e = val$upPhoneModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.postEvent(this.f50925b, this.f50926c, this.f50927d, this.f50928e);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50931c;

        d(final String val$msg, final boolean val$b) {
            this.f50930b = val$msg;
            this.f50931c = val$b;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.resultShow(this.f50930b, this.f50931c);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f50933b;

        e(final CommentResponse val$bean) {
            this.f50933b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.resultShow2(this.f50933b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50935b;

        f(final String val$message) {
            this.f50935b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentCreatActivity_.super.showMessage(this.f50935b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f50937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50938c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50939d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final float val$starNum, final String val$str, final String val$upPhoneModel) {
            super(id2, delay, serial);
            this.f50937b = val$starNum;
            this.f50938c = val$str;
            this.f50939d = val$upPhoneModel;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentCreatActivity_.super.toCreateComment(this.f50937b, this.f50938c, this.f50939d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentCreatActivity_.super.getToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.a<i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50942a;

        public i(Context context) {
            super(context, (Class<?>) CommentCreatActivity_.class);
        }

        public i a(int bespeakSwitch) {
            return (i) super.extra("bespeakSwitch", bespeakSwitch);
        }

        public i b(String commentContent) {
            return (i) super.extra("commentContent", commentContent);
        }

        public i c(String commentId) {
            return (i) super.extra("commentId", commentId);
        }

        public i d(String commentScoreSwitch) {
            return (i) super.extra("commentScoreSwitch", commentScoreSwitch);
        }

        public i e(float commentStars) {
            return (i) super.extra("commentStars", commentStars);
        }

        public i f(String gameId) {
            return (i) super.extra("gameId", gameId);
        }

        public i g(int gameIsStart) {
            return (i) super.extra("gameIsStart", gameIsStart);
        }

        public i h(String gameType) {
            return (i) super.extra("gameType", gameType);
        }

        public i i(boolean isEdit) {
            return (i) super.extra("isEdit", isEdit);
        }

        public i j(String packageName) {
            return (i) super.extra("packageName", packageName);
        }

        public i k(String phoneModel) {
            return (i) super.extra(CommentCreatActivity_.PHONE_MODEL_EXTRA, phoneModel);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50942a;
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

        public i(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CommentCreatActivity_.class);
            this.f50942a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.commentId = extras.getString("commentId");
            }
            if (extras.containsKey("commentContent")) {
                this.commentContent = extras.getString("commentContent");
            }
            if (extras.containsKey("commentStars")) {
                this.commentStars = extras.getFloat("commentStars");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("gameType")) {
                this.gameType = extras.getString("gameType");
            }
            if (extras.containsKey("gameIsStart")) {
                this.gameIsStart = extras.getInt("gameIsStart");
            }
            if (extras.containsKey("packageName")) {
                this.packageName = extras.getString("packageName");
            }
            if (extras.containsKey("isEdit")) {
                this.isEdit = extras.getBoolean("isEdit");
            }
            if (extras.containsKey(PHONE_MODEL_EXTRA)) {
                this.phoneModel = extras.getString(PHONE_MODEL_EXTRA);
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.commentScoreSwitch = extras.getString("commentScoreSwitch");
            }
            if (extras.containsKey("bespeakSwitch")) {
                this.bespeakSwitch = extras.getInt("bespeakSwitch");
            }
        }
    }

    public static i intent(Context context) {
        return new i(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void getToken() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.comment_creat_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.textTopRight = (TextView) hasViews.internalFindViewById(R.id.textTopRight);
        this.mstarBar = (MStarBar) hasViews.internalFindViewById(R.id.mstarBar);
        this.starLl = (LinearLayout) hasViews.internalFindViewById(R.id.starLl);
        this.mstarBarTx = (TextView) hasViews.internalFindViewById(R.id.mstarBarTx);
        this.commentcreat_et = (EditText) hasViews.internalFindViewById(R.id.commentcreat_et);
        this.phoneModleCB = (CheckBox) hasViews.internalFindViewById(R.id.phoneModleCB);
        this.tvTips = (TextView) hasViews.internalFindViewById(R.id.tvTips);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        TextView textView = this.textTopRight;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        afterView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void postEvent(final int type, final double starNum, final String str, final String upPhoneModel) {
        org.androidannotations.api.b.e("", new c(type, starNum, str, upPhoneModel), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void resultShow(final String msg, final boolean b10) {
        org.androidannotations.api.b.e("", new d(msg, b10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void resultShow2(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new e(bean), 0L);
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
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentCreatActivity
    public void toCreateComment(final float starNum, final String str, final String upPhoneModel) {
        org.androidannotations.api.a.l(new g("", 0L, "", starNum, str, upPhoneModel));
    }

    public static i intent(Fragment supportFragment) {
        return new i(supportFragment);
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
