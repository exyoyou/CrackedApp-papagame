package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ForumLoadingView extends RelativeLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f64943l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f64944m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f64945n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f64946o = 9;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f64947p = 10;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f64948q = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f64950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f64951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f64952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f64953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f64954g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f64955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f64956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f64957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e f64958k;

    enum HandleId {
        LOADING,
        LOADING_SUCCESS,
        LOADING_FAILED,
        SET_RELOADING_VISIBILITY,
        SET_FAILED_IMG_VISIBILITY,
        SET_FAILED_IMG_RES,
        SET_FAILED_RELOADING_RES,
        SET_FAILED_MSG
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goWirelessSettings(v10.getContext());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumLoadingView.this.f64958k != null) {
                ForumLoadingView.this.f64958k.b();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumLoadingView.this.f64958k != null) {
                ForumLoadingView.this.f64958k.a(v10);
            }
        }
    }

    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            try {
                int i10 = msg.what;
                if (i10 == HandleId.LOADING.ordinal()) {
                    ForumLoadingView.this.n();
                } else if (i10 == HandleId.LOADING_FAILED.ordinal()) {
                    ForumLoadingView.this.o();
                } else if (i10 == HandleId.LOADING_SUCCESS.ordinal()) {
                    ForumLoadingView.this.p(true);
                } else if (i10 == HandleId.SET_FAILED_IMG_VISIBILITY.ordinal()) {
                    ForumLoadingView.this.setFailedImgVisibilityP(msg.arg1);
                } else if (i10 == HandleId.SET_RELOADING_VISIBILITY.ordinal()) {
                    ForumLoadingView.this.setReloadingVisibilityP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_IMG_RES.ordinal()) {
                    ForumLoadingView.this.setFailedImgResP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_RELOADING_RES.ordinal()) {
                    ForumLoadingView.this.setFailedReloadingResP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_MSG.ordinal()) {
                    ForumLoadingView.this.setFailedMsgP((String) msg.obj);
                }
                ForumLoadingView.this.invalidate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ForumLoadingView f64963a;

        public e(ForumLoadingView loadingView) {
            this.f64963a = loadingView;
        }

        public void a(View v10) {
            Context context = v10.getContext();
            if (this.f64963a.getLoadingState() == 9) {
                IntentUtil.getInstance().goWirelessSettings(context);
            } else if (this.f64963a.getLoadingState() == 10) {
                com.join.mgps.Util.r0.E0(context);
            }
        }

        public void b() {
        }

        public void c(boolean show) {
        }
    }

    public ForumLoadingView(Context context) {
        super(context);
        this.f64956i = 1;
        k(context);
    }

    private void k(Context context) {
        this.f64949b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.loding_layout_include, (ViewGroup) null);
        this.f64950c = viewInflate.findViewById(R.id.loding_layout);
        View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.failed_layout_include, (ViewGroup) null);
        this.f64951d = viewInflate2.findViewById(R.id.loding_faile);
        this.f64952e = (ImageView) viewInflate2.findViewById(R.id.relodingimag);
        this.f64953f = (TextView) viewInflate2.findViewById(R.id.failedMessage);
        this.f64954g = viewInflate2.findViewById(R.id.lodingBackImage);
        this.f64955h = (Button) viewInflate2.findViewById(R.id.setNetwork);
        addView(viewInflate);
        addView(viewInflate2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        viewInflate.setLayoutParams(layoutParams);
        viewInflate2.setLayoutParams(layoutParams);
        this.f64950c.setVisibility(8);
        this.f64951d.setVisibility(8);
        this.f64955h.setOnClickListener(new a());
        this.f64952e.setOnClickListener(new b());
        this.f64955h.setOnClickListener(new c());
        this.f64957j = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f64950c.setVisibility(0);
        this.f64951d.setVisibility(8);
        p(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f64950c.setVisibility(8);
        this.f64951d.setVisibility(0);
        p(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(boolean show) {
        int i10 = !show ? 8 : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt != this.f64950c && childAt != this.f64951d) {
                childAt.setVisibility(i10);
            } else if (show) {
                childAt.setVisibility(8);
            }
        }
        e eVar = this.f64958k;
        if (eVar != null) {
            eVar.c(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgResP(int resId) {
        if (resId == 9) {
            return;
        }
        try {
            if (resId == 10) {
                this.f64955h.setText("点击查看相关帖子");
            } else {
                this.f64955h.setText("");
                this.f64955h.setBackgroundResource(resId);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgVisibilityP(int visibility) {
        int i10 = visibility == 0 ? 0 : 8;
        this.f64954g.setVisibility(i10);
        this.f64955h.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedMsgP(String msg) {
        TextView textView = this.f64953f;
        if (textView != null) {
            textView.setText(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedReloadingResP(int resId) {
        try {
            this.f64952e.setImageResource(resId);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReloadingVisibilityP(int visibility) {
        this.f64952e.setVisibility(visibility != 8 ? 0 : 8);
    }

    public int getLoadingState() {
        return this.f64956i;
    }

    public void j(int state) {
        char c10;
        setFailedImgVisibility(0);
        setReloadingVisibility(0);
        int i10 = this.f64956i;
        if (i10 == 2) {
            return;
        }
        if (state == 2) {
            this.f64956i = 2;
        } else if (state == 1) {
            this.f64956i = 1;
        } else if (state == 9) {
            this.f64956i = 9;
            setFailedMsg("网络连接失败，再试试吧~");
            setFailedImgRes(9);
        } else if (state == 10) {
            this.f64956i = 10;
            setReloadingVisibility(8);
            setFailedImgRes(10);
        } else {
            if ((state & 16) == 16) {
                this.f64956i = state | i10;
            } else {
                this.f64956i = state | i10;
            }
            setFailedMsg("加载失败，再试试吧~");
            setFailedImgVisibility(8);
        }
        int i11 = this.f64956i;
        if (i11 == 1) {
            c10 = 1;
        } else {
            c10 = i11 == 2 ? (char) 2 : (char) 4;
        }
        Message messageObtainMessage = this.f64957j.obtainMessage();
        if (c10 == 1) {
            messageObtainMessage.what = HandleId.LOADING.ordinal();
        } else if (c10 == 2) {
            messageObtainMessage.what = HandleId.LOADING_SUCCESS.ordinal();
        } else if (c10 == 4) {
            messageObtainMessage.what = HandleId.LOADING_FAILED.ordinal();
        }
        messageObtainMessage.sendToTarget();
    }

    public boolean l() {
        return this.f64956i == 2;
    }

    public void m() {
        if (this.f64956i != 1) {
            this.f64956i = 1;
        }
    }

    public void setFailedImgRes(int resId) {
        Message messageObtainMessage = this.f64957j.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_IMG_RES.ordinal();
        messageObtainMessage.arg1 = resId;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedImgVisibility(int visibility) {
        Message messageObtainMessage = this.f64957j.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_IMG_VISIBILITY.ordinal();
        messageObtainMessage.arg1 = visibility;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedMsg(String msg) {
        Message messageObtainMessage = this.f64957j.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_MSG.ordinal();
        messageObtainMessage.obj = msg;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedReloadingRes(int resId) {
        Message messageObtainMessage = this.f64957j.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_RELOADING_RES.ordinal();
        messageObtainMessage.arg1 = resId;
        messageObtainMessage.sendToTarget();
    }

    public void setListener(e l10) {
        this.f64958k = l10;
    }

    public void setReloadingVisibility(int visibility) {
        Message messageObtainMessage = this.f64957j.obtainMessage();
        messageObtainMessage.what = HandleId.SET_RELOADING_VISIBILITY.ordinal();
        messageObtainMessage.arg1 = visibility;
        messageObtainMessage.sendToTarget();
    }

    public ForumLoadingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64956i = 1;
        k(context);
    }

    public ForumLoadingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64956i = 1;
        k(context);
    }
}
