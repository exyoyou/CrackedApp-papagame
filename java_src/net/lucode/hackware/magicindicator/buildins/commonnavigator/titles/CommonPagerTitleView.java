package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class CommonPagerTitleView extends FrameLayout implements tc.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f94870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f94871c;

    public interface a {
        int getContentBottom();

        int getContentLeft();

        int getContentRight();

        int getContentTop();
    }

    public interface b {
        void a(int i10, int i11, float f10, boolean z10);

        void b(int i10, int i11);

        void c(int i10, int i11);

        void d(int i10, int i11, float f10, boolean z10);
    }

    public CommonPagerTitleView(Context context) {
        super(context);
    }

    @Override // tc.d
    public void a(int i10, int i11, float f10, boolean z10) {
        b bVar = this.f94870b;
        if (bVar != null) {
            bVar.a(i10, i11, f10, z10);
        }
    }

    @Override // tc.d
    public void b(int i10, int i11) {
        b bVar = this.f94870b;
        if (bVar != null) {
            bVar.b(i10, i11);
        }
    }

    @Override // tc.d
    public void c(int i10, int i11) {
        b bVar = this.f94870b;
        if (bVar != null) {
            bVar.c(i10, i11);
        }
    }

    @Override // tc.d
    public void d(int i10, int i11, float f10, boolean z10) {
        b bVar = this.f94870b;
        if (bVar != null) {
            bVar.d(i10, i11, f10, z10);
        }
    }

    @Override // tc.b
    public int getContentBottom() {
        a aVar = this.f94871c;
        return aVar != null ? aVar.getContentBottom() : getBottom();
    }

    @Override // tc.b
    public int getContentLeft() {
        a aVar = this.f94871c;
        return aVar != null ? aVar.getContentLeft() : getLeft();
    }

    public a getContentPositionDataProvider() {
        return this.f94871c;
    }

    @Override // tc.b
    public int getContentRight() {
        a aVar = this.f94871c;
        return aVar != null ? aVar.getContentRight() : getRight();
    }

    @Override // tc.b
    public int getContentTop() {
        a aVar = this.f94871c;
        return aVar != null ? aVar.getContentTop() : getTop();
    }

    public b getOnPagerTitleChangeListener() {
        return this.f94870b;
    }

    public void setContentPositionDataProvider(a aVar) {
        this.f94871c = aVar;
    }

    public void setContentView(View view) {
        setContentView(view, null);
    }

    public void setOnPagerTitleChangeListener(b bVar) {
        this.f94870b = bVar;
    }

    public void setContentView(View view, FrameLayout.LayoutParams layoutParams) {
        removeAllViews();
        if (view != null) {
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            addView(view, layoutParams);
        }
    }

    public void setContentView(int i10) {
        setContentView(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) null), null);
    }
}
