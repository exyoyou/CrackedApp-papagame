.class public Lcom/byazt/un/NativeVideoTsView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x3c6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeVideoTsView;->H_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/NativeVideoTsView;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 20
    .line 21
    check-cast v2, Lcom/byazt/un/uj;

    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Lcom/byazt/un/uj;->c(II)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/byazt/un/NativeVideoTsView;->n(Lcom/byazt/un/NativeVideoTsView;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView$4;->c:Lcom/byazt/un/NativeVideoTsView;

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/un/NativeVideoTsView;II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
