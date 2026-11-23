.class public Lcom/byazt/un/NativeDrawVideoTsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/pf$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x5af
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeDrawVideoTsView;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/NativeDrawVideoTsView;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeDrawVideoTsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeDrawVideoTsView$2;->c:Lcom/byazt/un/NativeDrawVideoTsView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/un/NativeDrawVideoTsView$2;->c:Lcom/byazt/un/NativeDrawVideoTsView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/byazt/un/NativeDrawVideoTsView$2;->c:Lcom/byazt/un/NativeDrawVideoTsView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/byazt/un/NativeDrawVideoTsView$2;->c:Lcom/byazt/un/NativeDrawVideoTsView;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lcom/byazt/un/NativeVideoTsView;->c(II)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/un/NativeDrawVideoTsView$2;->c:Lcom/byazt/un/NativeDrawVideoTsView;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/un/NativeDrawVideoTsView;->c(Lcom/byazt/un/NativeDrawVideoTsView;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
