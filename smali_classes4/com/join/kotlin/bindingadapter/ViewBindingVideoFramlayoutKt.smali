.class public final Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007\u001a6\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "loadVideoUrl",
        "",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "videoData",
        "Lcom/join/kotlin/ui/modleregin/modle/VideoModle;",
        "videoHelper",
        "Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "intentData",
        "Lcom/join/mgps/Util/IntentDateBean;",
        "setvideoTag",
        "simpleDraweeView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "setVideoTag",
        "",
        "loadUrl",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->loadVideoUrl$lambda$0(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->setvideoTag$lambda$1(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V

    return-void
.end method

.method public static final loadVideoUrl(Landroid/widget/FrameLayout;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Lcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 5
    .param p0    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "videoData",
            "videoHelper",
            "intentData"
        }
    .end annotation

    .line 1
    const-string v0, "frameLayout"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "videoData"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "videoHelper"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance v0, Lcom/join/android/app/component/video/c$l;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getVideoCover()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v0, v2, v3, v4, p3}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    new-array v1, v1, [Z

    .line 58
    .line 59
    invoke-virtual {p2, v2, v0, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p2, v0, p0}, Lcom/join/android/app/component/video/c;->P(ILandroid/widget/FrameLayout;)V

    .line 67
    .line 68
    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    new-instance p3, Ly5/a;

    .line 72
    .line 73
    invoke-direct {p3, p2, p1}, Ly5/a;-><init>(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string p2, "loadVideoUrl position= "

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "MyListViewVideoHelper"

    .line 101
    .line 102
    invoke-static {p1, p0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private static final loadVideoUrl$lambda$0(Lcom/join/android/app/component/video/c;Lcom/join/kotlin/ui/modleregin/modle/VideoModle;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->E(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final setvideoTag(Lcom/facebook/drawee/view/SimpleDraweeView;ILcom/join/android/app/component/video/c;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/Util/IntentDateBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "setVideoTag",
            "videoHelper",
            "intentData",
            "loadCover"
        }
    .end annotation

    .line 1
    const-string v0, "simpleDraweeView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->m()Lcom/facebook/drawee/drawable/s$c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, p4, v0}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 17
    .line 18
    .line 19
    new-instance p4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "setvideoTag setVideoTag= "

    .line 25
    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    const-string v0, "MyListViewVideoHelper"

    .line 37
    .line 38
    invoke-static {v0, p4}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {p0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p2, p1, p0}, Lcom/join/android/app/component/video/c;->Q(ILcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    if-eqz p3, :cond_1

    .line 54
    .line 55
    new-instance p1, Ly5/b;

    .line 56
    .line 57
    invoke-direct {p1, p0, p3}, Ly5/b;-><init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method private static final setvideoTag$lambda$1(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
