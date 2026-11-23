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
public class CustomLoadingView extends RelativeLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f64731k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f64732l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f64733m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f64734n = 9;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f64735o = 10;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f64736p = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f64737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f64738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f64739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f64740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f64741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Button f64742g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f64743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f64744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private e f64745j;

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

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            try {
                int i10 = msg.what;
                if (i10 == HandleId.LOADING.ordinal()) {
                    CustomLoadingView.this.q();
                } else if (i10 == HandleId.LOADING_FAILED.ordinal()) {
                    CustomLoadingView.this.r();
                } else if (i10 == HandleId.LOADING_SUCCESS.ordinal()) {
                    CustomLoadingView.this.t(true);
                } else if (i10 == HandleId.SET_FAILED_IMG_VISIBILITY.ordinal()) {
                    CustomLoadingView.this.setFailedImgVisibilityP(msg.arg1);
                } else if (i10 == HandleId.SET_RELOADING_VISIBILITY.ordinal()) {
                    CustomLoadingView.this.setReloadingVisibilityP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_IMG_RES.ordinal()) {
                    CustomLoadingView.this.setFailedImgResP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_RELOADING_RES.ordinal()) {
                    CustomLoadingView.this.setFailedReloadingResP(msg.arg1);
                } else if (i10 == HandleId.SET_FAILED_MSG.ordinal()) {
                    CustomLoadingView.this.setFailedMsgP((String) msg.obj);
                }
                CustomLoadingView.this.invalidate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goWirelessSettings(v10.getContext());
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (CustomLoadingView.this.f64745j != null) {
                CustomLoadingView.this.f64745j.b();
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (CustomLoadingView.this.f64745j != null) {
                CustomLoadingView.this.f64745j.a(v10);
            }
        }
    }

    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CustomLoadingView f64750a;

        public e(CustomLoadingView loadingView) {
            this.f64750a = loadingView;
        }

        public void a(View v10) {
            Context context = v10.getContext();
            if (this.f64750a.getLoadingState() == 9) {
                IntentUtil.getInstance().goWirelessSettings(context);
            } else if (this.f64750a.getLoadingState() == 10) {
                com.join.mgps.Util.r0.E0(context);
            }
        }

        public void b() {
        }

        public void c(boolean show) {
        }
    }

    public CustomLoadingView(Context context) {
        super(context);
        this.f64743h = 1;
        m(context);
    }

    private void j() {
        if (this.f64738c == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_custom_failed, (ViewGroup) null);
            this.f64738c = viewInflate.findViewById(R.id.loding_faile);
            this.f64739d = (ImageView) viewInflate.findViewById(R.id.relodingimag);
            this.f64740e = (TextView) viewInflate.findViewById(R.id.failedMessage);
            this.f64741f = viewInflate.findViewById(R.id.lodingBackImage);
            this.f64742g = (Button) viewInflate.findViewById(R.id.setNetwork);
            addView(viewInflate);
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f64742g.setOnClickListener(new b());
            this.f64739d.setOnClickListener(new c());
            this.f64742g.setOnClickListener(new d());
        }
    }

    private void k() {
        if (this.f64737b == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_custom_loading, (ViewGroup) null);
            this.f64737b = viewInflate.findViewById(R.id.loding_layout);
            addView(viewInflate);
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    private void m(Context context) {
        this.f64744i = new a();
    }

    private void p() {
        j();
        this.f64738c.setVisibility(0);
        this.f64737b.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        s();
        t(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        p();
        t(false);
    }

    private void s() {
        k();
        this.f64737b.setVisibility(0);
        this.f64738c.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgResP(int resId) {
        j();
        if (resId == 9) {
            return;
        }
        try {
            if (resId == 10) {
                this.f64742g.setText("点击查看相关帖子");
            } else {
                this.f64742g.setText("");
                this.f64742g.setBackgroundResource(resId);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgVisibilityP(int visibility) {
        int i10 = visibility == 0 ? 0 : 8;
        j();
        this.f64741f.setVisibility(i10);
        this.f64742g.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedMsgP(String msg) {
        j();
        TextView textView = this.f64740e;
        if (textView != null) {
            textView.setText(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedReloadingResP(int resId) {
        try {
            j();
            this.f64739d.setImageResource(resId);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReloadingVisibilityP(int visibility) {
        int i10 = visibility != 8 ? 0 : 8;
        j();
        this.f64739d.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(boolean show) {
        int i10 = !show ? 8 : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt != this.f64737b && childAt != this.f64738c) {
                childAt.setVisibility(i10);
            } else if (show) {
                childAt.setVisibility(8);
            }
        }
        e eVar = this.f64745j;
        if (eVar != null) {
            eVar.c(show);
        }
    }

    public int getLoadingState() {
        return this.f64743h;
    }

    public void l(int state) {
        char c10;
        setFailedImgVisibility(0);
        setReloadingVisibility(0);
        int i10 = this.f64743h;
        if (i10 == 2) {
            return;
        }
        if (state == 2) {
            this.f64743h = 2;
        } else if (state == 1) {
            this.f64743h = 1;
        } else if (state == 9) {
            this.f64743h = 9;
            setFailedMsg("网络连接失败，再试试吧~");
            setFailedImgRes(9);
        } else if (state == 10) {
            this.f64743h = 10;
            setReloadingVisibility(8);
            setFailedImgRes(10);
        } else {
            if ((state & 16) == 16) {
                this.f64743h = state | i10;
            } else {
                this.f64743h = state | i10;
            }
            setFailedMsg("加载失败，再试试吧~");
            setFailedImgVisibility(8);
        }
        int i11 = this.f64743h;
        if (i11 == 1) {
            c10 = 1;
        } else {
            c10 = i11 == 2 ? (char) 2 : (char) 4;
        }
        Message messageObtainMessage = this.f64744i.obtainMessage();
        if (c10 == 1) {
            messageObtainMessage.what = HandleId.LOADING.ordinal();
        } else if (c10 == 2) {
            messageObtainMessage.what = HandleId.LOADING_SUCCESS.ordinal();
        } else if (c10 == 4) {
            messageObtainMessage.what = HandleId.LOADING_FAILED.ordinal();
        }
        messageObtainMessage.sendToTarget();
    }

    public boolean n() {
        return this.f64743h == 2;
    }

    public void o() {
        if (this.f64743h != 1) {
            this.f64743h = 1;
        }
    }

    public void setFailedImgRes(int resId) {
        Message messageObtainMessage = this.f64744i.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_IMG_RES.ordinal();
        messageObtainMessage.arg1 = resId;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedImgVisibility(int visibility) {
        Message messageObtainMessage = this.f64744i.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_IMG_VISIBILITY.ordinal();
        messageObtainMessage.arg1 = visibility;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedMsg(String msg) {
        Message messageObtainMessage = this.f64744i.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_MSG.ordinal();
        messageObtainMessage.obj = msg;
        messageObtainMessage.sendToTarget();
    }

    public void setFailedReloadingRes(int resId) {
        Message messageObtainMessage = this.f64744i.obtainMessage();
        messageObtainMessage.what = HandleId.SET_FAILED_RELOADING_RES.ordinal();
        messageObtainMessage.arg1 = resId;
        messageObtainMessage.sendToTarget();
    }

    public void setListener(e l10) {
        this.f64745j = l10;
    }

    public void setReloadingVisibility(int visibility) {
        Message messageObtainMessage = this.f64744i.obtainMessage();
        messageObtainMessage.what = HandleId.SET_RELOADING_VISIBILITY.ordinal();
        messageObtainMessage.arg1 = visibility;
        messageObtainMessage.sendToTarget();
    }

    public CustomLoadingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64743h = 1;
        m(context);
    }

    public CustomLoadingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64743h = 1;
        m(context);
    }
}
