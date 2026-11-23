package com.byazt.zk;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.LineBackgroundSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.ga.gt;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 34})
public class a extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<String> f22805da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout.LayoutParams f22806i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f22807m;
    public com.byazt.ga.i.tt my;
    public int nu;
    public Camera rh;
    public final List<TextView> sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f22808t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public c f22809u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public LinearLayout f22810x;
    public SpannableStringBuilder yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public SpannableStringBuilder f22811z;

    @com.byazt.zqa.c(c = {0, 1, 909, 464})
    public static class c implements LineBackgroundSpan {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Paint f22812c = new Paint();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f22813n;
        public int tt;
        public int uj;
        public float ve;

        @Override // android.text.style.LineBackgroundSpan
        public void drawBackground(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, int i17) {
            if (this.ve > 0.0f) {
                this.f22812c.setColor(this.tt);
                this.f22812c.setStrokeWidth(this.ve);
                float f10 = i13 + this.ve;
                canvas.drawLine(i10, f10, i11, f10, this.f22812c);
            }
            if (this.f22813n > 0.0f) {
                this.f22812c.setColor(this.uj);
                this.f22812c.setStrokeWidth(this.f22813n);
                float f11 = (i14 + i12) / 2.0f;
                canvas.drawLine(i10, f11, i11, f11, this.f22812c);
            }
        }
    }

    public a(com.byazt.ga.x xVar, x xVar2, Context context) {
        List<com.byazt.ga.i.ve> listVe;
        super(xVar, xVar2);
        this.f22806i = new LinearLayout.LayoutParams(-2, -2);
        this.f22805da = new ArrayList();
        this.sl = new ArrayList();
        com.byazt.ga.i iVar = ((sp) this).sp;
        if (iVar == null || (listVe = iVar.ve()) == null || listVe.size() <= 0) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.f22810x = linearLayout;
        linearLayout.setOrientation(0);
        tt(listVe.get(0).f14390da);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(80);
        this.f22810x.addView(linearLayout2);
        List<String> listZ = z();
        int i10 = 0;
        while (i10 < listVe.size()) {
            com.byazt.ga.i.ve veVar = listVe.get(i10);
            TextView textView = new TextView(context);
            c(textView, veVar, (listZ == null || i10 >= listZ.size()) ? "" : listZ.get(i10), i10, listVe.size() - 1, listVe.get(0));
            int i11 = veVar.f14391i;
            if (i11 != 0) {
                this.f22806i.bottomMargin = (int) (i11 * com.byazt.kk.da.c());
                linearLayout2.addView(textView, this.f22806i);
            } else {
                linearLayout2.addView(textView);
            }
            i10++;
        }
        float fC = com.byazt.kk.da.c();
        this.f22807m = (int) (((sp) this).sp.c() * fC);
        int iTt = (int) (((sp) this).sp.tt() * fC);
        this.nu = iTt;
        c(this.f22810x, this.f22807m, iTt);
        com.byazt.ga.i.tt ttVarSl = ((sp) this).sp.sl();
        this.my = ttVarSl;
        if (ttVarSl != null) {
            this.rh = new Camera();
        }
    }

    private void c(TextView textView, com.byazt.ga.i.ve veVar, String str, int i10, int i11, com.byazt.ga.i.ve veVar2) {
        com.byazt.ga.x xVar;
        gt gtVarZm;
        if (TextUtils.isEmpty(str)) {
            str = "";
            textView.setText("");
        } else {
            textView.setText(str);
        }
        if (!TextUtils.isEmpty(veVar.ve)) {
            textView.setTextColor(Color.parseColor(veVar.ve));
        } else if (!TextUtils.isEmpty(veVar.uj)) {
            textView.setTextColor(Color.parseColor(veVar.uj));
        }
        if (!TextUtils.isEmpty(veVar.f14392n)) {
            textView.setBackgroundColor(Color.parseColor(veVar.f14392n));
        }
        if (veVar.f14395x == 1) {
            textView.setTypeface(null, 1);
        } else {
            textView.setTypeface(null, 0);
        }
        textView.setGravity(17);
        textView.setTextSize(1, veVar.f14388a);
        if (!TextUtils.isEmpty(veVar.sp) && (xVar = this.tt) != null && (gtVarZm = xVar.zm()) != null) {
            try {
                int i12 = Integer.parseInt(gtVarZm.c(veVar.sp));
                if (i12 > 0) {
                    textView.setTextSize(1, i12);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        com.byazt.ga.i.ve.c cVar = veVar.sl;
        if (cVar != null && cVar.f14396c > 0 && !TextUtils.isEmpty(cVar.tt)) {
            if (this.yp == null) {
                this.yp = new SpannableStringBuilder(str);
            }
            if (this.f22809u == null) {
                this.f22809u = new c();
            }
            this.f22809u.tt = Color.parseColor(veVar.sl.tt);
            this.f22809u.ve = veVar.sl.f14396c * com.byazt.kk.da.c();
            this.yp.clear();
            this.yp.clearSpans();
            this.yp.append((CharSequence) str);
            this.yp.setSpan(this.f22809u, 0, str.length(), 33);
            textView.setText(this.yp);
        }
        com.byazt.ga.i.ve.c cVar2 = veVar.f14393t;
        if (cVar2 != null && cVar2.f14396c > 0 && !TextUtils.isEmpty(cVar2.tt)) {
            if (this.f22811z == null) {
                this.f22811z = new SpannableStringBuilder(str);
            }
            if (this.f22809u == null) {
                this.f22809u = new c();
            }
            this.f22809u.uj = Color.parseColor(veVar.f14393t.tt);
            this.f22809u.f22813n = veVar.f14393t.f14396c * com.byazt.kk.da.c();
            this.f22811z.clear();
            this.f22811z.clearSpans();
            this.f22811z.append((CharSequence) str);
            this.f22811z.setSpan(this.f22809u, 0, str.length(), 33);
            textView.setText(this.f22811z);
        }
        int i13 = veVar2.yp;
        if (i13 > 0) {
            textView.setMaxLines(i13);
            if (veVar2.f14394u == 2 && i10 == 0) {
                textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            if (veVar2.f14394u == 1 && i10 == 0) {
                textView.setEllipsize(TextUtils.TruncateAt.START);
            }
            if (veVar2.f14394u == 0 && i10 == i11) {
                textView.setEllipsize(TextUtils.TruncateAt.END);
            }
        }
    }

    private void tt(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f22810x.setGravity(17);
            return;
        }
        str.hashCode();
        if (str.equals(ScrollClickView.DIR_LEFT)) {
            this.f22810x.setGravity(19);
        } else if (str.equals(ScrollClickView.DIR_RIGHT)) {
            this.f22810x.setGravity(21);
        } else {
            this.f22810x.setGravity(17);
        }
    }

    private void ve(float f10) {
        List<com.byazt.ga.i.ve> listVe;
        com.byazt.ga.i iVar = ((sp) this).sp;
        if (iVar == null || (listVe = iVar.ve()) == null || listVe.size() <= 0) {
            return;
        }
        this.f22810x.setOrientation(0);
        tt(listVe.get(0).f14390da);
        if (this.f22810x.getChildCount() <= 0) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) this.f22810x.getChildAt(0);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(80);
        this.f22810x.removeAllViews();
        if (linearLayout.getChildCount() != listVe.size()) {
            return;
        }
        List<String> listZ = z();
        this.sl.clear();
        int i10 = 0;
        while (i10 < listVe.size()) {
            com.byazt.ga.i.ve veVar = listVe.get(i10);
            TextView textView = (TextView) linearLayout.getChildAt(i10);
            this.sl.add(textView);
            c(textView, veVar, (listZ == null || i10 >= listZ.size()) ? "" : listZ.get(i10), i10, listVe.size() - 1, listVe.get(0));
            i10++;
        }
        linearLayout.removeAllViews();
        for (int i11 = 0; i11 < listVe.size(); i11++) {
            com.byazt.ga.i.ve veVar2 = listVe.get(i11);
            TextView textView2 = this.sl.get(i11);
            textView2.setAlpha(f10);
            linearLayout.setAlpha(f10);
            int i12 = veVar2.f14391i;
            if (i12 != 0) {
                this.f22806i.bottomMargin = (int) (i12 * com.byazt.kk.da.c());
                linearLayout.addView(textView2, this.f22806i);
            } else {
                linearLayout.addView(textView2);
            }
        }
        this.f22810x.setAlpha(f10);
        this.f22810x.addView(linearLayout);
        c(this.f22810x, this.f22807m, this.nu);
    }

    private List<String> z() {
        com.byazt.ga.x xVar;
        gt gtVarZm;
        List<com.byazt.ga.i.ve> listVe;
        if (((sp) this).sp == null || (xVar = this.tt) == null || (gtVarZm = xVar.zm()) == null) {
            return null;
        }
        String strUj = ((sp) this).sp.uj();
        if ((!TextUtils.isEmpty(strUj) || !TextUtils.isEmpty(this.f22808t)) && (listVe = ((sp) this).sp.ve()) != null) {
            String strC = this.f22808t;
            if (TextUtils.isEmpty(strC)) {
                strC = gtVarZm.c(strUj);
            }
            if (!TextUtils.isEmpty(strC)) {
                int length = strC.length();
                this.f22805da.clear();
                for (int i10 = 0; i10 < listVe.size(); i10++) {
                    com.byazt.ga.i.ve veVar = listVe.get(i10);
                    int iMax = veVar.f14389c;
                    int iMax2 = veVar.tt;
                    if (iMax < 0) {
                        iMax = Math.max(iMax + length, 0);
                    }
                    if (iMax2 < 0) {
                        iMax2 = Math.max(iMax2 + length, 0);
                    }
                    if (iMax + iMax2 > length) {
                        this.f22805da.add("");
                    } else {
                        if (listVe.size() == 1 && iMax == 0 && iMax2 == 0) {
                            iMax2 = length;
                        }
                        this.f22805da.add(strC.substring(iMax, iMax2 + iMax));
                    }
                }
                return this.f22805da;
            }
        }
        return null;
    }

    @Override // com.byazt.zk.sp, com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        View childAt;
        if (this.f22810x != null) {
            canvas.save();
            canvas.concat(matrix);
            c(i10);
            ve(x());
            if (this.rh != null) {
                com.byazt.ga.i.tt ttVar = this.my;
                if (ttVar.f14387c != 0 || ttVar.tt != 0 || ttVar.ve != 0) {
                    int width = this.f22807m >> 1;
                    int height = this.nu >> 1;
                    if (this.f22810x.getChildCount() > 0 && (childAt = this.f22810x.getChildAt(0)) != null) {
                        int left = childAt.getLeft() - this.f22810x.getLeft();
                        int top = childAt.getTop() - this.f22810x.getTop();
                        width = left + (childAt.getWidth() >> 1);
                        height = top + (childAt.getHeight() >> 1);
                    }
                    canvas.translate(width, height);
                    com.byazt.ga.i.tt ttVar2 = this.my;
                    if (ttVar2.f14387c != 0 || ttVar2.tt != 0) {
                        this.rh.save();
                        int i11 = this.my.f14387c;
                        if (i11 != 0) {
                            this.rh.rotateX(i11);
                        }
                        int i12 = this.my.tt;
                        if (i12 != 0) {
                            this.rh.rotateY(i12);
                        }
                        this.rh.applyToCanvas(canvas);
                        this.rh.restore();
                    }
                    int i13 = this.my.ve;
                    if (i13 != 0) {
                        canvas.rotate(i13);
                    }
                    canvas.translate(-width, -height);
                }
            }
            this.f22810x.draw(canvas);
            canvas.restore();
            return;
        }
        super.tt(canvas, matrix, i10);
    }

    private static void c(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void c(String str) {
        this.f22808t = str;
    }
}
