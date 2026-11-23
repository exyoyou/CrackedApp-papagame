.class public Lcom/byazt/oaq/CycleSkipView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e3,
        0x5a9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oaq/CycleSkipView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oaq/CycleSkipView;


# direct methods
.method public constructor <init>(Lcom/byazt/oaq/CycleSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oaq/CycleSkipView$2;->c:Lcom/byazt/oaq/CycleSkipView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/oaq/CycleSkipView$2;->c:Lcom/byazt/oaq/CycleSkipView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/oaq/CycleSkipView;->c(Lcom/byazt/oaq/CycleSkipView;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/oaq/CycleSkipView$2;->c:Lcom/byazt/oaq/CycleSkipView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/oaq/CycleSkipView;->c(Lcom/byazt/oaq/CycleSkipView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/oaq/CycleSkipView$2;->c:Lcom/byazt/oaq/CycleSkipView;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/byazt/oaq/CycleSkipView;->c(Lcom/byazt/oaq/CycleSkipView;Z)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
