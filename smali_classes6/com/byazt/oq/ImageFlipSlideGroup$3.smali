.class public Lcom/byazt/oq/ImageFlipSlideGroup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x762
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/ImageFlipSlideGroup;->c(Lcom/byazt/tm/DynamicImageFlipSlide$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tm/DynamicImageFlipSlide$c;

.field public final synthetic tt:Lcom/byazt/oq/ImageFlipSlideGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/ImageFlipSlideGroup;Lcom/byazt/tm/DynamicImageFlipSlide$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/ImageFlipSlideGroup$3;->tt:Lcom/byazt/oq/ImageFlipSlideGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oq/ImageFlipSlideGroup$3;->c:Lcom/byazt/tm/DynamicImageFlipSlide$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/oq/ImageFlipSlideGroup$3;->tt:Lcom/byazt/oq/ImageFlipSlideGroup;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/oq/ImageFlipSlideGroup;->c:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/oq/ImageFlipSlideGroup$3;->c:Lcom/byazt/tm/DynamicImageFlipSlide$c;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/byazt/tm/DynamicImageFlipSlide$c;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
