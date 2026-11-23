package com.byazt.sgn;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.byazt.aas.pf;
import com.byazt.ff.TTRatingBar2;
import com.byazt.ff.TTRoundRectImageView;
import com.byazt.omf.gt;
import com.byazt.si.UgenLottieView;
import java.text.DecimalFormat;
import java.util.Stack;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 54})
public class ve extends AlertDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f19730a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f19732d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public TTRatingBar2 f19733da;
    public c eo;
    public String gr;
    public String gt;
    public String gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RelativeLayout f19734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f19735i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f19736m;
    public float md;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f19737n;
    public Button nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public JSONArray f19738p;
    public String qy;
    public com.byazt.si.tt rh;
    public String rl;
    public TextView sl;
    public TextView sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f19739t;
    public Stack<View> tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f19740u;
    public TTRoundRectImageView uj;
    public ImageView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LinearLayout f19741x;
    public TextView yp;
    public String yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TextView f19742z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public String f19743zb;
    public String zm;

    public interface c {
        void a(Dialog dialog);

        void c(Dialog dialog);

        void n(Dialog dialog);

        void tt(Dialog dialog);

        void uj(Dialog dialog);

        void ve(Dialog dialog);
    }

    public ve(Context context) {
        super(context);
        this.tt = new Stack<>();
        this.f19731c = context;
    }

    private View a() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f19731c);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        relativeLayout.setId(View.generateViewId());
        ImageView imageView = new ImageView(this.f19731c);
        this.ve = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iVe = pf.ve(this.f19731c, 46.0f);
        this.ve.setMaxHeight(iVe);
        this.ve.setMaxWidth(iVe);
        this.ve.setMinimumHeight(iVe);
        this.ve.setMinimumWidth(iVe);
        com.byazt.vfu.ve veVar = new com.byazt.vfu.ve(pf.ve(this.f19731c, 14.0f));
        veVar.c(-16777216);
        veVar.c(pf.ve(this.f19731c, 2.0f));
        this.ve.setImageDrawable(veVar);
        relativeLayout.addView(this.ve);
        TextView textView = new TextView(this.f19731c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("应用详情");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        this.f19734h.addView(relativeLayout);
        return c(relativeLayout);
    }

    private ImageView n() {
        ImageView imageView = new ImageView(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(pf.ve(this.f19731c, 0.5f), pf.ve(this.f19731c, 9.0f));
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
        return imageView;
    }

    private void sp() {
        RelativeLayout relativeLayout;
        if (this.f19732d == null || (relativeLayout = this.f19734h) == null) {
            return;
        }
        final int childCount = relativeLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            this.f19734h.getChildAt(i10).setVisibility(4);
        }
        this.f19732d.postDelayed(new Runnable() { // from class: com.byazt.sgn.ve.7
            @Override // java.lang.Runnable
            public void run() {
                ve.this.ve(childCount);
            }
        }, 10L);
    }

    private LinearLayout tt(int i10, LinearLayout linearLayout, LinearLayout linearLayout2, int i11) {
        this.f19741x = new LinearLayout(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.topMargin = pf.ve(this.f19731c, 10.0f);
        this.f19741x.setLayoutParams(layoutParams);
        this.f19741x.setOrientation(0);
        linearLayout2.addView(this.f19741x);
        this.f19735i = new LinearLayout(this.f19731c);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = pf.ve(this.f19731c, 10.0f);
        if (i10 == 0) {
            layoutParams2.topMargin = pf.ve(this.f19731c, 16.0f);
        } else {
            layoutParams2.topMargin = pf.ve(this.f19731c, 10.0f);
        }
        this.f19735i.setLayoutParams(layoutParams2);
        this.f19735i.setOrientation(0);
        this.f19733da = new TTRatingBar2(this.f19731c, null);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        this.f19733da.setLayoutParams(layoutParams3);
        this.f19735i.addView(this.f19733da);
        this.sl = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        layoutParams4.leftMargin = pf.ve(this.f19731c, 3.0f);
        this.sl.setTextSize(16.0f);
        this.sl.setTextColor(Color.parseColor("#161823"));
        this.sl.setLayoutParams(layoutParams4);
        this.f19735i.addView(this.sl);
        linearLayout2.addView(this.f19735i);
        return c(i10, linearLayout, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(int i10) {
        try {
            Rect rect = new Rect();
            if (this.f19731c.getResources().getConfiguration().orientation == 1) {
                this.f19739t.getGlobalVisibleRect(rect);
            } else {
                this.nu.getGlobalVisibleRect(rect);
            }
            while (!this.tt.isEmpty()) {
                Rect rect2 = new Rect();
                View viewPop = this.tt.pop();
                if (viewPop != null && viewPop.getVisibility() != 8) {
                    viewPop.getGlobalVisibleRect(rect2);
                    if (rect2.top != 0 && rect.top >= rect2.bottom) {
                        break;
                    }
                    if (viewPop == this.f19737n) {
                        View viewPop2 = this.tt.pop();
                        if (viewPop2 != null) {
                            viewPop2.setVisibility(8);
                        }
                    } else {
                        viewPop.setVisibility(8);
                    }
                }
            }
            if (this.tt.isEmpty()) {
                x();
            }
        } catch (Throwable unused) {
        }
        this.f19734h.setVisibility(0);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f19734h.getChildAt(i11).setVisibility(0);
        }
    }

    private void x() {
        RelativeLayout.LayoutParams layoutParams;
        Button button = this.nu;
        if (button != null) {
            ViewGroup.LayoutParams layoutParams2 = button.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                layoutParams3.bottomMargin = layoutParams3.topMargin;
                this.nu.setLayoutParams(layoutParams3);
            } else if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams2;
                layoutParams4.bottomMargin = layoutParams4.topMargin;
                this.nu.setLayoutParams(layoutParams4);
            }
        }
        com.byazt.si.tt ttVar = this.rh;
        if (ttVar != null) {
            UgenLottieView ugenLottieViewI = ttVar.i();
            if (ugenLottieViewI != null) {
                layoutParams = (RelativeLayout.LayoutParams) ugenLottieViewI.getLayoutParams();
            } else {
                int iVe = pf.ve(this.f19731c, 60.0f);
                layoutParams = new RelativeLayout.LayoutParams(iVe, iVe);
            }
            layoutParams.topMargin = -pf.ve(this.f19731c, 53.0f);
            this.rh.c(layoutParams);
        }
    }

    public ve i(String str) {
        this.f19743zb = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        c cVar = this.eo;
        if (cVar != null) {
            cVar.ve(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vfu.sp.tt(this);
        c();
        setCanceledOnTouchOutside(false);
        tt();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        ve();
    }

    public ve uj(String str) {
        this.rl = str;
        return this;
    }

    public String uj() {
        return this.f19743zb;
    }

    public void c() {
        if (this.f19731c == null) {
            this.f19731c = gt.getContext();
        }
        if (this.f19731c.getResources().getConfiguration().orientation == 1) {
            this.f19732d = c(1);
        } else {
            this.f19732d = c(0);
        }
        setContentView(this.f19732d);
    }

    public ve n(String str) {
        this.qy = str;
        return this;
    }

    public ve sp(String str) {
        this.gr = str;
        return this;
    }

    private View c(int i10) {
        int iVe;
        LinearLayout linearLayoutTt = tt(i10);
        LinearLayout linearLayout = new LinearLayout(this.f19731c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i10 == 0) {
            iVe = pf.ve(this.f19731c, 40.0f);
        } else {
            layoutParams.addRule(3, a().getId());
            iVe = pf.ve(this.f19731c, 16.0f);
        }
        layoutParams.leftMargin = iVe;
        layoutParams.rightMargin = iVe;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        this.f19734h.addView(linearLayout);
        this.uj = new TTRoundRectImageView(this.f19731c);
        int iVe2 = pf.ve(this.f19731c, 64.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iVe2, iVe2);
        layoutParams2.gravity = 1;
        if (i10 == 0) {
            layoutParams2.topMargin = pf.ve(this.f19731c, 40.0f);
        } else {
            layoutParams2.topMargin = pf.ve(this.f19731c, 36.0f);
        }
        this.uj.setMaxHeight(iVe2);
        this.uj.setMaxWidth(iVe2);
        this.uj.setMinimumHeight(iVe2);
        this.uj.setMinimumWidth(iVe2);
        this.uj.setLayoutParams(layoutParams2);
        linearLayout.addView(this.uj);
        return c(i10, linearLayoutTt, linearLayout, iVe);
    }

    public ve x(String str) {
        this.zm = str;
        return this;
    }

    public void ve() {
        String str;
        int iUj;
        if (this.f19731c == null) {
            this.f19731c = gt.getContext();
        }
        int i10 = this.f19731c.getResources().getConfiguration().orientation;
        TextView textView = this.f19737n;
        if (textView != null) {
            textView.setText(this.my);
        } else {
            TTRoundRectImageView tTRoundRectImageView = this.uj;
            if (tTRoundRectImageView != null) {
                tTRoundRectImageView.setVisibility(8);
            }
        }
        if (this.uj != null && !TextUtils.isEmpty(this.gt)) {
            com.byazt.xky.tt.c(this.gt).to(this.uj);
        } else {
            TTRoundRectImageView tTRoundRectImageView2 = this.uj;
            if (tTRoundRectImageView2 != null) {
                tTRoundRectImageView2.setVisibility(8);
            }
        }
        if (this.f19730a != null) {
            if (TextUtils.isEmpty(this.rl)) {
                this.f19730a.setVisibility(8);
            } else {
                this.f19730a.setText(this.rl);
            }
        }
        if (this.f19741x != null) {
            JSONArray jSONArray = this.f19738p;
            if (jSONArray != null && jSONArray.length() > 0) {
                WindowManager windowManager = (WindowManager) this.f19731c.getSystemService("window");
                Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
                if (defaultDisplay != null) {
                    int width = defaultDisplay.getWidth();
                    if (width > defaultDisplay.getHeight()) {
                        double dUj = pf.uj(this.f19731c, width);
                        iUj = ((int) (dUj - (0.38d * dUj))) - 80;
                    } else {
                        iUj = pf.uj(this.f19731c, width) - 36;
                    }
                } else {
                    iUj = 0;
                }
                int length = this.f19738p.length() <= 3 ? this.f19738p.length() : 3;
                for (int i11 = 0; i11 < length; i11++) {
                    String strOptString = this.f19738p.optString(i11);
                    if (!TextUtils.isEmpty(strOptString)) {
                        TextView textView2 = new TextView(this.f19731c);
                        textView2.setText(strOptString);
                        textView2.setTextSize(12.0f);
                        textView2.setTextColor(Color.parseColor("#161823"));
                        textView2.setAlpha(0.75f);
                        textView2.setBackgroundColor(Color.parseColor("#0F161823"));
                        int iVe = pf.ve(this.f19731c, 6.0f);
                        textView2.setPadding(iVe, 0, iVe, 0);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        int iVe2 = pf.ve(this.f19731c, 3.0f);
                        layoutParams.leftMargin = iVe2;
                        layoutParams.rightMargin = iVe2;
                        textView2.setLayoutParams(layoutParams);
                        TextPaint paint = textView2.getPaint();
                        Rect rect = new Rect();
                        paint.getTextBounds(strOptString, 0, strOptString.length(), rect);
                        iUj -= pf.uj(this.f19731c, rect.width()) + 20;
                        if (iUj >= 0) {
                            this.f19741x.addView(textView2);
                        } else {
                            if (this.f19741x.getChildCount() > 0) {
                                break;
                            }
                            this.f19741x.setVisibility(8);
                            break;
                        }
                    }
                }
            } else {
                this.f19741x.setVisibility(8);
            }
        }
        if (this.f19733da != null && this.sl != null) {
            float f10 = this.md;
            if (f10 <= 0.0f) {
                LinearLayout linearLayout = this.f19735i;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                this.f19733da.setVisibility(8);
                this.sl.setVisibility(8);
            } else {
                if (f10 > 5.0f) {
                    f10 = 5.0f;
                }
                this.md = f10;
                this.sl.setText(new DecimalFormat(".0").format(this.md));
                this.f19733da.setRating(this.md);
                this.f19733da.c(pf.ve(this.f19731c, 16.0f), pf.ve(this.f19731c, 15.0f));
                this.f19733da.c(pf.ve(this.f19731c, 3.0f), 0, pf.ve(this.f19731c, 3.0f), 0);
                this.f19733da.c();
            }
        }
        if (this.f19739t != null) {
            str = TextUtils.isEmpty(this.qy) ? String.format("版本号：%1$s", "暂无") : String.format("版本号：%1$s", this.qy);
            if (i10 == 2) {
                TextPaint paint2 = this.f19739t.getPaint();
                Rect rect2 = new Rect();
                paint2.getTextBounds(str, 0, str.length(), rect2);
                double dI = pf.i(this.f19731c);
                int iWidth = (((int) (dI - (0.4d * dI))) - rect2.width()) - pf.ve(this.f19731c, 106.0f);
                TextView textView3 = this.yp;
                if (textView3 != null) {
                    TextPaint paint3 = textView3.getPaint();
                    String string = this.yp.getText().toString();
                    paint3.getTextBounds(string, 0, string.length(), rect2);
                    iWidth -= rect2.width();
                }
                TextView textView4 = this.sp;
                if (textView4 != null) {
                    TextPaint paint4 = textView4.getPaint();
                    String string2 = this.sp.getText().toString();
                    paint4.getTextBounds(string2, 0, string2.length(), rect2);
                    iWidth -= rect2.width();
                }
                TextView textView5 = this.f19736m;
                if (textView5 != null) {
                    TextPaint paint5 = textView5.getPaint();
                    String string3 = this.f19736m.getText().toString();
                    paint5.getTextBounds(string3, 0, string3.length(), rect2);
                    iWidth -= rect2.width();
                }
                if (this.f19742z != null && !TextUtils.isEmpty(this.gr)) {
                    TextPaint paint6 = this.f19742z.getPaint();
                    String string4 = this.f19742z.getText().toString();
                    paint6.getTextBounds(string4, 0, TextUtils.isEmpty(string4) ? 0 : string4.length(), rect2);
                    iWidth -= rect2.width();
                }
                if (iWidth <= 0) {
                    ((LinearLayout.LayoutParams) this.f19739t.getLayoutParams()).weight = 1.0f;
                }
            }
            if (i10 == 1) {
                this.f19739t.setText(str);
            }
        } else {
            str = "";
        }
        TextView textView6 = this.f19740u;
        if (textView6 != null) {
            textView6.setSelected(true);
            String str2 = TextUtils.isEmpty(this.zm) ? String.format("开发者：%1$s", "补充中，可于应用官网查看") : String.format("开发者：%1$s", this.zm);
            if (i10 == 2) {
                str2 = str2 + "  " + str;
            }
            this.f19740u.setText(str2);
        }
    }

    public ve a(String str) {
        this.gu = str;
        return this;
    }

    private LinearLayout tt(int i10, LinearLayout linearLayout, int i11, LinearLayout linearLayout2, View view) {
        if (i10 == 0) {
            c(i10, (ViewGroup) linearLayout2);
            if (!TextUtils.isEmpty(this.gu)) {
                View imageView = new ImageView(this.f19731c);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(pf.ve(this.f19731c, 0.5f), pf.ve(this.f19731c, 9.0f));
                layoutParams.leftMargin = pf.ve(this.f19731c, 8.0f);
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
                linearLayout2.addView(imageView);
            }
        }
        int iVe = pf.ve(this.f19731c, 8.0f);
        c(linearLayout2, iVe);
        tt(linearLayout2, iVe);
        return c(i10, linearLayout, i11, linearLayout2, view, iVe);
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, LinearLayout linearLayout2, int i11) {
        this.f19737n = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        if (i10 == 0) {
            layoutParams.topMargin = pf.ve(this.f19731c, 16.0f);
            int iVe = pf.ve(this.f19731c, 25.0f);
            layoutParams.leftMargin = iVe;
            layoutParams.rightMargin = iVe;
        } else {
            layoutParams.topMargin = pf.ve(this.f19731c, 14.0f);
        }
        this.f19737n.setLayoutParams(layoutParams);
        this.f19737n.setEllipsize(TextUtils.TruncateAt.END);
        this.f19737n.setTextColor(Color.parseColor("#161823"));
        this.f19737n.setTextSize(18.0f);
        this.f19737n.setGravity(17);
        this.f19737n.setTypeface(null, 1);
        linearLayout2.addView(this.f19737n);
        this.f19730a = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = pf.ve(this.f19731c, 5.0f);
        this.f19730a.setLayoutParams(layoutParams2);
        this.f19730a.setEllipsize(TextUtils.TruncateAt.END);
        this.f19730a.setSingleLine(true);
        this.f19730a.setAlpha(0.5f);
        this.f19730a.setTextColor(Color.parseColor("#161823"));
        this.f19730a.setTextSize(14.0f);
        this.f19730a.setGravity(17);
        linearLayout2.addView(this.f19730a);
        return tt(i10, linearLayout, linearLayout2, i11);
    }

    private void tt(LinearLayout linearLayout, int i10) {
        linearLayout.addView(n());
        this.sp = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i10;
        layoutParams.rightMargin = i10;
        this.sp.setLayoutParams(layoutParams);
        this.sp.setAlpha(0.75f);
        this.sp.setTextColor(Color.parseColor("#66161823"));
        if (this.f19731c.getResources().getConfiguration().orientation == 2) {
            this.sp.setTextSize(10.0f);
        } else {
            this.sp.setTextSize(12.0f);
        }
        this.sp.setText("权限");
        linearLayout.addView(this.sp);
    }

    private LinearLayout tt(int i10) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams layoutParams2;
        LinearLayout linearLayout = new LinearLayout(this.f19731c);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i10);
        linearLayout.setBackgroundColor(Color.parseColor("#99000000"));
        linearLayout.setLayoutParams(layoutParams3);
        View view = new View(this.f19731c);
        if (i10 == 0) {
            layoutParams = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams.weight = 0.38f;
        view.setLayoutParams(layoutParams);
        linearLayout.addView(view);
        this.f19734h = new RelativeLayout(this.f19731c);
        if (i10 == 0) {
            layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams2.weight = 0.62f;
        layoutParams2.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(pf.ve(this.f19731c, 8.0f));
        this.f19734h.setBackground(gradientDrawable);
        this.f19734h.setLayoutParams(layoutParams2);
        linearLayout.addView(this.f19734h);
        return c(i10, linearLayout);
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, int i11) {
        int iHg = gt.tt().hg();
        boolean zJg = gt.tt().jg();
        if (zJg && iHg == 1) {
            this.nu = new ShakeButton(this.f19731c);
        } else if (zJg && iHg == 2) {
            this.nu = new ShineButton(this.f19731c);
        } else {
            this.nu = new Button(this.f19731c);
        }
        this.nu.setId(View.generateViewId());
        LinearLayout linearLayout2 = new LinearLayout(this.f19731c);
        linearLayout2.setId(View.generateViewId());
        View view = new View(this.f19731c);
        view.setId(View.generateViewId());
        TextView textView = new TextView(this.f19731c);
        this.f19740u = textView;
        textView.setId(View.generateViewId());
        if (i10 == 1) {
            c(i10, this.f19734h);
        } else {
            c(pf.ve(this.f19731c, 89.0f), i10);
        }
        return c(i10, linearLayout, i11, linearLayout2, view);
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, int i11, LinearLayout linearLayout2, View view) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(2, linearLayout2.getId());
        if (i10 == 1) {
            layoutParams.leftMargin = i11;
            layoutParams.rightMargin = i11;
        } else {
            int iVe = pf.ve(this.f19731c, 16.0f);
            layoutParams.leftMargin = iVe;
            layoutParams.rightMargin = iVe;
        }
        layoutParams.topMargin = pf.ve(this.f19731c, 3.0f);
        this.f19740u.setEllipsize(TextUtils.TruncateAt.END);
        this.f19740u.setGravity(17);
        this.f19740u.setTextColor(Color.parseColor("#4D161823"));
        if (i10 == 0) {
            this.f19740u.setTextSize(10.0f);
        } else {
            this.f19740u.setTextSize(12.0f);
        }
        this.f19740u.setLayoutParams(layoutParams);
        this.f19734h.addView(this.f19740u);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = i11;
        layoutParams2.rightMargin = i11;
        if (i10 == 1) {
            layoutParams2.topMargin = pf.ve(this.f19731c, 9.0f);
        } else {
            layoutParams2.topMargin = pf.ve(this.f19731c, 2.0f);
            layoutParams2.bottomMargin = pf.ve(this.f19731c, 20.0f);
        }
        if (i10 == 1) {
            layoutParams2.addRule(2, view.getId());
        } else {
            layoutParams2.addRule(12);
            layoutParams2.addRule(14);
        }
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setGravity(1);
        return tt(i10, linearLayout, i11, linearLayout2, view);
    }

    public void tt() {
        if (this.f19731c == null) {
            this.f19731c = gt.getContext();
        }
        this.tt.clear();
        this.tt.push(this.uj);
        this.tt.push(this.f19737n);
        this.tt.push(this.f19730a);
        this.tt.push(this.f19741x);
        this.tt.push(this.f19735i);
        sp();
        this.f19736m.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ve.this.eo == null) {
                    return;
                }
                ve.this.eo.n(ve.this);
            }
        });
        if (this.f19742z != null && !TextUtils.isEmpty(this.gr)) {
            this.f19742z.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ve.this.eo != null) {
                        ve.this.eo.a(ve.this);
                    }
                }
            });
        }
        this.sp.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ve.this.eo != null) {
                    ve.this.eo.tt(ve.this);
                }
            }
        });
        this.ve.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ve.this.eo != null) {
                    ve.this.eo.ve(ve.this);
                }
            }
        });
        this.yp.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ve.this.eo != null) {
                    ve.this.eo.uj(ve.this);
                }
            }
        });
        this.nu.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.ve.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ve.this.eo != null) {
                    ve.this.eo.c(ve.this);
                }
            }
        });
    }

    public ve tt(String str) {
        this.gt = str;
        return this;
    }

    private void c(LinearLayout linearLayout, int i10) {
        this.f19736m = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i10;
        layoutParams.rightMargin = i10;
        this.f19736m.setLayoutParams(layoutParams);
        this.f19736m.setAlpha(0.75f);
        this.f19736m.setTextColor(Color.parseColor("#66161823"));
        if (this.f19731c.getResources().getConfiguration().orientation == 2) {
            this.f19736m.setTextSize(10.0f);
        } else {
            this.f19736m.setTextSize(12.0f);
        }
        this.f19736m.setText("功能");
        linearLayout.addView(this.f19736m);
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, int i11, LinearLayout linearLayout2, View view, int i12) {
        linearLayout2.addView(n());
        this.yp = new TextView(this.f19731c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i12;
        layoutParams.rightMargin = i12;
        this.yp.setLayoutParams(layoutParams);
        this.yp.setAlpha(0.75f);
        this.yp.setTextColor(Color.parseColor("#66161823"));
        if (this.f19731c.getResources().getConfiguration().orientation == 2) {
            this.yp.setTextSize(10.0f);
        } else {
            this.yp.setTextSize(12.0f);
        }
        this.yp.setText("隐私");
        linearLayout2.addView(this.yp);
        if (!TextUtils.isEmpty(this.gr)) {
            linearLayout2.addView(n());
            this.f19742z = new TextView(this.f19731c);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.leftMargin = i12;
            layoutParams2.rightMargin = i12;
            this.f19742z.setLayoutParams(layoutParams2);
            this.f19742z.setAlpha(0.75f);
            this.f19742z.setTextColor(Color.parseColor("#66161823"));
            if (this.f19731c.getResources().getConfiguration().orientation == 2) {
                this.f19742z.setTextSize(10.0f);
            } else {
                this.f19742z.setTextSize(12.0f);
            }
            this.f19742z.setText("备案");
            linearLayout2.addView(this.f19742z);
        }
        this.f19734h.addView(linearLayout2);
        if (i10 == 0) {
            return linearLayout;
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, pf.ve(this.f19731c, 1.0f));
        layoutParams3.topMargin = pf.ve(this.f19731c, 12.0f);
        layoutParams3.addRule(2, this.nu.getId());
        view.setLayoutParams(layoutParams3);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        this.f19734h.addView(view);
        c(i11, i10);
        return linearLayout;
    }

    public ve ve(String str) {
        this.yv = str;
        return this;
    }

    private LinearLayout c(int i10, LinearLayout linearLayout) {
        if (i10 == 0) {
            this.ve = new ImageView(this.f19731c);
            int iVe = pf.ve(this.f19731c, 28.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iVe, iVe);
            int iVe2 = pf.ve(this.f19731c, 36.0f);
            layoutParams.topMargin = iVe2;
            layoutParams.rightMargin = iVe2;
            layoutParams.leftMargin = iVe2;
            layoutParams.bottomMargin = iVe2;
            layoutParams.addRule(10);
            layoutParams.addRule(21);
            layoutParams.addRule(11);
            this.ve.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.ve.setLayoutParams(layoutParams);
            this.ve.setMaxHeight(iVe);
            this.ve.setMaxWidth(iVe);
            this.ve.setMinimumHeight(iVe);
            this.ve.setMinimumWidth(iVe);
            com.byazt.vfu.tt ttVar = new com.byazt.vfu.tt(pf.ve(this.f19731c, 28.0f));
            ttVar.c(Color.parseColor("#66161823"));
            float fVe = pf.ve(this.f19731c, 2.0f);
            ttVar.c(fVe);
            com.byazt.vfu.ve veVar = new com.byazt.vfu.ve(pf.ve(this.f19731c, 12.0f));
            veVar.c(-1);
            veVar.c(fVe);
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ttVar, veVar});
            layerDrawable.setLayerInset(0, 0, 0, 0, 0);
            int iVe3 = pf.ve(this.f19731c, 8.0f);
            layerDrawable.setLayerInset(1, iVe3, iVe3, iVe3, iVe3);
            this.ve.setImageDrawable(layerDrawable);
            this.f19734h.addView(this.ve);
        }
        return linearLayout;
    }

    private void c(int i10, ViewGroup viewGroup) {
        this.f19739t = new TextView(this.f19731c);
        if (i10 == 1) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(14);
            layoutParams.addRule(2, this.f19740u.getId());
            int iVe = pf.ve(this.f19731c, 16.0f);
            layoutParams.leftMargin = iVe;
            layoutParams.rightMargin = iVe;
            layoutParams.topMargin = pf.ve(this.f19731c, 30.0f);
            this.f19739t.setLayoutParams(layoutParams);
            this.f19739t.setGravity(17);
        } else {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = GravityCompat.START;
            this.f19739t.setLayoutParams(layoutParams2);
        }
        this.f19739t.setEllipsize(TextUtils.TruncateAt.END);
        this.f19739t.setTextColor(Color.parseColor("#57161823"));
        if (i10 == 0) {
            this.f19739t.setTextSize(10.0f);
        } else {
            this.f19739t.setTextSize(12.0f);
        }
        viewGroup.addView(this.f19739t);
    }

    private void c(int i10, int i11) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = i10;
        layoutParams.rightMargin = i10;
        if (i11 == 1) {
            layoutParams.topMargin = pf.ve(this.f19731c, 14.0f);
            layoutParams.bottomMargin = pf.ve(this.f19731c, 46.0f);
            layoutParams.addRule(12);
        } else {
            layoutParams.topMargin = pf.ve(this.f19731c, 10.0f);
            layoutParams.bottomMargin = pf.ve(this.f19731c, 24.0f);
            layoutParams.addRule(2, this.f19740u.getId());
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(pf.ve(this.f19731c, 3.0f));
        this.nu.setBackground(gradientDrawable);
        this.nu.setGravity(17);
        this.nu.setText("立即下载");
        int iVe = pf.ve(this.f19731c, 13.0f);
        this.nu.setPadding(0, iVe, 0, iVe);
        this.nu.setTextColor(-1);
        this.nu.setLayoutParams(layoutParams);
        this.nu.setTextSize(15.0f);
        this.f19734h.addView(this.nu);
        if (i11 != 1 || TextUtils.isEmpty(this.yv)) {
            return;
        }
        int iVe2 = pf.ve(this.f19731c, 60.0f);
        com.byazt.si.tt ttVar = new com.byazt.si.tt(this.f19731c);
        this.rh = ttVar;
        ttVar.c("src", this.yv);
        this.rh.c("loop", "true");
        this.rh.c("autoPlay", "true");
        this.rh.c("width", String.valueOf(iVe2));
        this.rh.c("height", String.valueOf(iVe2));
        this.rh.c("scaleType", "fitXY");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iVe2, iVe2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(3, this.nu.getId());
        layoutParams2.rightMargin = pf.ve(this.f19731c, 73.0f);
        layoutParams2.topMargin = -pf.ve(this.f19731c, 85.0f);
        this.rh.c(layoutParams2);
        UgenLottieView ugenLottieViewI = this.rh.i();
        if (ugenLottieViewI == null) {
            return;
        }
        this.rh.tt();
        this.f19734h.addView(ugenLottieViewI);
    }

    private View c(RelativeLayout relativeLayout) {
        View view = new View(this.f19731c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, pf.ve(this.f19731c, 1.0f));
        layoutParams.addRule(3, relativeLayout.getId());
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        view.setId(View.generateViewId());
        this.f19734h.addView(view);
        return view;
    }

    public ve c(String str) {
        this.my = str;
        return this;
    }

    public ve c(JSONArray jSONArray) {
        this.f19738p = jSONArray;
        return this;
    }

    public ve c(float f10) {
        this.md = f10;
        return this;
    }

    public ve c(c cVar) {
        this.eo = cVar;
        return this;
    }
}
