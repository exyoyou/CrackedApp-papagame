.class public interface abstract Lcom/aggmoread/sdk/z/c/a/a/c/p/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/c/p/f$b;,
        Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract bindCTAViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract f()I
.end method

.method public abstract g()Lcom/aggmoread/sdk/z/c/a/a/c/c;
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getAppPrice()D
.end method

.method public abstract getAppScore()I
.end method

.method public abstract getAppStatus()I
.end method

.method public abstract getCTAText()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDownloadCount()J
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPictureHeight()I
.end method

.method public abstract getPictureWidth()I
.end method

.method public abstract getProgress()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoCurrentPosition()I
.end method

.method public abstract isAppAd()Z
.end method

.method public abstract isVideoAd()Z
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract renderView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract resume()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract setVideoMute(Z)V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopVideo()V
.end method
