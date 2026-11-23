package com.join.mgps.activity.message;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.MessageDetailFeedBackBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedBackMessageDetailActivity_ extends FeedBackMessageDetailActivity implements xc.a, zc.a, zc.b {
    public static final String ISSUE_ID_EXTRA = "issueId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.showMain();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageDetailFeedBackBean.FeedbackReplies f57495b;

        b(final MessageDetailFeedBackBean.FeedbackReplies val$reply) {
            this.f57495b = val$reply;
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.addMyComment(this.f57495b);
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FeedBackMessageDetailActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57498b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final String val$content) {
            super(id2, delay, serial);
            this.f57498b = val$content;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FeedBackMessageDetailActivity_.super.reply(this.f57498b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedBackMessageDetailActivity_.this.back_image();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedBackMessageDetailActivity_.this.relodingimag();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedBackMessageDetailActivity_.this.setNetwork();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedBackMessageDetailActivity_.this.tvSend();
        }
    }

    class i implements TextWatcher {
        i() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            FeedBackMessageDetailActivity_.this.etComment();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageDetailFeedBackBean f57505b;

        j(final MessageDetailFeedBackBean val$result) {
            this.f57505b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.updateUi(this.f57505b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57507b;

        k(final String val$message) {
            this.f57507b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.showMessage(this.f57507b);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.showLoding();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FeedBackMessageDetailActivity_.super.showLodingFailed();
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57511a;

        public n(Context context) {
            super(context, (Class<?>) FeedBackMessageDetailActivity_.class);
        }

        public n a(String issueId) {
            return (n) super.extra(FeedBackMessageDetailActivity_.ISSUE_ID_EXTRA, issueId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f57511a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) FeedBackMessageDetailActivity_.class);
            this.f57511a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(ISSUE_ID_EXTRA)) {
            return;
        }
        this.issueId = extras.getString(ISSUE_ID_EXTRA);
    }

    public static n intent(Context context) {
        return new n(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void addMyComment(final MessageDetailFeedBackBean.FeedbackReplies reply) {
        org.androidannotations.api.b.e("", new b(reply), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void getData() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
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
        setContentView(R.layout.activity_message_detail_feedback);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.tvFeedBackGameName = (TextView) hasViews.internalFindViewById(R.id.tvFeedBackGameName);
        this.tvFeedBackReason = (TextView) hasViews.internalFindViewById(R.id.tvFeedBackReason);
        this.tvFeedBackDesc = (TextView) hasViews.internalFindViewById(R.id.tvFeedBackDesc);
        this.tvTime = (TextView) hasViews.internalFindViewById(R.id.tvTime);
        this.rvComment = (RecyclerView) hasViews.internalFindViewById(R.id.rvComment);
        this.etComment = (EditText) hasViews.internalFindViewById(R.id.etComment);
        this.tvSend = (TextView) hasViews.internalFindViewById(R.id.tvSend);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.llMain = (LinearLayout) hasViews.internalFindViewById(R.id.llMain);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new f());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new g());
        }
        TextView textView = this.tvSend;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        TextView textView2 = (TextView) hasViews.internalFindViewById(R.id.etComment);
        if (textView2 != null) {
            textView2.addTextChangedListener(new i());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void reply(final String content) {
        org.androidannotations.api.a.l(new d("", 0L, "", content));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new k(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.FeedBackMessageDetailActivity
    public void updateUi(final MessageDetailFeedBackBean result) {
        org.androidannotations.api.b.e("", new j(result), 0L);
    }

    public static n intent(Fragment supportFragment) {
        return new n(supportFragment);
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
