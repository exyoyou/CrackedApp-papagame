.class public Lcom/byazt/cj/i$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0xcf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cj/i;->gu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/el/SSWebView;

.field public final synthetic tt:Lcom/byazt/cj/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cj/i;Lcom/byazt/el/SSWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cj/i$4;->tt:Lcom/byazt/cj/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cj/i$4;->c:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/cj/i$4;->c:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/cj/i$4;->tt:Lcom/byazt/cj/i;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/byazt/cj/i;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
