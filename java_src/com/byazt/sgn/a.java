package com.byazt.sgn;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.ff.TTProgressBar;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 34})
public class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f19635a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TTProgressBar f19636c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public View f19637da;
    public View gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f19638i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f19639m;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f19640n;
    public int nu;
    public String rh;
    public ViewGroup sl;
    public Button sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Context f19641t;
    public c tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f19642u;
    public ImageView uj;
    public View.OnClickListener ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Button f19643x;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f19644z;

    public interface c {
        void c();

        void tt();
    }

    public a(Context context) {
        super(context);
        this.nu = -1;
        this.my = false;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.f19641t = context;
    }

    private void n() {
        this.sp = (Button) findViewById(2114387829);
        this.f19643x = (Button) findViewById(2114387914);
        this.f19640n = (TextView) findViewById(2114387802);
        this.f19635a = (TextView) findViewById(2114387857);
        this.uj = (ImageView) findViewById(2114387832);
        this.f19637da = findViewById(2114387775);
        this.sl = (ViewGroup) findViewById(2114387849);
        this.f19638i = (Button) findViewById(2114387749);
    }

    private void uj() {
        Button button;
        if (this.f19640n != null) {
            if (TextUtils.isEmpty(this.yp)) {
                this.f19640n.setVisibility(8);
            } else {
                this.f19640n.setText(this.yp);
                this.f19640n.setVisibility(0);
            }
        }
        if (this.f19635a != null && !TextUtils.isEmpty(this.f19642u)) {
            this.f19635a.setText(this.f19642u);
        }
        if (this.f19643x != null) {
            if (TextUtils.isEmpty(this.f19644z)) {
                this.f19643x.setText("确定");
            } else {
                this.f19643x.setText(this.f19644z);
            }
            int i10 = this.nu;
            if (i10 != -1) {
                this.f19643x.setBackgroundColor(i10);
            }
        }
        if (this.sp != null) {
            if (TextUtils.isEmpty(this.f19639m)) {
                this.sp.setText("取消");
            } else {
                this.sp.setText(this.f19639m);
            }
        }
        ImageView imageView = this.uj;
        if (imageView != null) {
            String str = this.rh;
            if (str != null) {
                com.byazt.nr.z.c(this.f19641t, str, imageView, 320);
                this.uj.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        View view = this.f19637da;
        if (view == null || (button = this.sp) == null) {
            return;
        }
        if (this.my) {
            view.setVisibility(8);
            this.sp.setVisibility(8);
            return;
        }
        button.setVisibility(0);
        View view2 = this.f19637da;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void ve() {
        pf.c(this.f19643x, new View.OnClickListener() { // from class: com.byazt.sgn.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c cVar = a.this.tt;
                if (cVar != null) {
                    cVar.c();
                }
            }
        }, "positiveBn");
        pf.c(this.sp, new View.OnClickListener() { // from class: com.byazt.sgn.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c cVar = a.this.tt;
                if (cVar != null) {
                    cVar.tt();
                }
            }
        }, "negtiveBn");
        pf.c(this.f19638i, new View.OnClickListener() { // from class: com.byazt.sgn.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View.OnClickListener onClickListener = a.this.ve;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
            }
        }, "dialog_change_btn");
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        View viewQ = this.gt;
        if (viewQ == null) {
            viewQ = com.byazt.vfu.a.q(this.f19641t);
        }
        setContentView(viewQ);
        n();
        uj();
        ve();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            uj();
        } catch (Exception unused) {
        }
    }

    public a tt(String str) {
        this.yp = str;
        return this;
    }

    public a c(c cVar) {
        this.tt = cVar;
        return this;
    }

    public void tt() {
        ViewGroup viewGroup = this.sl;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public a c(View.OnClickListener onClickListener) {
        this.ve = onClickListener;
        return this;
    }

    public a c(String str) {
        this.f19642u = str;
        return this;
    }

    public a ve(String str) {
        this.f19644z = str;
        return this;
    }

    public a c(int i10) {
        this.nu = i10;
        return this;
    }

    public a c(View view) {
        this.gt = view;
        return this;
    }

    public void c() {
        if (this.sl == null) {
            return;
        }
        if (this.f19636c == null) {
            try {
                this.f19636c = new TTProgressBar(this.f19641t);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                layoutParams.gravity = 17;
                this.f19636c.setLayoutParams(layoutParams);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Color.parseColor("#77000000"));
                gradientDrawable.setCornerRadius(pf.ve(this.f19641t, 2.0f));
                this.f19636c.setBackground(gradientDrawable);
                int iVe = pf.ve(this.f19641t, 10.0f);
                this.f19636c.setPadding(iVe, iVe, iVe, iVe);
                com.byazt.nr.z.c(this.f19641t, "tt_normalscreen_loading", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.sgn.a.4
                    @Override // com.byazt.qr.c
                    public void c(Bitmap bitmap) {
                        a.this.f19636c.setIndeterminateDrawable(com.byazt.vfu.n.c(a.this.f19641t, new BitmapDrawable(a.this.f19641t.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
                    }
                }, 320);
                this.sl.addView(this.f19636c);
            } catch (Exception unused) {
            }
        }
        this.sl.setVisibility(0);
    }

    public a n(String str) {
        this.rh = str;
        return this;
    }

    public a uj(String str) {
        this.f19639m = str;
        return this;
    }
}
