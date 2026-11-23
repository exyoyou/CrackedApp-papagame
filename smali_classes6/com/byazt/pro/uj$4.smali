.class public Lcom/byazt/pro/uj$4;
.super Lcom/byazt/lsp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pro/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/uj;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/lsp/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/un/NativeVideoTsView;

    invoke-virtual {p1}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    return-void
.end method

.method public tt(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/byazt/pro/uj$4;->c:Lcom/byazt/pro/uj;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/byazt/pro/uj;->uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/byazt/un/NativeVideoTsView;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
