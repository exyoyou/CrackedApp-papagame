.class public final synthetic Lcom/sigmob/sdk/base/views/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/ah;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/ah;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/e0;->b:Lcom/sigmob/sdk/base/views/ah;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/e0;->b:Lcom/sigmob/sdk/base/views/ah;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/ah;->c(Lcom/sigmob/sdk/base/views/ah;Landroid/animation/ValueAnimator;)V

    return-void
.end method
