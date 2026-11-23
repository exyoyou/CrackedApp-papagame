package com.byazt.sm;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.cd.x;
import com.byazt.xj.ve;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 40, 13})
public class tt extends ve<UGTextView> {
    public int az;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19840c;
    public int cf;

    @Deprecated
    public float di;
    public int ej;
    public float hg;
    public int ij;

    @Deprecated
    public TextUtils.TruncateAt is;
    public float iy;

    @Deprecated
    public float jg;
    public TextUtils.TruncateAt jt;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f19841k;
    public float kz;
    public int mq;
    public float nl;
    public boolean pl;
    public float sd;
    public int vi;
    public float vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f19842w;
    public int yo;

    public tt(Context context) {
        super(context);
        this.yo = -16777216;
        this.vp = 12.0f;
        this.kz = -1.0f;
        this.mq = Integer.MAX_VALUE;
        this.ij = GravityCompat.START;
        this.jt = TextUtils.TruncateAt.END;
        this.f19842w = -1.0f;
        this.nl = 400.0f;
    }

    private void b() {
        float f10 = this.f19842w;
        if (f10 <= 3.0f) {
            ((UGTextView) this.f21881n).setLineSpacing(0.0f, f10);
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            int iRound = Math.round(x.c(this.tt, (f10 - (this.vp * 1.2f)) / 2.0f));
            int paddingTop = ((UGTextView) this.f21881n).getPaddingTop() + iRound;
            int paddingBottom = ((UGTextView) this.f21881n).getPaddingBottom() + iRound;
            T t10 = this.f21881n;
            ((UGTextView) t10).setPadding(((UGTextView) t10).getPaddingLeft(), paddingTop, ((UGTextView) this.f21881n).getPaddingRight(), paddingBottom);
            ((UGTextView) this.f21881n).setLineHeight(Math.round(x.c(this.tt, this.f19842w)));
        }
    }

    private int m(String str) {
        str.hashCode();
        switch (str) {
            case "underline":
                return 8;
            case "strikethrough":
                return 16;
            case "none":
            default:
                return Integer.MAX_VALUE;
        }
    }

