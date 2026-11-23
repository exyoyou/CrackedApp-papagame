package com.byazt.cu;

import android.content.Context;
import android.text.TextUtils;
import android.widget.EditText;
import com.byazt.xj.ve;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 121, 20})
public class c extends ve<EditText> {
    public String az;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12618c;
    public String cf;
    public int ij;
    public String is;
    public String kz;
    public int mq;
    public int vi;
    public float vp;
    public int yo;

    public c(Context context) {
        super(context);
        this.f12618c = 1;
        this.vi = Integer.MAX_VALUE;
        this.ij = 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    private int sl(String str) {
        byte b10;
        switch (str) {
            case "number":
                b10 = 2;
                break;
            case "text":
                b10 = 4;
                break;
            case "email":
                b10 = 3;
                break;
            case "phone":
                b10 = 1;
                break;
            case "password":
                b10 = 0;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0) {
            return 128;
        }
        if (b10 == 1) {
            return 3;
        }
        if (b10 != 2) {
            return b10 != 3 ? 1 : 32;
        }
        return 2;
    }

    private int t(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return 17;
            case "left":
                return 3;
            case "right":
                return 5;
            default:
                return 2;
        }
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public EditText c() {
        UGEditText uGEditText = new UGEditText(this.tt);
        uGEditText.c(this);
        return uGEditText;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        ((EditText) this.f21881n).setInputType(this.f12618c);
        ((EditText) this.f21881n).setText(this.az);
        ((EditText) this.f21881n).setTextSize(1, this.vp);
        ((EditText) this.f21881n).setTextColor(this.yo);
        ((EditText) this.f21881n).setLines(this.mq);
        ((EditText) this.f21881n).setMaxLines(this.vi);
        ((EditText) this.f21881n).setGravity(this.ij);
        ((EditText) this.f21881n).setHint(this.is);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "textAlign":
                this.ij = t(str2);
                break;
            case "textColor":
                this.yo = com.byazt.cd.c.c(str2);
                break;
            case "textStyle":
                this.kz = str2;
                break;
            case "textSize":
                this.vp = Float.parseFloat(str2);
                break;
            case "hint":
                this.is = str2;
                break;
            case "text":
                this.az = str2;
                break;
            case "lines":
                this.mq = Integer.parseInt(str2);
                break;
            case "maxLines":
                this.vi = Integer.parseInt(str2);
                break;
            case "ellipsize":
                this.cf = str2;
                break;
            case "inputType":
                this.f12618c = sl(str2);
                break;
        }
    }
}
