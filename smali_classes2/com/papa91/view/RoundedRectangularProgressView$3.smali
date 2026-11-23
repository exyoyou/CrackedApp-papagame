.class Lcom/papa91/view/RoundedRectangularProgressView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RoundedRectangularProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/RoundedRectangularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$3;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$3;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$202(Lcom/papa91/view/RoundedRectangularProgressView;J)J

    .line 11
    .line 12
    .line 13
    return-void
.end method
