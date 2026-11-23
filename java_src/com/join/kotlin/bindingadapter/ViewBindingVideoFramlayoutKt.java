package com.join.kotlin.bindingadapter;

import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.BindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.video.c;
import com.join.kotlin.bindingadapter.ViewBindingVideoFramlayoutKt;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.g1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007\u001a6\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007¨\u0006\u0011"}, d2 = {"loadVideoUrl", "", "frameLayout", "Landroid/widget/FrameLayout;", "videoData", "Lcom/join/kotlin/ui/modleregin/modle/VideoModle;", "videoHelper", "Lcom/join/android/app/component/video/MyListViewVideoHelper;", "intentData", "Lcom/join/mgps/Util/IntentDateBean;", "setvideoTag", "simpleDraweeView", "Lcom/facebook/drawee/view/SimpleDraweeView;", "setVideoTag", "", "loadUrl", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewBindingVideoFramlayoutKt {
    @BindingAdapter(requireAll = false, value = {"videoData", "videoHelper", "intentData"})
    public static final void loadVideoUrl(@NotNull FrameLayout frameLayout, @NotNull final VideoModle videoData, @NotNull final c videoHelper, @Nullable IntentDateBean intentDateBean) {
        Intrinsics.checkNotNullParameter(frameLayout, "frameLayout");
        Intrinsics.checkNotNullParameter(videoData, "videoData");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        String videoUrl = videoData.getVideoUrl();
        if (videoUrl == null || videoUrl.length() == 0) {
            return;
        }
        videoHelper.d(videoData.getPosition(), new c.l(videoData.getPosition(), videoData.getVideoUrl(), videoData.getVideoCover(), intentDateBean), new boolean[0]);
        videoHelper.P(videoData.getPosition(), frameLayout);
        if (intentDateBean == null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: y5.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ViewBindingVideoFramlayoutKt.loadVideoUrl$lambda$0(videoHelper, videoData, view);
                }
            });
        }
        g1.d("MyListViewVideoHelper", "loadVideoUrl position= " + videoData.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadVideoUrl$lambda$0(c cVar, VideoModle videoModle, View view) {
        cVar.E(videoModle.getPosition());
    }

    @BindingAdapter(requireAll = false, value = {"setVideoTag", "videoHelper", "intentData", "loadCover"})
    public static final void setvideoTag(@NotNull final SimpleDraweeView simpleDraweeView, int i10, @Nullable c cVar, @Nullable final IntentDateBean intentDateBean, @Nullable String str) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        l.i(simpleDraweeView, str, simpleDraweeView.getHierarchy().m());
        g1.d("MyListViewVideoHelper", "setvideoTag setVideoTag= " + i10);
        simpleDraweeView.setTag(Integer.valueOf(i10));
        if (cVar != null) {
            cVar.Q(i10, simpleDraweeView);
        }
        if (intentDateBean != null) {
            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: y5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ViewBindingVideoFramlayoutKt.setvideoTag$lambda$1(simpleDraweeView, intentDateBean, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setvideoTag$lambda$1(SimpleDraweeView simpleDraweeView, IntentDateBean intentDateBean, View view) {
        IntentUtil.getInstance().intentActivity(simpleDraweeView.getContext(), intentDateBean);
    }
}