    private TextUtils.TruncateAt sl(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                this.is = TextUtils.TruncateAt.MIDDLE;
                break;
            case "end":
                this.is = TextUtils.TruncateAt.END;
                break;
            case "start":
                this.is = TextUtils.TruncateAt.START;
                break;
            default:
                this.is = null;
                break;
        }
        return this.is;
    }

    private TextUtils.TruncateAt u(String str) {
        if (TextUtils.equals(str, "none")) {
            return null;
        }
        return TextUtils.TruncateAt.END;
    }

    private void x() {
        ((UGTextView) this.f21881n).setLineSpacing(0.0f, this.f19842w);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    private int yp(String str) {
        byte b10;
        int iHashCode = str.hashCode();
        if (iHashCode != -1178781136) {
            if (iHashCode != -1039745817) {
                if (iHashCode == 3029637 && str.equals("bold")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
            } else if (str.equals("normal")) {
                b10 = 2;
            } else {
                b10 = -1;
            }
        } else if (str.equals("italic")) {
            b10 = 1;
        } else {
            b10 = -1;
        }
        if (b10 != 0) {
            return b10 != 1 ? 0 : 2;
        }
        return 1;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private int z(String str) {
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    b10 = 0;
                }
                break;
            case -348726240:
                if (str.equals("center_vertical")) {
                    b10 = 1;
                }
                break;
            case 3317767:
                if (str.equals(ScrollClickView.DIR_LEFT)) {
                    b10 = 2;
                }
                break;
            case 108511772:
                if (str.equals(ScrollClickView.DIR_RIGHT)) {
                    b10 = 3;
                }
                break;
            case 1063616078:
                if (str.equals("center_horizontal")) {
                    b10 = 4;
                }
                break;
        }
        switch (b10) {
            case 0:
                return 17;
            case 1:
                return 16;
            case 2:
            default:
                return 3;
            case 3:
                return 5;
            case 4:
                return 1;
        }
    }

    public void a(int i10) {
        this.az = i10;
        if (i10 == Integer.MAX_VALUE) {
            return;
        }
        ((UGTextView) this.f21881n).setPaintFlags(i10);
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public UGTextView c() {
        UGTextView uGTextView = new UGTextView(this.tt);
        uGTextView.c(this);
        return uGTextView;
    }

    public void t(String str) {
        this.f19840c = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.f19840c = "";
        }
        ((UGTextView) this.f21881n).setText(this.f19840c);
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        if (TextUtils.equals("null", this.f19840c)) {
            this.f19840c = "";
        }
        t(this.f19840c);
        ((UGTextView) this.f21881n).setTextSize(1, this.vp);
        ((UGTextView) this.f21881n).setTextColor(this.yo);
        ((UGTextView) this.f21881n).setLines(this.cf);
        ((UGTextView) this.f21881n).setMaxLines(this.mq);
        ((UGTextView) this.f21881n).setGravity(this.ij);
        ((UGTextView) this.f21881n).setIncludeFontPadding(false);
        ((UGTextView) this.f21881n).setMinTextSize(x.c(this.tt, this.kz));
        a(this.az);
        if (h()) {
            c(this.jt);
        } else {
            c(this.is);
        }
        if (this.f19842w > 0.0f) {
            if (h()) {
                b();
            } else {
                x();
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            ((UGTextView) this.f21881n).setBreakStrategy(0);
        }
        if (!h()) {
            ((UGTextView) this.f21881n).setShadowLayer(this.f19841k, this.di, this.jg, this.ej);
        } else if (this.pl) {
            if (this.f19841k <= 0.0f) {
                this.f19841k = 1.0E-5f;
            }
            ((UGTextView) this.f21881n).setShadowLayer(this.f19841k, this.hg, this.sd, this.ej);
        }
        int i11 = this.vi;
        if (i11 == 1) {
            ((UGTextView) this.f21881n).setTypeface(Typeface.DEFAULT, i11);
        } else if (i10 >= 28) {
            ((UGTextView) this.f21881n).setTypeface(Typeface.create(Typeface.DEFAULT, (int) this.nl, i11 == 2));
        } else if (this.nl >= 500.0f) {
            ((UGTextView) this.f21881n).setTypeface(Typeface.DEFAULT, 1);
        }
        if (x.c(this.tt, this.vp) > 0.0f) {
            ((UGTextView) this.f21881n).setLetterSpacing(this.iy / x.c(this.tt, this.vp));
        }
    }

    public void c(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((UGTextView) this.f21881n).setEllipsize(truncateAt);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.c(str, str2);
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case -1621067310:
                if (str.equals("shadowRadius")) {
                    b10 = 0;
                }
                break;
            case -1589741021:
                if (str.equals("shadowColor")) {
                    b10 = 1;
                }
                break;
            case -1230714651:
                if (str.equals("shadowOffsetX")) {
                    b10 = 2;
                }
                break;
            case -1230714650:
                if (str.equals("shadowOffsetY")) {
                    b10 = 3;
                }
                break;
            case -1065511464:
                if (str.equals("textAlign")) {
                    b10 = 4;
                }
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    b10 = 5;
                }
                break;
            case -1048634236:
                if (str.equals("textStyle")) {
                    b10 = 6;
                }
                break;
            case -1021145689:
                if (str.equals("shadowBlur")) {
                    b10 = 7;
                }
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    b10 = 8;
                }
                break;
            case -879295043:
                if (str.equals("textDecoration")) {
                    b10 = 9;
                }
                break;
            case -756368940:
                if (str.equals("shadowDx")) {
                    b10 = 10;
                }
                break;
            case -756368939:
                if (str.equals("shadowDy")) {
                    b10 = 11;
                }
                break;
            case -734428249:
                if (str.equals("fontWeight")) {
                    b10 = 12;
                }
                break;
            case -515807685:
                if (str.equals("lineHeight")) {
                    b10 = 13;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    b10 = 14;
                }
                break;
            case 102977279:
                if (str.equals("lines")) {
                    b10 = 15;
                }
                break;
            case 188702929:
                if (str.equals("ellipsis")) {
                    b10 = 16;
                }
                break;
            case 351195968:
                if (str.equals("minTextSize")) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 1554823821:
                if (str.equals("ellipsize")) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 2111078717:
                if (str.equals("letterSpacing")) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
        }
        switch (b10) {
            case 0:
            case 7:
                this.f19841k = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 1:
                this.ej = com.byazt.cd.c.c(str2);
                this.pl = true;
                break;
            case 2:
                this.hg = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 3:
                this.sd = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
            case 4:
                this.ij = z(str2);
                break;
            case 5:
                this.yo = com.byazt.cd.c.c(str2);
                break;
            case 6:
                this.vi = yp(str2);
                break;
            case 8:
                this.vp = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 9:
                this.az = m(str2);
                break;
            case 10:
                this.di = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 11:
                this.jg = com.byazt.cd.ve.c(str2, 0.0f);
                break;
            case 12:
                float fC = com.byazt.cd.ve.c(str2, -1.0f);
                this.nl = fC;
                if (fC < 1.0f || fC > 1000.0f) {
                    this.nl = 400.0f;
                }
                break;
            case 13:
                this.f19842w = com.byazt.cd.ve.c(str2, 1.0f);
                break;
            case 14:
                this.f19840c = str2;
                break;
            case 15:
                this.cf = com.byazt.cd.ve.c(str2, 0);
                break;
            case 16:
                this.jt = u(str2);
                break;
            case 17:
                this.kz = com.byazt.cd.ve.c(str2, -1.0f);
                break;
            case 18:
                int iC = com.byazt.cd.ve.c(str2, Integer.MAX_VALUE);
                this.mq = iC > 0 ? iC : Integer.MAX_VALUE;
                break;
            case 19:
                this.is = sl(str2);
                break;
            case 20:
                this.iy = x.c(this.tt, com.byazt.cd.ve.c(str2, 0.0f));
                break;
        }
    }
}
