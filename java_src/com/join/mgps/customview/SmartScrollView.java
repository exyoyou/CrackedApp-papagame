package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class SmartScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f65906d;

    public interface a {
        void a();

        void b();
    }

    public SmartScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65904b = true;
        this.f65905c = false;
    }

    private void c() {
        a aVar;
        if (this.f65904b) {
            a aVar2 = this.f65906d;
            if (aVar2 != null) {
                aVar2.b();
                return;
            }
            return;
        }
        if (!this.f65905c || (aVar = this.f65906d) == null) {
            return;
        }
        aVar.a();
    }

    public boolean a() {
        return this.f65905c;
    }

    public boolean b() {
        return this.f65904b;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
        if (scrollY == 0) {
            this.f65904b = clampedY;
            this.f65905c = false;
        } else {
            this.f65904b = false;
            this.f65905c = clampedY;
        }
        c();
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
    }

    public void setScanScrollChangedListener(a smartScrollChangedListener) {
        this.f65906d = smartScrollChangedListener;
    }
}
