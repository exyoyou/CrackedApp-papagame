package com.haima.hmcp.widgets.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;

/* JADX INFO: loaded from: classes5.dex */
public class MouseView extends ImageView {
    private static final int BUSY_DURATION = 50;
    private static final int BUSY_RES = 2;
    private static final int WORKING_DURATION = 50;
    private static final int WORKING_RES = 1;
    private AnimationDrawable busyAnim;
    private MouseStyle currentStyle;
    private AnimationDrawable workingAnim;
    public static final int[] WORKING_FRAMES = {R.drawable.hm_working_frame_01, R.drawable.hm_working_frame_02, R.drawable.hm_working_frame_03, R.drawable.hm_working_frame_04, R.drawable.hm_working_frame_05, R.drawable.hm_working_frame_06, R.drawable.hm_working_frame_07, R.drawable.hm_working_frame_08, R.drawable.hm_working_frame_09, R.drawable.hm_working_frame_10, R.drawable.hm_working_frame_11, R.drawable.hm_working_frame_12, R.drawable.hm_working_frame_13, R.drawable.hm_working_frame_14};
    public static final int[] BUSY_FRAMES = {R.drawable.hm_busy_frame_01, R.drawable.hm_busy_frame_02, R.drawable.hm_busy_frame_03, R.drawable.hm_busy_frame_04, R.drawable.hm_busy_frame_05, R.drawable.hm_busy_frame_06, R.drawable.hm_busy_frame_07, R.drawable.hm_busy_frame_08, R.drawable.hm_busy_frame_09, R.drawable.hm_busy_frame_10, R.drawable.hm_busy_frame_11, R.drawable.hm_busy_frame_12, R.drawable.hm_busy_frame_13, R.drawable.hm_busy_frame_14};

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.view.MouseView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle;

        static {
            int[] iArr = new int[MouseStyle.values().length];
            $SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle = iArr;
            try {
                iArr[MouseStyle.WORKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle[MouseStyle.BUSY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle[MouseStyle.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum MouseStyle {
        NORMAL,
        WORKING,
        BUSY
    }

    public MouseView(Context context) {
        super(context);
        this.currentStyle = MouseStyle.NORMAL;
        init();
    }

    private AnimationDrawable getAnimDrawable(int i10) {
        if (i10 == 1) {
            return this.workingAnim;
        }
        if (i10 != 2) {
            return null;
        }
        return this.busyAnim;
    }

    private Resources getResourcesObj() {
        return (ResourceManager.getInstance() == null || ResourceManager.getInstance().getResources() == null) ? getContext().getResources() : ResourceManager.getInstance().getResources();
    }

    private void init() {
        this.workingAnim = new AnimationDrawable();
        for (int i10 : WORKING_FRAMES) {
            this.workingAnim.addFrame(getResourcesObj().getDrawable(i10), 50);
        }
        this.workingAnim.setOneShot(false);
        this.busyAnim = new AnimationDrawable();
        for (int i11 : BUSY_FRAMES) {
            this.busyAnim.addFrame(getResourcesObj().getDrawable(i11), 50);
        }
        this.busyAnim.setOneShot(false);
    }

    private void setResId(int i10) {
        AnimationDrawable animDrawable = getAnimDrawable(i10);
        if (animDrawable == null) {
            return;
        }
        setImageDrawable(animDrawable);
        animDrawable.start();
    }

    private void stop() {
        Drawable drawable = getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        setImageDrawable(null);
    }

    public MouseStyle getMouseStyle() {
        return this.currentStyle;
    }

    @Override // android.view.View
    @TargetApi(16)
    public void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setMouseStyle(MouseStyle mouseStyle) {
        if (mouseStyle == null || this.currentStyle == mouseStyle) {
            return;
        }
        this.currentStyle = mouseStyle;
        int i10 = AnonymousClass1.$SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle[mouseStyle.ordinal()];
        if (i10 == 1) {
            setResId(1);
        } else if (i10 == 2) {
            setResId(2);
        } else {
            if (i10 != 3) {
                return;
            }
            stop();
        }
    }

    public MouseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentStyle = MouseStyle.NORMAL;
        init();
    }

    public MouseView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.currentStyle = MouseStyle.NORMAL;
        init();
    }
}
