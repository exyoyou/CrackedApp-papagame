.class public Lcom/byazt/oj/da$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x313,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oj/da;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/oj/da;


# direct methods
.method public constructor <init>(Lcom/byazt/oj/da;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oj/da$1;->tt:Lcom/byazt/oj/da;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/oj/da$1;->c:I

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

    .line 2
    iget-object p1, p0, Lcom/byazt/oj/da$1;->tt:Lcom/byazt/oj/da;

    invoke-static {p1}, Lcom/byazt/oj/da;->c(Lcom/byazt/oj/da;)Lcom/byazt/oj/da$c;

    move-result-object p1

    iget v0, p0, Lcom/byazt/oj/da$1;->c:I

    invoke-virtual {p1, v0}, Lcom/byazt/oj/da$c;->c(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 2
    return-void
.end method
