package com.papa91.view;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.papa91.mix.R;
import com.yatoooon.screenadaptation.e;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class DragProgressView extends RelativeLayout {
    private long INTERVAL;
    private int SIGNAL_MAX;
    private View dragView;
    private int first;
    private int init_first_box_time;
    private Runnable mLayoutRunnable;
    View.OnClickListener mOnClickListener;
    OnProduceListener mOnProduceListener;
    private int max_time_interval;
    private int min_time_interval;
    private RoundedRectangularProgressView progress;
    private int signal;
    private ImageView signal1;
    private ImageView signal2;
    private ImageView signal3;
    private ImageView spark;

    public interface OnProduceListener {
        void onProduce();
    }

    public DragProgressView(Context context) {
        this(context, null);
    }

    void disableSpark() {
        this.spark.setVisibility(4);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.spark.getDrawable();
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    void enableSpark() {
        this.spark.setVisibility(0);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.spark.getDrawable();
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    int getDimension(int i10) {
        return (int) TypedValue.applyDimension(1, i10, getContext().getResources().getDisplayMetrics());
    }

    public int getSignal() {
        return this.signal;
    }

    public void init(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.drag_progress_view, (ViewGroup) null, false);
        e.a().f(viewInflate);
        this.progress = (RoundedRectangularProgressView) viewInflate.findViewById(R.id.progress);
        this.spark = (ImageView) viewInflate.findViewById(R.id.spark);
        this.signal1 = (ImageView) viewInflate.findViewById(R.id.signal1);
        this.signal2 = (ImageView) viewInflate.findViewById(R.id.signal2);
        this.signal3 = (ImageView) viewInflate.findViewById(R.id.signal3);
        addView(viewInflate);
        this.dragView = viewInflate;
        post(new Runnable() { // from class: com.papa91.view.DragProgressView.1
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) DragProgressView.this.getLayoutParams();
                marginLayoutParams.width = -2;
                marginLayoutParams.height = -2;
                DragProgressView.this.setLayoutParams(marginLayoutParams);
                if (DragProgressView.this.dragView != null) {
                    DragProgressView.this.dragView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.DragProgressView.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            View.OnClickListener onClickListener = DragProgressView.this.mOnClickListener;
                            if (onClickListener != null) {
                                onClickListener.onClick(view);
                            }
                        }
                    });
                }
            }
        });
        this.progress.setOnProgressListener(new RoundedRectangularProgressView.OnProgressListener() { // from class: com.papa91.view.DragProgressView.2
            @Override // com.papa91.view.RoundedRectangularProgressView.OnProgressListener
            public void onProgress(float f10, float[] fArr) {
                if (DragProgressView.this.spark.getVisibility() != 0 || fArr == null) {
                    return;
                }
                int left = (int) ((DragProgressView.this.progress.getLeft() + fArr[0]) - (DragProgressView.this.spark.getMeasuredWidth() / 2));
                int top = (int) ((DragProgressView.this.progress.getTop() + fArr[1]) - (DragProgressView.this.spark.getMeasuredHeight() / 2));
                DragProgressView.this.spark.setTranslationX(left);
                DragProgressView.this.spark.setTranslationY(top);
                if (DragProgressView.this.getParent() != null) {
                    View view = (View) DragProgressView.this.getParent();
                    view.getLayoutParams().width = -1;
                    view.getLayoutParams().height = -1;
                    view.invalidate();
                }
                if (f10 >= 1.0f) {
                    OnProduceListener onProduceListener = DragProgressView.this.mOnProduceListener;
                    if (onProduceListener != null) {
                        onProduceListener.onProduce();
                    }
                    DragProgressView dragProgressView = DragProgressView.this;
                    dragProgressView.setSignal(dragProgressView.signal + 1);
                    if (DragProgressView.this.signal < DragProgressView.this.SIGNAL_MAX) {
                        DragProgressView.this.start();
                    } else {
                        DragProgressView.this.stop();
                    }
                }
                DragProgressView.this.requestLayout();
            }
        });
    }

    public boolean isRunning() {
        RoundedRectangularProgressView roundedRectangularProgressView = this.progress;
        return roundedRectangularProgressView != null && roundedRectangularProgressView.isRunning();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public void pause() {
        this.progress.pause();
    }

    void removeAnimate(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.ic_gray_jb);
    }

    @Override // android.widget.RelativeLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        Runnable runnable = this.mLayoutRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.papa91.view.DragProgressView.3
            @Override // java.lang.Runnable
            public void run() {
                DragProgressView dragProgressView = DragProgressView.this;
                dragProgressView.measure(View.MeasureSpec.makeMeasureSpec(dragProgressView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(DragProgressView.this.getHeight(), 1073741824));
                DragProgressView dragProgressView2 = DragProgressView.this;
                dragProgressView2.layout(dragProgressView2.getLeft(), DragProgressView.this.getTop(), DragProgressView.this.getRight(), DragProgressView.this.getBottom());
            }
        };
        this.mLayoutRunnable = runnable2;
        post(runnable2);
    }

    public void resume() {
        if (this.signal >= this.SIGNAL_MAX) {
            stop();
        } else {
            enableSpark();
            this.progress.resume();
        }
    }

    public void setInterval(long j10) {
        this.INTERVAL = j10;
        RoundedRectangularProgressView roundedRectangularProgressView = this.progress;
        if (roundedRectangularProgressView != null) {
            roundedRectangularProgressView.setInterval(j10);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }

    public void setOnProduceListener(OnProduceListener onProduceListener) {
        this.mOnProduceListener = onProduceListener;
    }

    public void setProgress(float f10) {
        RoundedRectangularProgressView roundedRectangularProgressView = this.progress;
        if (roundedRectangularProgressView != null) {
            roundedRectangularProgressView.setProgress(f10);
        }
    }

    public void setSignal(int i10) {
        if (i10 < 0) {
            i10 = 0;
        } else {
            int i11 = this.SIGNAL_MAX;
            if (i10 > i11) {
                i10 = i11;
            }
        }
        this.signal = i10;
        ImageView[] imageViewArr = {this.signal1, this.signal2, this.signal3};
        for (int i12 = 0; i12 < 3; i12++) {
            if (i12 < this.signal) {
                startAnimate(imageViewArr[i12]);
            } else {
                removeAnimate(imageViewArr[i12]);
            }
        }
        if (this.signal >= this.SIGNAL_MAX) {
            stop();
        }
    }

    public void setSignalMax(int i10) {
        int iMin = Math.min(i10, 3);
        this.SIGNAL_MAX = iMin;
        if (this.signal >= iMin) {
            stop();
        }
    }

    public void start() {
        int iNextInt;
        if (this.signal >= this.SIGNAL_MAX) {
            stop();
            return;
        }
        if (this.first == 0) {
            iNextInt = this.init_first_box_time * 1000;
            this.first = 1;
        } else {
            iNextInt = (new Random().nextInt(this.max_time_interval - this.min_time_interval) + this.min_time_interval) * 1000;
        }
        RoundedRectangularProgressView roundedRectangularProgressView = this.progress;
        if (roundedRectangularProgressView != null) {
            roundedRectangularProgressView.setInterval(iNextInt);
            this.progress.start();
        }
        enableSpark();
    }

    void startAnimate(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.gif_gd_gg_animation);
        ((AnimationDrawable) imageView.getDrawable()).start();
    }

    public void stop() {
        this.progress.stop();
        disableSpark();
    }

    public DragProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.SIGNAL_MAX = 0;
        this.INTERVAL = 60000L;
        init(context);
    }

    public void setInterval(int i10, int i11, int i12) {
        this.init_first_box_time = i10;
        this.min_time_interval = i11;
        this.max_time_interval = i12;
    }
}
