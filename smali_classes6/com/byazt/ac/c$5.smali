.class public Lcom/byazt/ac/c$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ac/c;->md()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/c$5;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ac/c$5;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/ac/c$5;->c:Lcom/byazt/ac/c;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/byazt/ac/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
