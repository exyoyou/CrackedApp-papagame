package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.domain.widget.DownloadLabeledProgressView;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.d1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadNormalView extends FrameLayout implements View.OnClickListener {
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private com.join.mgps.callbacks.f J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DownloadLabeledProgressView f64777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f64778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f64779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f64780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64782g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64783h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64785j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64786k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64787l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64788m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f64789n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64790o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64791p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f64792q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f64793r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f64794s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f64795t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f64796u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f64797v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f64798w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f64799x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f64800y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f64801z;

    public DownloadNormalView(Context context) {
        super(context);
        m(context, null);
    }

    private void a(int drawableRes, int colorRes) {
        if (drawableRes != 0) {
            this.f64777b.setSolidBackgroundResource(drawableRes);
        } else {
            this.f64777b.setSolidColor(ContextCompat.getColor(getContext(), colorRes));
        }
    }

    private void c() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f64779d.getLayoutParams();
        int i10 = this.f64797v;
        if (i10 >= 0) {
            layoutParams.width = i10;
        } else {
            layoutParams.width = (int) getResources().getDimension(R.dimen.wdp100);
        }
        int i11 = this.f64796u;
        if (i11 >= 0) {
            layoutParams.height = i11;
        } else {
            layoutParams.height = (int) getResources().getDimension(R.dimen.wdp52);
        }
        this.f64779d.setLayoutParams(layoutParams);
    }

    private void g(int status, long progress, boolean numberMode) {
        this.f64777b.setVisibility(0);
        this.f64780e.setVisibility(8);
        setEnabled(true);
        this.f64777b.setProgressBarVisible(true);
        this.f64777b.setProgressPercent((int) progress);
        if (status == 10 || status == 1) {
            a(this.f64788m, R.color.dl_solid_default);
            o("", this.F);
            return;
        }
        if (status == 2) {
            a(this.f64781f, R.color.dl_solid_default);
            this.f64777b.label.setText(progress + "%");
            return;
        }
        if (status != 12) {
            if (status == 3 || status == 6 || status == 27) {
                a(this.f64787l, R.color.dl_solid_default);
                o("", this.D);
                return;
            }
            return;
        }
        a(this.f64790o, R.color.dl_solid_unzip);
        if (!numberMode) {
            o("", this.H);
            return;
        }
        this.f64777b.label.setText(progress + "%");
    }

    private void k(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.DownloadNormalView);
            if (typedArrayObtainStyledAttributes.hasValue(3)) {
                this.f64781f = typedArrayObtainStyledAttributes.getResourceId(3, 0);
            } else {
                this.f64781f = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(1)) {
                this.f64782g = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            } else {
                this.f64782g = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                this.f64783h = typedArrayObtainStyledAttributes.getResourceId(2, 0);
            } else {
                this.f64783h = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                this.f64784i = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            } else {
                this.f64784i = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(4)) {
                this.f64785j = typedArrayObtainStyledAttributes.getResourceId(4, 0);
            } else {
                this.f64785j = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(5)) {
                this.f64786k = typedArrayObtainStyledAttributes.getResourceId(5, 0);
            } else {
                this.f64786k = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                this.f64787l = typedArrayObtainStyledAttributes.getResourceId(6, 0);
            } else {
                this.f64787l = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(10)) {
                this.f64788m = typedArrayObtainStyledAttributes.getResourceId(10, 0);
            } else {
                this.f64788m = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(7)) {
                this.f64789n = typedArrayObtainStyledAttributes.getResourceId(7, 0);
            } else {
                this.f64789n = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(8)) {
                this.f64790o = typedArrayObtainStyledAttributes.getResourceId(8, 0);
            } else {
                this.f64790o = 0;
            }
            if (typedArrayObtainStyledAttributes.hasValue(9)) {
                this.f64791p = typedArrayObtainStyledAttributes.getResourceId(9, 0);
            } else {
                this.f64791p = 0;
            }
            this.f64792q = getResources().getColor(typedArrayObtainStyledAttributes.getResourceId(15, R.color.money_text_color));
            this.f64793r = getResources().getDimension(typedArrayObtainStyledAttributes.getResourceId(23, R.dimen.wdp24));
            this.f64794s = getResources().getDimension(typedArrayObtainStyledAttributes.getResourceId(16, R.dimen.wdp18));
            if (typedArrayObtainStyledAttributes.hasValue(11)) {
                this.f64796u = (int) getResources().getDimension(typedArrayObtainStyledAttributes.getResourceId(11, R.dimen.wdp52));
            } else {
                this.f64796u = -1;
            }
            if (typedArrayObtainStyledAttributes.hasValue(12)) {
                this.f64797v = (int) getResources().getDimension(typedArrayObtainStyledAttributes.getResourceId(12, R.dimen.wdp100));
            } else {
                this.f64797v = -1;
            }
            if (typedArrayObtainStyledAttributes.hasValue(13)) {
                this.f64799x = true;
                this.f64800y = (int) typedArrayObtainStyledAttributes.getDimension(13, 0.0f);
            } else {
                this.f64799x = false;
                this.f64800y = 0;
            }
            this.f64798w = typedArrayObtainStyledAttributes.getInt(20, 0);
            this.f64795t = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(21, R.string.dl_text_normal));
            this.f64801z = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(18, R.string.dl_text_install));
            this.A = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(19, R.string.dl_text_install_ing));
            this.B = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(17, R.string.dl_text_get));
            this.C = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(22, R.string.dl_text_open));
            this.D = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(24, R.string.dl_text_start));
            this.E = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(25, R.string.dl_text_stop));
            this.F = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(29, R.string.dl_text_wait));
            this.G = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(26, R.string.dl_text_unzip));
            this.H = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(27, R.string.dl_text_unzipping));
            this.I = getResources().getString(typedArrayObtainStyledAttributes.getResourceId(28, R.string.dl_text_update));
            typedArrayObtainStyledAttributes.recycle();
        } else {
            l(context);
        }
        this.f64777b.setLabelTextSizePixel(this.f64793r);
        this.f64777b.setLabelTextColor(ContextCompat.getColor(context, R.color.white));
        if (this.f64799x) {
            this.f64777b.setCornerRadiusPx(this.f64800y);
        } else {
            this.f64777b.setCapsuleCornerRadius();
        }
        this.f64778c.setTextSize(0, this.f64794s);
        this.f64778c.setTextColor(this.f64792q);
        c();
    }

    private void l(Context context) {
        this.f64781f = 0;
        this.f64782g = 0;
        this.f64783h = 0;
        this.f64784i = 0;
        this.f64785j = 0;
        this.f64786k = 0;
        this.f64787l = 0;
        this.f64788m = 0;
        this.f64789n = 0;
        this.f64790o = 0;
        this.f64791p = 0;
        this.f64792q = context.getResources().getColor(R.color.money_text_color);
        this.f64793r = context.getResources().getDimension(R.dimen.wdp24);
        this.f64794s = context.getResources().getDimension(R.dimen.wdp18);
        this.f64796u = -1;
        this.f64797v = -1;
        this.f64799x = false;
        this.f64800y = 0;
        this.f64798w = 0;
        this.f64795t = context.getResources().getString(R.string.dl_text_normal);
        this.f64801z = context.getResources().getString(R.string.dl_text_install);
        this.A = context.getResources().getString(R.string.dl_text_install_ing);
        this.B = context.getResources().getString(R.string.dl_text_get);
        this.C = context.getResources().getString(R.string.dl_text_open);
        this.D = context.getResources().getString(R.string.dl_text_start);
        this.E = context.getResources().getString(R.string.dl_text_stop);
        this.F = context.getResources().getString(R.string.dl_text_wait);
        this.G = context.getResources().getString(R.string.dl_text_unzip);
        this.H = context.getResources().getString(R.string.dl_text_unzipping);
        this.I = context.getResources().getString(R.string.dl_text_update);
    }

    private void m(Context context, AttributeSet attrs) {
        LayoutInflater.from(context).inflate(R.layout.view_down_load_normal, this);
        this.f64777b = (DownloadLabeledProgressView) findViewById(R.id.tv_text);
        this.f64778c = (TextView) findViewById(R.id.tv_sub_text);
        this.f64779d = (RelativeLayout) findViewById(R.id.rl_install);
        this.f64780e = (ImageView) findViewById(R.id.iv_image);
        k(context, attrs);
        setOnClickListener(this);
    }

    private void o(String text, String defaultText) {
        if (t2.i(text)) {
            this.f64777b.label.setText(text);
        } else {
            this.f64777b.label.setText(defaultText);
        }
    }

    public void b(Downloadable downInfo) {
        Context context;
        if (downInfo == null || (context = getContext()) == null) {
            return;
        }
        boolean z10 = true;
        setEnabled(true);
        DownloadTask task = DlTaskManager.INSTANCE.getTask(downInfo);
        int downStatus = (!downInfo.hasGInfo() || downInfo.getGInfo() == null) ? 0 : downInfo.getGInfo().getDownStatus();
        boolean z11 = downInfo.getGInfo() != null && downInfo.getGInfo().needPurchase();
        if (downStatus == 3 && !z11) {
            j(41, context.getResources().getString(R.string.dl_text_pre_down));
        } else if (downStatus == 2 && !z11) {
            j(40, context.getResources().getString(R.string.dl_text_coming_soon));
        } else if (downStatus == 6 && !z11) {
            j(39, context.getResources().getString(R.string.dl_text_reservation));
        } else if (z11) {
            int pay_game_amount = downInfo.getGInfo() == null ? 0 : downInfo.getGInfo().getPayTagInfo().getPay_game_amount();
            j(43, context.getResources().getString(R.string.pay_game_amount, pay_game_amount + ""));
        } else {
            i(0);
        }
        if (downInfo.isH5Game()) {
            i(5);
            return;
        }
        if (downInfo.isMiniGame() || downInfo.isH5VmGame()) {
            i(5);
            return;
        }
        int status = (downInfo.hasGInfo() && downInfo.getGInfo().needPurchase()) ? 43 : task != null ? task.getStatus() : 0;
        if (downInfo.isHmCloud() && downInfo.hasGInfo()) {
            GInfo gInfo = downInfo.getGInfo();
            if (w0.m(gInfo.getTagInfo()) || w0.k(gInfo.getTagInfo())) {
                z10 = false;
            }
        }
        if (downInfo.isCpsGame() && d1.a(downInfo.getGInfo().getTagInfo())) {
            z10 = false;
        }
        if (downInfo.isH5Game()) {
            z10 = false;
        }
        if (task != null && z10) {
            e(downInfo, task);
        } else {
            i(status);
            r(false, 0);
        }
    }

    public void d(@Nullable DownloadTask task) {
        if (task == null || task.isHmCloud()) {
            return;
        }
        if ((task.isCpsGame() && d1.a(task.getGInfo().getTagInfo())) || task.isH5Game()) {
            return;
        }
        int status = task.getStatus();
        if (status == 10 || status == 1) {
            this.f64777b.setVisibility(0);
            this.f64780e.setVisibility(8);
            this.f64777b.setProgressPercent((int) task.getProgress());
            this.f64777b.setProgressBarVisible(true);
            o("", this.F);
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            this.f64777b.setVisibility(0);
            this.f64780e.setVisibility(8);
            this.f64777b.setProgressPercent((int) task.getProgress());
            this.f64777b.setProgressBarVisible(true);
            return;
        }
        if (!n()) {
            if (status != 12 || task.getProgress() >= 100) {
                return;
            }
            this.f64777b.setVisibility(0);
            this.f64780e.setVisibility(8);
            this.f64777b.setProgressPercent((int) task.getProgress());
            this.f64777b.setProgressBarVisible(true);
            return;
        }
        if (status == 2 || status == 12) {
            if (status != 12 || task.getProgress() < 100) {
                this.f64777b.setVisibility(0);
                this.f64780e.setVisibility(8);
                this.f64777b.label.setText(task.getProgress() + "%");
                this.f64777b.setProgressPercent((int) task.getProgress());
                this.f64777b.setProgressBarVisible(true);
            }
        }
    }

    public void e(Downloadable downInfo, @Nullable DownloadTask task) {
        if (task == null || downInfo == null) {
            this.f64777b.setProgressBarVisible(false);
            i(0);
            return;
        }
        int status = task.getStatus();
        long progress = task.getProgress();
        boolean zN = n();
        boolean z10 = true;
        if (!zN ? !(status == 10 || status == 1 || ((status == 12 && progress < 100) || status == 3 || status == 6 || status == 27)) : !(status == 10 || status == 1 || status == 2 || ((status == 12 && progress < 100) || status == 3 || status == 6 || status == 27))) {
            z10 = false;
        }
        if (z10) {
            g(status, progress, zN);
            return;
        }
        this.f64777b.setProgressBarVisible(false);
        i(status);
        if (status == 12) {
            j(12, "");
            return;
        }
        if ((status == 5 || status == 42) && progress >= 100) {
            j(status, "");
        } else {
            if (status != 9 || progress < 100) {
                return;
            }
            j(9, "");
        }
    }

    public void f(com.join.mgps.callbacks.f callback) {
        setEnabled(true);
        this.J = callback;
        if (callback != null) {
            callback.onViewUpdate(this);
        }
    }

    public void h(String text, boolean show) {
        this.f64778c.setText(text);
        if (show) {
            this.f64778c.setVisibility(0);
        } else {
            this.f64778c.setVisibility(8);
        }
    }

    public void i(int status) {
        j(status, "");
    }

    public void j(int status, String text) {
        this.f64777b.setVisibility(0);
        this.f64780e.setVisibility(8);
        this.f64777b.setProgressBarVisible(false);
        setEnabled(true);
        if (status == 9) {
            o(text, this.I);
            a(0, R.color.dl_solid_green);
            return;
        }
        if (status == 12) {
            o(text, this.H);
            a(this.f64790o, R.color.dl_solid_unzip);
            return;
        }
        if (status == 13) {
            o(text, this.G);
            a(this.f64789n, R.color.dl_solid_unzip);
            return;
        }
        if (status == 11) {
            o(text, this.f64801z);
            a(0, R.color.dl_solid_green);
            return;
        }
        if (status == 48) {
            o(text, this.A);
            a(this.f64783h, R.color.dl_solid_default);
            return;
        }
        if (status == 5 || status == 42) {
            o(text, this.C);
            a(this.f64785j, R.color.dl_solid_green);
            return;
        }
        if (status == 2) {
            o(text, this.E);
            a(this.f64781f, R.color.dl_solid_default);
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            o(text, this.D);
            a(this.f64787l, R.color.dl_solid_default);
            return;
        }
        if (status == 10) {
            o(text, this.F);
            a(this.f64788m, R.color.dl_solid_default);
            return;
        }
        if (status == 1) {
            o(text, this.F);
            a(this.f64788m, R.color.dl_solid_default);
            return;
        }
        if (status == 43) {
            o(text, this.B);
            a(this.f64781f, R.color.dl_solid_default);
            return;
        }
        if (status == 39) {
            o(text, this.B);
            a(this.f64781f, R.color.dl_solid_default);
            return;
        }
        if (status == 40) {
            o(text, this.B);
            a(this.f64781f, R.color.dl_solid_default);
        } else if (status != 41) {
            o(text, this.B);
            a(this.f64781f, R.color.dl_solid_default);
        } else {
            o(text, this.B);
            a(this.f64781f, R.color.dl_solid_default);
            setEnabled(false);
        }
    }

    public boolean n() {
        return this.f64798w == 2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.join.mgps.callbacks.f fVar;
        if (view != this || (fVar = this.J) == null) {
            return;
        }
        fVar.onViewClicked(this);
    }

    public void p(int imageResId) {
        setEnabled(true);
        this.f64777b.setVisibility(8);
        this.f64780e.setVisibility(0);
        this.f64780e.setImageResource(imageResId);
    }

    public void q(String openText) {
        setEnabled(true);
        this.f64777b.setVisibility(0);
        this.f64780e.setVisibility(8);
        this.f64777b.label.setText(openText);
        a(this.f64785j, R.color.dl_solid_default);
        this.f64777b.setProgressBarVisible(false);
    }

    public void r(boolean show, int progress) {
        this.f64777b.setProgressPercent(progress);
        this.f64777b.setProgressBarVisible(show);
    }

    public void s(long text) {
        this.f64777b.label.setText(text + "%");
        this.f64777b.setProgressPercent((int) text);
    }

    public void setBackgroundGet(int backgroundGet) {
        this.f64784i = backgroundGet;
    }

    public void setBackgroundInstall(int backgroundInstall) {
        this.f64782g = backgroundInstall;
    }

    public void setBackgroundInstalling(int backgroundInstalling) {
        this.f64783h = backgroundInstalling;
    }

    public void setBackgroundNormal(int backgroundNormal) {
        this.f64781f = backgroundNormal;
    }

    public void setBackgroundOpen(int backgroundOpen) {
        this.f64785j = backgroundOpen;
    }

    public void setBackgroundStart(int backgroundStart) {
        this.f64786k = backgroundStart;
    }

    public void setBackgroundStop(int backgroundStop) {
        this.f64787l = backgroundStop;
    }

    public void setBackgroundUnzip(int backgroundUnzip) {
        this.f64789n = backgroundUnzip;
    }

    public void setBackgroundUnzipping(int backgroundUnzipping) {
        this.f64790o = backgroundUnzipping;
    }

    public void setBackgroundUpdate(int backgroundUpdate) {
        this.f64791p = backgroundUpdate;
    }

    public void setBackgroundWait(int backgroundWait) {
        this.f64788m = backgroundWait;
    }

    public void setBoldStyle() {
        this.f64777b.label.setTypeface(Typeface.DEFAULT, 1);
    }

    public void setSubTextColor(int subTextColor) {
        this.f64792q = subTextColor;
        this.f64778c.setTextColor(subTextColor);
    }

    public void setSubTextSize(int subTextSize) {
        this.f64794s = subTextSize;
    }

    public void setTextColor(int color) {
        this.f64777b.setLabelTextColor(color);
    }

    public void setTextGet(String textGet) {
        this.B = textGet;
    }

    public void setTextInstall(String textInstall) {
        this.f64801z = textInstall;
    }

    public void setTextInstalling(String textInstalling) {
        this.A = textInstalling;
    }

    public void setTextNormal(String textNormal) {
        this.f64795t = textNormal;
    }

    public void setTextOpen(String textOpen) {
        this.C = textOpen;
    }

    public void setTextSize(int textSize) {
        this.f64793r = textSize;
    }

    public void setTextStart(String textStart) {
        this.D = textStart;
    }

    public void setTextStop(String textStop) {
        this.E = textStop;
    }

    public void setTextUnzip(String textUnzip) {
        this.G = textUnzip;
    }

    public void setTextUnzipping(String textUnzipping) {
        this.H = textUnzipping;
    }

    public void setTextUpdate(String textUpdate) {
        this.I = textUpdate;
    }

    public void setTextWait(String textWait) {
        this.F = textWait;
    }

    public DownloadNormalView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        m(context, attrs);
    }

    public DownloadNormalView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        m(context, attrs);
    }
}
