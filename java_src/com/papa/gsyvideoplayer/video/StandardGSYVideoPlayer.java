package com.papa.gsyvideoplayer.video;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.utils.c;
import com.papa.gsyvideoplayer.utils.k;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;
import v7.e;
import v7.f;

/* JADX INFO: loaded from: classes2.dex */
public class StandardGSYVideoPlayer extends GSYVideoPlayer {
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected Dialog mBrightnessDialog;
    protected TextView mBrightnessDialogTv;
    protected ImageView mDialogIcon;
    protected ProgressBar mDialogProgressBar;
    protected Drawable mDialogProgressBarDrawable;
    protected int mDialogProgressHighLightColor;
    protected int mDialogProgressNormalColor;
    protected TextView mDialogSeekTime;
    protected TextView mDialogTotalTime;
    protected ProgressBar mDialogVolumeProgressBar;
    protected Dialog mProgressDialog;
    protected Dialog mVolumeDialog;
    protected Drawable mVolumeProgressDrawable;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            StandardGSYVideoPlayer.this.startPlayLogic();
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
        }
    }

    public StandardGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }

    private void e(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i10;
        Drawable drawable;
        Drawable drawable2 = this.mBottomProgressDrawable;
        if (drawable2 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable2);
        }
        Drawable drawable3 = this.mBottomShowProgressDrawable;
        if (drawable3 != null && (drawable = this.mBottomShowProgressThumbDrawable) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable3, drawable);
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i11 = this.mDialogProgressHighLightColor;
        if (i11 < 0 || (i10 = this.mDialogProgressNormalColor) < 0) {
            return;
        }
        standardGSYVideoPlayer.setDialogProgressColor(i11, i10);
    }

    protected void changeUiToClear() {
        c.h("changeUiToClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    protected void changeUiToCompleteClear() {
        c.h("changeUiToCompleteClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToCompleteShow() {
        c.h("changeUiToCompleteShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToError() {
        c.h("changeUiToError");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        c.h("changeUiToNormal");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        updateStartImage();
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    protected void changeUiToPauseClear() {
        c.h("changeUiToPauseClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
        updatePauseCover();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        c.h("changeUiToPauseShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
        updatePauseCover();
    }

    protected void changeUiToPlayingBufferingClear() {
        c.h("changeUiToPlayingBufferingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
        updateStartImage();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingBufferingShow() {
        c.h("changeUiToPlayingBufferingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    protected void changeUiToPlayingClear() {
        c.h("changeUiToPlayingClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingShow() {
        c.h("changeUiToPlayingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
        updateStartImage();
    }

    protected void changeUiToPrepareingClear() {
        c.h("changeUiToPrepareingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).m();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPreparingShow() {
        c.h("changeUiToPreparingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).n();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        TextView textView;
        TextView textView2;
        SeekBar seekBar;
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYBaseVideoPlayer;
        StandardGSYVideoPlayer standardGSYVideoPlayer2 = (StandardGSYVideoPlayer) gSYBaseVideoPlayer2;
        SeekBar seekBar2 = standardGSYVideoPlayer2.mProgressBar;
        if (seekBar2 != null && (seekBar = standardGSYVideoPlayer.mProgressBar) != null) {
            seekBar2.setProgress(seekBar.getProgress());
            standardGSYVideoPlayer2.mProgressBar.setSecondaryProgress(standardGSYVideoPlayer.mProgressBar.getSecondaryProgress());
        }
        TextView textView3 = standardGSYVideoPlayer2.mTotalTimeTextView;
        if (textView3 != null && (textView2 = standardGSYVideoPlayer.mTotalTimeTextView) != null) {
            textView3.setText(textView2.getText());
        }
        TextView textView4 = standardGSYVideoPlayer2.mCurrentTimeTextView;
        if (textView4 == null || (textView = standardGSYVideoPlayer.mCurrentTimeTextView) == null) {
            return;
        }
        textView4.setText(textView.getText());
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissBrightnessDialog() {
        Dialog dialog = this.mBrightnessDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mBrightnessDialog = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissProgressDialog() {
        Dialog dialog = this.mProgressDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void dismissVolumeDialog() {
        Dialog dialog = this.mVolumeDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mVolumeDialog = null;
        }
    }

    protected int getBrightnessLayoutId() {
        return R.layout.video_brightness;
    }

    protected int getBrightnessTextId() {
        return R.id.app_video_brightness;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_standard;
    }

    protected int getProgressDialogAllDurationTextId() {
        return R.id.tv_duration;
    }

    protected int getProgressDialogCurrentDurationTextId() {
        return R.id.tv_current;
    }

    protected int getProgressDialogImageId() {
        return R.id.duration_image_tip;
    }

    protected int getProgressDialogLayoutId() {
        return R.layout.video_progress_dialog;
    }

    protected int getProgressDialogProgressId() {
        return R.id.duration_progressbar;
    }

    protected int getVolumeLayoutId() {
        return R.layout.video_volume_dialog;
    }

    protected int getVolumeProgressId() {
        return R.id.volume_progressbar;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mStartButton, 4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        super.init(context);
        Drawable drawable = this.mBottomProgressDrawable;
        if (drawable != null) {
            this.mBottomProgressBar.setProgressDrawable(drawable);
        }
        if (this.mBottomShowProgressDrawable != null) {
            this.mProgressBar.setProgressDrawable(this.mBottomProgressDrawable);
        }
        Drawable drawable2 = this.mBottomShowProgressThumbDrawable;
        if (drawable2 != null) {
            this.mProgressBar.setThumb(drawable2);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void onClickUiToggle() {
        ViewGroup viewGroup;
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            setViewShowState(this.mLockScreen, 0);
            return;
        }
        int i10 = this.mCurrentState;
        if (i10 == 1) {
            ViewGroup viewGroup2 = this.mBottomContainer;
            if (viewGroup2 != null) {
                if (viewGroup2.getVisibility() == 0) {
                    changeUiToPrepareingClear();
                    return;
                } else {
                    changeUiToPreparingShow();
                    return;
                }
            }
            return;
        }
        if (i10 == 2) {
            ViewGroup viewGroup3 = this.mBottomContainer;
            if (viewGroup3 != null) {
                if (viewGroup3.getVisibility() == 0) {
                    changeUiToPlayingClear();
                    return;
                } else {
                    changeUiToPlayingShow();
                    return;
                }
            }
            return;
        }
        if (i10 == 5) {
            ViewGroup viewGroup4 = this.mBottomContainer;
            if (viewGroup4 != null) {
                if (viewGroup4.getVisibility() == 0) {
                    changeUiToPauseClear();
                    return;
                } else {
                    changeUiToPauseShow();
                    return;
                }
            }
            return;
        }
        if (i10 == 6) {
            ViewGroup viewGroup5 = this.mBottomContainer;
            if (viewGroup5 != null) {
                if (viewGroup5.getVisibility() == 0) {
                    changeUiToCompleteClear();
                    return;
                } else {
                    changeUiToCompleteShow();
                    return;
                }
            }
            return;
        }
        if (i10 != 3 || (viewGroup = this.mBottomContainer) == null) {
            return;
        }
        if (viewGroup.getVisibility() == 0) {
            changeUiToPlayingBufferingClear();
        } else {
            changeUiToPlayingBufferingShow();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissVolumeDialog();
        dismissBrightnessDialog();
    }

    public void restartTimerTask() {
        startProgressTimer();
        startDismissControlViewTimer();
    }

    public void saveFrame(File file, f fVar) {
        saveFrame(file, false, fVar);
    }

    public void setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgressDrawable(drawable);
        }
    }

    public void setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setProgressDrawable(drawable);
            this.mProgressBar.setThumb(drawable2);
        }
    }

    public void setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
    }

    public void setDialogProgressColor(int i10, int i11) {
        this.mDialogProgressHighLightColor = i10;
        this.mDialogProgressNormalColor = i11;
    }

    public void setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showBrightnessDialog(float f10) {
        if (this.mBrightnessDialog == null) {
            View viewInflate = LayoutInflater.from(getActivityContext()).inflate(getBrightnessLayoutId(), (ViewGroup) null);
            if (viewInflate.findViewById(getBrightnessTextId()) instanceof TextView) {
                this.mBrightnessDialogTv = (TextView) viewInflate.findViewById(getBrightnessTextId());
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mBrightnessDialog = dialog;
            dialog.setContentView(viewInflate);
            this.mBrightnessDialog.getWindow().addFlags(8);
            this.mBrightnessDialog.getWindow().addFlags(32);
            this.mBrightnessDialog.getWindow().addFlags(16);
            this.mBrightnessDialog.getWindow().getDecorView().setSystemUiVisibility(2);
            this.mBrightnessDialog.getWindow().setLayout(-2, -2);
            WindowManager.LayoutParams attributes = this.mBrightnessDialog.getWindow().getAttributes();
            attributes.gravity = 8388661;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mBrightnessDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mBrightnessDialog.isShowing()) {
            this.mBrightnessDialog.show();
        }
        TextView textView = this.mBrightnessDialogTv;
        if (textView != null) {
            textView.setText(((int) (f10 * 100.0f)) + "%");
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showProgressDialog(float f10, String str, int i10, String str2, int i11) {
        ProgressBar progressBar;
        TextView textView;
        TextView textView2;
        if (this.mProgressDialog == null) {
            View viewInflate = LayoutInflater.from(getActivityContext()).inflate(getProgressDialogLayoutId(), (ViewGroup) null);
            if (viewInflate.findViewById(getProgressDialogProgressId()) instanceof ProgressBar) {
                ProgressBar progressBar2 = (ProgressBar) viewInflate.findViewById(getProgressDialogProgressId());
                this.mDialogProgressBar = progressBar2;
                Drawable drawable = this.mDialogProgressBarDrawable;
                if (drawable != null) {
                    progressBar2.setProgressDrawable(drawable);
                }
            }
            if (viewInflate.findViewById(getProgressDialogCurrentDurationTextId()) instanceof TextView) {
                this.mDialogSeekTime = (TextView) viewInflate.findViewById(getProgressDialogCurrentDurationTextId());
            }
            if (viewInflate.findViewById(getProgressDialogAllDurationTextId()) instanceof TextView) {
                this.mDialogTotalTime = (TextView) viewInflate.findViewById(getProgressDialogAllDurationTextId());
            }
            if (viewInflate.findViewById(getProgressDialogImageId()) instanceof ImageView) {
                this.mDialogIcon = (ImageView) viewInflate.findViewById(getProgressDialogImageId());
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mProgressDialog = dialog;
            dialog.setContentView(viewInflate);
            this.mProgressDialog.getWindow().addFlags(8);
            this.mProgressDialog.getWindow().addFlags(32);
            this.mProgressDialog.getWindow().addFlags(16);
            this.mProgressDialog.getWindow().setLayout(getWidth(), getHeight());
            int i12 = this.mDialogProgressNormalColor;
            if (i12 != -11 && (textView2 = this.mDialogTotalTime) != null) {
                textView2.setTextColor(i12);
            }
            int i13 = this.mDialogProgressHighLightColor;
            if (i13 != -11 && (textView = this.mDialogSeekTime) != null) {
                textView.setTextColor(i13);
            }
            WindowManager.LayoutParams attributes = this.mProgressDialog.getWindow().getAttributes();
            attributes.gravity = 48;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mProgressDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
        TextView textView3 = this.mDialogSeekTime;
        if (textView3 != null) {
            textView3.setText(str);
        }
        TextView textView4 = this.mDialogTotalTime;
        if (textView4 != null) {
            textView4.setText(" / " + str2);
        }
        if (i11 > 0 && (progressBar = this.mDialogProgressBar) != null) {
            progressBar.setProgress((i10 * 100) / i11);
        }
        if (f10 > 0.0f) {
            ImageView imageView = this.mDialogIcon;
            if (imageView != null) {
                imageView.setBackgroundResource(R.drawable.video_forward_icon);
                return;
            }
            return;
        }
        ImageView imageView2 = this.mDialogIcon;
        if (imageView2 != null) {
            imageView2.setBackgroundResource(R.drawable.video_backward_icon);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showVolumeDialog(float f10, int i10) {
        if (this.mVolumeDialog == null) {
            View viewInflate = LayoutInflater.from(getActivityContext()).inflate(getVolumeLayoutId(), (ViewGroup) null);
            if (viewInflate.findViewById(getVolumeProgressId()) instanceof ProgressBar) {
                ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(getVolumeProgressId());
                this.mDialogVolumeProgressBar = progressBar;
                Drawable drawable = this.mVolumeProgressDrawable;
                if (drawable != null && progressBar != null) {
                    progressBar.setProgressDrawable(drawable);
                }
            }
            Dialog dialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mVolumeDialog = dialog;
            dialog.setContentView(viewInflate);
            this.mVolumeDialog.getWindow().addFlags(8);
            this.mVolumeDialog.getWindow().addFlags(32);
            this.mVolumeDialog.getWindow().addFlags(16);
            this.mVolumeDialog.getWindow().setLayout(-2, -2);
            WindowManager.LayoutParams attributes = this.mVolumeDialog.getWindow().getAttributes();
            attributes.gravity = 8388659;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mVolumeDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mVolumeDialog.isShowing()) {
            this.mVolumeDialog.show();
        }
        ProgressBar progressBar2 = this.mDialogVolumeProgressBar;
        if (progressBar2 != null) {
            progressBar2.setProgress(i10);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        if (!k.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivityContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new a());
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new b());
        builder.create().show();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void startPlayLogic() {
        if (this.mVideoAllCallBack != null) {
            c.h("onClickStartThumb");
            this.mVideoAllCallBack.onClickStartThumb(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
        startDismissControlViewTimer();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z10, boolean z11) {
        GSYBaseVideoPlayer gSYBaseVideoPlayerStartWindowFullscreen = super.startWindowFullscreen(context, z10, z11);
        if (gSYBaseVideoPlayerStartWindowFullscreen != null) {
            StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYBaseVideoPlayerStartWindowFullscreen;
            standardGSYVideoPlayer.setLockClickListener(this.mLockClickListener);
            standardGSYVideoPlayer.setNeedLockFull(isNeedLockFull());
            e(standardGSYVideoPlayer);
        }
        return gSYBaseVideoPlayerStartWindowFullscreen;
    }

    public void taskShotPic(e eVar) {
        taskShotPic(eVar, false);
    }

    protected void updateStartImage() {
        View view = this.mStartButton;
        if (view instanceof ENPlayView) {
            ENPlayView eNPlayView = (ENPlayView) view;
            eNPlayView.setDuration(500);
            int i10 = this.mCurrentState;
            if (i10 == 2) {
                eNPlayView.d();
                return;
            } else if (i10 == 7) {
                eNPlayView.c();
                return;
            } else {
                eNPlayView.c();
                return;
            }
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            int i11 = this.mCurrentState;
            if (i11 == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector);
            } else if (i11 == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            }
        }
    }

    public void saveFrame(File file, boolean z10, f fVar) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().q(file, z10, fVar);
        }
    }

    public void taskShotPic(e eVar, boolean z10) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().z(eVar, z10);
        }
    }

    public StandardGSYVideoPlayer(Context context) {
        super(context);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }

    public StandardGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
    }
}
