package com.join.mgps.customview.zoomlayout;

/* JADX INFO: loaded from: classes3.dex */
public class b implements ZoomLayout.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f67221a;

    public b(boolean threeStep) {
        this.f67221a = threeStep;
    }

    private void b(ZoomLayout view, float x10, float y10) {
        float scale = view.getScale();
        float minScale = view.getMinScale() + ((view.getMaxScale() - view.getMinScale()) * 0.3f);
        if (scale < minScale) {
            view.setScale(minScale, x10, y10, true);
        } else if (scale < minScale || scale >= view.getMaxScale()) {
            view.setScale(view.getMinScale(), true);
        } else {
            view.setScale(view.getMaxScale(), x10, y10, true);
        }
    }

    private void c(ZoomLayout view, float x10, float y10) {
        if (view.getScale() > view.getMinScale()) {
            view.setScale(view.getMinScale(), true);
        } else {
            view.setScale(view.getMaxScale(), x10, y10, true);
        }
    }

    @Override // com.join.mgps.customview.zoomlayout.ZoomLayout.e
    public boolean a(ZoomLayout view, ZoomLayout.m info) {
        try {
            if (this.f67221a) {
                b(view, info.f(), info.g());
            } else {
                c(view, info.f(), info.g());
            }
            return true;
        } catch (ArrayIndexOutOfBoundsException unused) {
            return true;
        }
    }
}
