package com.byazt.tm;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.aq.x;
import com.byazt.du.sl;
import com.byazt.nr.m;
import com.byazt.oq.AnimationText;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1174})
public class DynamicTextView extends DynamicBaseWidgetImp {
    public DynamicTextView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.f20275x += 6;
        if (this.f20273t.pf()) {
            AnimationText animationText = new AnimationText(context, this.f20273t.sp(), this.f20273t.n(), 1, this.f20273t.x());
            this.f20276z = animationText;
            animationText.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.f20276z = textView;
            textView.setIncludeFontPadding(false);
        }
        this.f20276z.setTag(Integer.valueOf(getClickArea()));
        addView(this.f20276z, getWidgetLayoutParams());
    }

    private void da() {
        int iC;
        if (TextUtils.equals(this.f20274u.da().getType(), "source") || TextUtils.equals(this.f20274u.da().getType(), "title") || TextUtils.equals(this.f20274u.da().getType(), "text_star")) {
            int[] iArrTt = sl.tt(this.f20273t.a(), this.f20273t.n(), true);
            int iC2 = (int) com.byazt.or.x.c(getContext(), this.f20273t.tt());
            int iC3 = (int) com.byazt.or.x.c(getContext(), this.f20273t.ve());
            int iC4 = (int) com.byazt.or.x.c(getContext(), this.f20273t.uj());
            int iC5 = (int) com.byazt.or.x.c(getContext(), this.f20273t.c());
            int iMin = Math.min(iC2, iC5);
            if (TextUtils.equals(this.f20274u.da().getType(), "source") && (iC = ((this.f20275x - ((int) com.byazt.or.x.c(getContext(), this.f20273t.n()))) - iC2) - iC5) > 1 && iC <= iMin * 2) {
                int i10 = iC / 2;
                this.f20276z.setPadding(iC3, iC2 - i10, iC4, iC5 - (iC - i10));
                return;
            }
            int i11 = (((iArrTt[1] + iC2) + iC5) - this.f20275x) - 2;
            if (i11 <= 1) {
                return;
            }
            if (i11 <= iMin * 2) {
                int i12 = i11 / 2;
                this.f20276z.setPadding(iC3, iC2 - i12, iC4, iC5 - (i11 - i12));
            } else if (i11 > iC2 + iC5) {
                final int i13 = (i11 - iC2) - iC5;
                this.f20276z.setPadding(iC3, 0, iC4, 0);
                if (i13 <= ((int) com.byazt.or.x.c(getContext(), 1.0f)) + 1) {
                    ((TextView) this.f20276z).setTextSize(this.f20273t.n() - 1.0f);
                } else if (i13 <= (((int) com.byazt.or.x.c(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.f20276z).setTextSize(this.f20273t.n() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.byazt.tm.DynamicTextView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = DynamicTextView.this.f20276z.getLayoutParams();
                                DynamicTextView dynamicTextView = DynamicTextView.this;
                                layoutParams.height = dynamicTextView.f20275x + i13;
                                dynamicTextView.f20276z.setLayoutParams(layoutParams);
                                DynamicTextView.this.f20276z.setTranslationY(-i13);
                                ((ViewGroup) DynamicTextView.this.f20276z.getParent()).setClipChildren(false);
                                ((ViewGroup) DynamicTextView.this.f20276z.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (iC2 > iC5) {
                this.f20276z.setPadding(iC3, iC2 - (i11 - iMin), iC4, iC5 - iMin);
            } else {
                this.f20276z.setPadding(iC3, iC2 - iMin, iC4, iC5 - (i11 - iMin));
            }
        }
        if (TextUtils.equals(this.f20274u.da().getType(), "fillButton")) {
            this.f20276z.setTextAlignment(2);
            ((TextView) this.f20276z).setGravity(17);
        }
    }

    private boolean i() {
        DynamicRootView dynamicRootView = this.yp;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.yp.getRenderRequest().t() == 4) ? false : true;
    }

    private void sl() {
        if (this.f20276z instanceof AnimationText) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.optString(i10));
                }
            } catch (JSONException e10) {
                m.c(e10);
                arrayList.add(text);
            }
            ((AnimationText) this.f20276z).setMaxLines(1);
            ((AnimationText) this.f20276z).setTextColor(this.f20273t.sp());
            ((AnimationText) this.f20276z).setTextSize(this.f20273t.n());
            ((AnimationText) this.f20276z).setAnimationText(arrayList);
            ((AnimationText) this.f20276z).setAnimationType(this.f20273t.sv());
            ((AnimationText) this.f20276z).setAnimationDuration(this.f20273t.bx() * 1000);
            ((AnimationText) this.f20276z).c();
        }
    }

    public void c(TextView textView, int i10) {
        textView.setText("(" + String.format("%1$s个评分", Integer.valueOf(i10)) + ")");
        if (i10 == -1) {
            textView.setVisibility(8);
        }
    }

    public String getText() {
        String strA = this.f20273t.a();
        if (TextUtils.isEmpty(strA)) {
            if (!com.byazt.sr.uj.c() && TextUtils.equals(this.f20274u.da().getType(), "text_star")) {
                strA = "5";
            }
            if (!com.byazt.sr.uj.c() && TextUtils.equals(this.f20274u.da().getType(), "score-count")) {
                strA = "6870";
            }
        }
        return (TextUtils.equals(this.f20274u.da().getType(), "title") || TextUtils.equals(this.f20274u.da().getType(), MediaFormat.KEY_SUBTITLE)) ? strA.replace("\n", "") : strA;
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        int i10;
        double d10;
        super.x();
        if (TextUtils.isEmpty(getText())) {
            this.f20276z.setVisibility(4);
            return true;
        }
        if (this.f20273t.pf()) {
            sl();
            return true;
        }
        ((TextView) this.f20276z).setText(this.f20273t.a());
        ((TextView) this.f20276z).setTextDirection(5);
        this.f20276z.setTextAlignment(this.f20273t.x());
        ((TextView) this.f20276z).setTextColor(this.f20273t.sp());
        ((TextView) this.f20276z).setTextSize(this.f20273t.n());
        if (this.f20273t.qy()) {
            int iGu = this.f20273t.gu();
            if (iGu > 0) {
                ((TextView) this.f20276z).setLines(iGu);
                ((TextView) this.f20276z).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.f20276z).setMaxLines(1);
            ((TextView) this.f20276z).setGravity(17);
            ((TextView) this.f20276z).setEllipsize(TextUtils.TruncateAt.END);
        }
        x xVar = this.f20274u;
        if (xVar != null && xVar.da() != null) {
            if (com.byazt.sr.uj.c() && i() && (TextUtils.equals(this.f20274u.da().getType(), "text_star") || TextUtils.equals(this.f20274u.da().getType(), "score-count") || TextUtils.equals(this.f20274u.da().getType(), "score-count-type-1") || TextUtils.equals(this.f20274u.da().getType(), "score-count-type-2"))) {
                setVisibility(8);
                return true;
            }
            if (TextUtils.equals(this.f20274u.da().getType(), "score-count") || TextUtils.equals(this.f20274u.da().getType(), "score-count-type-2")) {
                try {
                    try {
                        i10 = Integer.parseInt(getText());
                    } catch (NumberFormatException unused) {
                        i10 = -1;
                    }
                    if (i10 < 0) {
                        if (com.byazt.sr.uj.c()) {
                            setVisibility(8);
                            return true;
                        }
                        this.f20276z.setVisibility(0);
                    }
                    if (TextUtils.equals(this.f20274u.da().getType(), "score-count-type-2")) {
                        ((TextView) this.f20276z).setText(String.format(new DecimalFormat("(###,###,###)").format(i10), Integer.valueOf(i10)));
                        ((TextView) this.f20276z).setGravity(17);
                        return true;
                    }
                    c((TextView) this.f20276z, i10);
                } catch (Exception unused2) {
                }
            } else if (TextUtils.equals(this.f20274u.da().getType(), "text_star")) {
                try {
                    d10 = Double.parseDouble(getText());
                } catch (Exception e10) {
                    m.uj("DynamicStarView applyNativeStyle", e10.toString());
                    d10 = -1.0d;
                }
                if (d10 < 0.0d || d10 > 5.0d) {
                    if (com.byazt.sr.uj.c()) {
                        setVisibility(8);
                        return true;
                    }
                    this.f20276z.setVisibility(0);
                }
                ((TextView) this.f20276z).setIncludeFontPadding(false);
                ((TextView) this.f20276z).setText(String.format("%.1f", Double.valueOf(d10)));
            } else if (TextUtils.equals("privacy-detail", this.f20274u.da().getType())) {
                ((TextView) this.f20276z).setText("功能 | 权限 | 隐私");
            } else if (TextUtils.equals(this.f20274u.da().getType(), "development-name")) {
                ((TextView) this.f20276z).setText("开发者：" + getText());
            } else if (TextUtils.equals(this.f20274u.da().getType(), "app-version")) {
                ((TextView) this.f20276z).setText("版本号：V" + getText());
            } else {
                ((TextView) this.f20276z).setText(getText());
            }
            this.f20276z.setTextAlignment(this.f20273t.x());
            ((TextView) this.f20276z).setGravity(this.f20273t.i());
            if (com.byazt.sr.uj.c()) {
                da();
            }
        }
        return true;
    }
}
