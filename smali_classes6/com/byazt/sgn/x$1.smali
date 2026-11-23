.class public Lcom/byazt/sgn/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/x;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/widget/FrameLayout;

.field public final synthetic tt:Lcom/byazt/sgn/x;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/x;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sgn/x$1;->c:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;Z)Z

    .line 2
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    invoke-static {v0}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;)Lcom/byazt/ux/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    invoke-static {v0}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;)Lcom/byazt/ux/sp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;Z)Z

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    invoke-static {v0}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;)Lcom/byazt/ux/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    invoke-static {v0}, Lcom/byazt/sgn/x;->c(Lcom/byazt/sgn/x;)Lcom/byazt/ux/sp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/ux/sp;->c(Lcom/byazt/xj/ve;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/x$1;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->or()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->cu()I

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/sgn/x$1;->tt:Lcom/byazt/sgn/x;

    iget-object v0, p0, Lcom/byazt/sgn/x$1;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
