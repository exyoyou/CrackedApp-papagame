package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class PhotoDraweeView extends SimpleDraweeView implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f94281b;

    public PhotoDraweeView(Context context, com.facebook.drawee.generic.a aVar) {
        super(context, aVar);
        d();
    }

    protected void d() {
        a aVar = this.f94281b;
        if (aVar == null || aVar.r() == null) {
            this.f94281b = new a(this);
        }
    }

    @Override // me.relex.photodraweeview.d
    public float getMaximumScale() {
        return this.f94281b.getMaximumScale();
    }

    @Override // me.relex.photodraweeview.d
    public float getMediumScale() {
        return this.f94281b.getMediumScale();
    }

    @Override // me.relex.photodraweeview.d
    public float getMinimumScale() {
        return this.f94281b.getMinimumScale();
    }

    @Override // me.relex.photodraweeview.d
    public e getOnPhotoTapListener() {
        return this.f94281b.getOnPhotoTapListener();
    }

    @Override // me.relex.photodraweeview.d
    public h getOnViewTapListener() {
        return this.f94281b.getOnViewTapListener();
    }

    @Override // me.relex.photodraweeview.d
    public float getScale() {
        return this.f94281b.getScale();
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        d();
        super.onAttachedToWindow();
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        this.f94281b.v();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        canvas.concat(this.f94281b.q());
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // me.relex.photodraweeview.d
    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f94281b.setAllowParentInterceptOnEdge(z10);
    }

    @Override // me.relex.photodraweeview.d
    public void setMaximumScale(float f10) {
        this.f94281b.setMaximumScale(f10);
    }

    @Override // me.relex.photodraweeview.d
    public void setMediumScale(float f10) {
        this.f94281b.setMediumScale(f10);
    }

    @Override // me.relex.photodraweeview.d
    public void setMinimumScale(float f10) {
        this.f94281b.setMinimumScale(f10);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f94281b.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View, me.relex.photodraweeview.d
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f94281b.setOnLongClickListener(onLongClickListener);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnPhotoTapListener(e eVar) {
        this.f94281b.setOnPhotoTapListener(eVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnScaleChangeListener(f fVar) {
        this.f94281b.setOnScaleChangeListener(fVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setOnViewTapListener(h hVar) {
        this.f94281b.setOnViewTapListener(hVar);
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10) {
        this.f94281b.setScale(f10);
    }

    @Override // me.relex.photodraweeview.d
    public void setZoomTransitionDuration(long j10) {
        this.f94281b.setZoomTransitionDuration(j10);
    }

    @Override // me.relex.photodraweeview.d
    public void update(int i10, int i11) {
        this.f94281b.update(i10, i11);
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10, boolean z10) {
        this.f94281b.setScale(f10, z10);
    }

    public PhotoDraweeView(Context context) {
        super(context);
        d();
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f10, float f11, float f12, boolean z10) {
        this.f94281b.setScale(f10, f11, f12, z10);
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d();
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        d();
    }
}
