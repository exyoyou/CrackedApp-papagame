.class public Lcom/byazt/oq/ShakeAnimationView$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x73a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/ShakeAnimationView$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/ShakeAnimationView$1$1;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/ShakeAnimationView$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/ShakeAnimationView$1$1$1;->c:Lcom/byazt/oq/ShakeAnimationView$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/oq/ShakeAnimationView$1$1$1;->c:Lcom/byazt/oq/ShakeAnimationView$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/oq/ShakeAnimationView$1$1;->tt:Lcom/byazt/oq/ShakeAnimationView$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/oq/ShakeAnimationView$1;->c:Lcom/byazt/oq/ShakeAnimationView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/oq/ShakeAnimationView;->c(Lcom/byazt/oq/ShakeAnimationView;)Landroid/widget/ImageView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/oq/ShakeAnimationView$1$1$1;->c:Lcom/byazt/oq/ShakeAnimationView$1$1;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/byazt/oq/ShakeAnimationView$1$1;->c:Landroid/view/animation/RotateAnimation;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
