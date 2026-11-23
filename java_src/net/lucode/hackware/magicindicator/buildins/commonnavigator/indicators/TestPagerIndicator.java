package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.haima.hmcp.Constants;
import java.util.List;
import net.lucode.hackware.magicindicator.b;
import tc.c;
import uc.a;

/* JADX INFO: loaded from: classes.dex */
public class TestPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f94836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RectF f94839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f94840f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<a> f94841g;

    public TestPagerIndicator(Context context) {
        super(context);
        this.f94839e = new RectF();
        this.f94840f = new RectF();
        b(context);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f94836b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f94837c = SupportMenu.CATEGORY_MASK;
        this.f94838d = Constants.LEVEL_SDK;
    }

    @Override // tc.c
    public void a(List<a> list) {
        this.f94841g = list;
    }

    public int getInnerRectColor() {
        return this.f94838d;
    }

    public int getOutRectColor() {
        return this.f94837c;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f94836b.setColor(this.f94837c);
        canvas.drawRect(this.f94839e, this.f94836b);
        this.f94836b.setColor(this.f94838d);
        canvas.drawRect(this.f94840f, this.f94836b);
    }

    @Override // tc.c
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // tc.c
    public void onPageScrolled(int i10, float f10, int i11) {
        List<a> list = this.f94841g;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarH = b.h(this.f94841g, i10);
        a aVarH2 = b.h(this.f94841g, i10 + 1);
        RectF rectF = this.f94839e;
        int i12 = aVarH.f97492a;
        rectF.left = i12 + ((aVarH2.f97492a - i12) * f10);
        int i13 = aVarH.f97493b;
        rectF.top = i13 + ((aVarH2.f97493b - i13) * f10);
        int i14 = aVarH.f97494c;
        rectF.right = i14 + ((aVarH2.f97494c - i14) * f10);
        int i15 = aVarH.f97495d;
        rectF.bottom = i15 + ((aVarH2.f97495d - i15) * f10);
        RectF rectF2 = this.f94840f;
        int i16 = aVarH.f97496e;
        rectF2.left = i16 + ((aVarH2.f97496e - i16) * f10);
        int i17 = aVarH.f97497f;
        rectF2.top = i17 + ((aVarH2.f97497f - i17) * f10);
        int i18 = aVarH.f97498g;
        rectF2.right = i18 + ((aVarH2.f97498g - i18) * f10);
        int i19 = aVarH.f97499h;
        rectF2.bottom = i19 + ((aVarH2.f97499h - i19) * f10);
        invalidate();
    }

    @Override // tc.c
    public void onPageSelected(int i10) {
    }

    public void setInnerRectColor(int i10) {
        this.f94838d = i10;
    }

    public void setOutRectColor(int i10) {
        this.f94837c = i10;
    }
}
