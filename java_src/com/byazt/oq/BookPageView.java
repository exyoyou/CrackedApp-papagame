package com.byazt.oq;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Shader;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.Constants;
import com.zyyoona7.wheel.WheelView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1873})
public class BookPageView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Point f18183a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f18184c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Point f18185n;
    public Point sp;
    public Paint tt;
    public Point uj;
    public Point ve;

    public BookPageView(Context context) {
        super(context);
        this.f18184c = new Paint();
        this.tt = new Paint();
        this.ve = new Point();
        this.uj = new Point();
        this.f18185n = new Point();
        this.f18183a = new Point();
        this.sp = new Point();
        this.f18184c.setColor(Constants.LEVEL_SDK);
        this.f18184c.setTextSize(25.0f);
        post(new Runnable() { // from class: com.byazt.oq.BookPageView.1
            @Override // java.lang.Runnable
            public void run() {
                BookPageView bookPageView = BookPageView.this;
                bookPageView.ve.x = bookPageView.getWidth() - 10;
                BookPageView bookPageView2 = BookPageView.this;
                bookPageView2.ve.y = bookPageView2.getHeight() - 10;
                BookPageView.this.tt.setShader(new LinearGradient(0.0f, 0.0f, BookPageView.this.getWidth(), BookPageView.this.getHeight(), -7829368, WheelView.W2, Shader.TileMode.MIRROR));
                BookPageView.this.tt.setStyle(Paint.Style.FILL_AND_STROKE);
                BookPageView.this.tt.setStrokeWidth(6.0f);
                BookPageView.this.tt.setShadowLayer(10.0f, 5.0f, 5.0f, -1);
            }
        });
    }

    public void c(Point point) {
        Point point2 = this.ve;
        point2.x = point.x;
        point2.y = point.y;
        invalidate();
    }

    public Path getFilterAreaPath() {
        Path path = new Path();
        Point point = this.uj;
        path.moveTo(point.x, point.y);
        Point point2 = this.f18183a;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.sp;
        path.lineTo(point3.x, point3.y);
        path.close();
        return path;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c();
        Path path = new Path();
        Point point = this.f18183a;
        path.moveTo(point.x, point.y);
        Point point2 = this.ve;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.sp;
        path.lineTo(point3.x, point3.y);
        path.close();
        canvas.drawPath(path, this.tt);
    }

    private void c() {
        this.uj.x = getWidth();
        this.uj.y = getHeight();
        Point point = this.f18185n;
        Point point2 = this.ve;
        int i10 = point2.x;
        Point point3 = this.uj;
        int i11 = (i10 + point3.x) / 2;
        point.x = i11;
        int i12 = (point2.y + point3.y) / 2;
        point.y = i12;
        Point point4 = this.f18183a;
        int i13 = point3.y;
        point4.x = i11 - (((i13 - i12) * (i13 - i12)) / (point3.x - i11));
        point4.y = i13;
        Point point5 = this.sp;
        point5.x = point3.x;
        int i14 = point.y;
        int i15 = point3.x;
        int i16 = point.x;
        point5.y = i14 - (((i15 - i16) * (i15 - i16)) / (point3.y - i14));
    }
}
