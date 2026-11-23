package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.widget.TextView;
import tc.b;

/* JADX INFO: loaded from: classes.dex */
public class SimplePagerTitleView extends TextView implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f94872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f94873c;

    public SimplePagerTitleView(Context context) {
        super(context, null);
        e(context);
    }

    private void e(Context context) {
        setGravity(17);
        int iA = sc.b.a(context, 10.0d);
        setPadding(iA, 0, iA, 0);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.END);
    }

    public void a(int i10, int i11, float f10, boolean z10) {
    }

    public void b(int i10, int i11) {
        setTextColor(this.f94873c);
    }

    public void c(int i10, int i11) {
        setTextColor(this.f94872b);
    }

    public void d(int i10, int i11, float f10, boolean z10) {
    }

    @Override // tc.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override // tc.b
    public int getContentLeft() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return (getLeft() + (getWidth() / 2)) - (rect.width() / 2);
    }

    @Override // tc.b
    public int getContentRight() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return getLeft() + (getWidth() / 2) + (rect.width() / 2);
    }

    @Override // tc.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public int getNormalColor() {
        return this.f94873c;
    }

    public int getSelectedColor() {
        return this.f94872b;
    }

    public void setNormalColor(int i10) {
        this.f94873c = i10;
    }

    public void setSelectedColor(int i10) {
        this.f94872b = i10;
    }
}
