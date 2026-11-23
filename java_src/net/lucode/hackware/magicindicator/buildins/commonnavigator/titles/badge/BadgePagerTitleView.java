package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.badge;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import tc.b;
import tc.d;

/* JADX INFO: loaded from: classes.dex */
public class BadgePagerTitleView extends FrameLayout implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f94874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f94875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f94876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f94877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f94878f;

    public BadgePagerTitleView(Context context) {
        super(context);
        this.f94876d = true;
    }

    @Override // tc.d
    public void a(int i10, int i11, float f10, boolean z10) {
        d dVar = this.f94874b;
        if (dVar != null) {
            dVar.a(i10, i11, f10, z10);
        }
    }

    @Override // tc.d
    public void b(int i10, int i11) {
        d dVar = this.f94874b;
        if (dVar != null) {
            dVar.b(i10, i11);
        }
    }

    @Override // tc.d
    public void c(int i10, int i11) {
        d dVar = this.f94874b;
        if (dVar != null) {
            dVar.c(i10, i11);
        }
        if (this.f94876d) {
            setBadgeView(null);
        }
    }

    @Override // tc.d
    public void d(int i10, int i11, float f10, boolean z10) {
        d dVar = this.f94874b;
        if (dVar != null) {
            dVar.d(i10, i11, f10, z10);
        }
    }

    public boolean e() {
        return this.f94876d;
    }

    public View getBadgeView() {
        return this.f94875c;
    }

    @Override // tc.b
    public int getContentBottom() {
        d dVar = this.f94874b;
        return dVar instanceof b ? ((b) dVar).getContentBottom() : getBottom();
    }

    @Override // tc.b
    public int getContentLeft() {
        return this.f94874b instanceof b ? getLeft() + ((b) this.f94874b).getContentLeft() : getLeft();
    }

    @Override // tc.b
    public int getContentRight() {
        return this.f94874b instanceof b ? getLeft() + ((b) this.f94874b).getContentRight() : getRight();
    }

    @Override // tc.b
    public int getContentTop() {
        d dVar = this.f94874b;
        return dVar instanceof b ? ((b) dVar).getContentTop() : getTop();
    }

    public d getInnerPagerTitleView() {
        return this.f94874b;
    }

    public a getXBadgeRule() {
        return this.f94877e;
    }

    public a getYBadgeRule() {
        return this.f94878f;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        Object obj = this.f94874b;
        if (!(obj instanceof View) || this.f94875c == null) {
            return;
        }
        int[] iArr = new int[14];
        View view = (View) obj;
        iArr[0] = view.getLeft();
        iArr[1] = view.getTop();
        iArr[2] = view.getRight();
        iArr[3] = view.getBottom();
        d dVar = this.f94874b;
        if (dVar instanceof b) {
            b bVar = (b) dVar;
            iArr[4] = bVar.getContentLeft();
            iArr[5] = bVar.getContentTop();
            iArr[6] = bVar.getContentRight();
            iArr[7] = bVar.getContentBottom();
        } else {
            for (int i14 = 4; i14 < 8; i14++) {
                iArr[i14] = iArr[i14 - 4];
            }
        }
        iArr[8] = view.getWidth() / 2;
        iArr[9] = view.getHeight() / 2;
        iArr[10] = iArr[4] / 2;
        iArr[11] = iArr[5] / 2;
        int i15 = iArr[6];
        iArr[12] = i15 + ((iArr[2] - i15) / 2);
        int i16 = iArr[7];
        iArr[13] = i16 + ((iArr[3] - i16) / 2);
        a aVar = this.f94877e;
        if (aVar != null) {
            int iB = iArr[aVar.a().ordinal()] + this.f94877e.b();
            View view2 = this.f94875c;
            view2.offsetLeftAndRight(iB - view2.getLeft());
        }
        a aVar2 = this.f94878f;
        if (aVar2 != null) {
            int iB2 = iArr[aVar2.a().ordinal()] + this.f94878f.b();
            View view3 = this.f94875c;
            view3.offsetTopAndBottom(iB2 - view3.getTop());
        }
    }

    public void setAutoCancelBadge(boolean z10) {
        this.f94876d = z10;
    }

    public void setBadgeView(View view) {
        if (this.f94875c == view) {
            return;
        }
        this.f94875c = view;
        removeAllViews();
        if (this.f94874b instanceof View) {
            addView((View) this.f94874b, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f94875c != null) {
            addView(this.f94875c, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setInnerPagerTitleView(d dVar) {
        if (this.f94874b == dVar) {
            return;
        }
        this.f94874b = dVar;
        removeAllViews();
        if (this.f94874b instanceof View) {
            addView((View) this.f94874b, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.f94875c != null) {
            addView(this.f94875c, new FrameLayout.LayoutParams(-2, -2));
        }
    }

    public void setXBadgeRule(a aVar) {
        BadgeAnchor badgeAnchorA;
        if (aVar != null && (badgeAnchorA = aVar.a()) != BadgeAnchor.LEFT && badgeAnchorA != BadgeAnchor.RIGHT && badgeAnchorA != BadgeAnchor.CONTENT_LEFT && badgeAnchorA != BadgeAnchor.CONTENT_RIGHT && badgeAnchorA != BadgeAnchor.CENTER_X && badgeAnchorA != BadgeAnchor.LEFT_EDGE_CENTER_X && badgeAnchorA != BadgeAnchor.RIGHT_EDGE_CENTER_X) {
            throw new IllegalArgumentException("x badge rule is wrong.");
        }
        this.f94877e = aVar;
    }

    public void setYBadgeRule(a aVar) {
        BadgeAnchor badgeAnchorA;
        if (aVar != null && (badgeAnchorA = aVar.a()) != BadgeAnchor.TOP && badgeAnchorA != BadgeAnchor.BOTTOM && badgeAnchorA != BadgeAnchor.CONTENT_TOP && badgeAnchorA != BadgeAnchor.CONTENT_BOTTOM && badgeAnchorA != BadgeAnchor.CENTER_Y && badgeAnchorA != BadgeAnchor.TOP_EDGE_CENTER_Y && badgeAnchorA != BadgeAnchor.BOTTOM_EDGE_CENTER_Y) {
            throw new IllegalArgumentException("y badge rule is wrong.");
        }
        this.f94878f = aVar;
    }
}
