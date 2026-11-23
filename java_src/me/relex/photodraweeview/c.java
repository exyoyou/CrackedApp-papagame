package me.relex.photodraweeview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.drawee.view.DraweeView;

/* JADX INFO: loaded from: classes.dex */
public class c implements GestureDetector.OnDoubleTapListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f94324b;

    public c(a aVar) {
        a(aVar);
    }

    public void a(a aVar) {
        this.f94324b = aVar;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        a aVar = this.f94324b;
        if (aVar == null) {
            return false;
        }
        try {
            float scale = aVar.getScale();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (scale < this.f94324b.getMediumScale()) {
                a aVar2 = this.f94324b;
                aVar2.setScale(aVar2.getMediumScale(), x10, y10, true);
            } else if (scale < this.f94324b.getMediumScale() || scale >= this.f94324b.getMaximumScale()) {
                a aVar3 = this.f94324b;
                aVar3.setScale(aVar3.getMinimumScale(), x10, y10, true);
            } else {
                a aVar4 = this.f94324b;
                aVar4.setScale(aVar4.getMaximumScale(), x10, y10, true);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        DraweeView<com.facebook.drawee.generic.a> draweeViewR;
        RectF rectFO;
        a aVar = this.f94324b;
        if (aVar == null || (draweeViewR = aVar.r()) == null) {
            return false;
        }
        if (this.f94324b.getOnPhotoTapListener() != null && (rectFO = this.f94324b.o()) != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (rectFO.contains(x10, y10)) {
                this.f94324b.getOnPhotoTapListener().a(draweeViewR, (x10 - rectFO.left) / rectFO.width(), (y10 - rectFO.top) / rectFO.height());
                return true;
            }
        }
        if (this.f94324b.getOnViewTapListener() == null) {
            return false;
        }
        this.f94324b.getOnViewTapListener().a(draweeViewR, motionEvent.getX(), motionEvent.getY());
        return true;
    }
}
