.class public Lcom/byazt/pro/ve$3;
.super Lcom/byazt/lsp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pro/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/ve;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/ve$3;->c:Lcom/byazt/pro/ve;

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

    .line 1
    iget-object p1, p0, Lcom/byazt/pro/ve$3;->c:Lcom/byazt/pro/ve;

    invoke-static {p1}, Lcom/byazt/pro/ve;->c(Lcom/byazt/pro/ve;)Lcom/byazt/pro/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pro/uj;->getNativeVideoTsView()Lcom/byazt/un/NativeVideoTsView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/byazt/pro/ve$3;->c:Lcom/byazt/pro/ve;

    invoke-static {p1}, Lcom/byazt/pro/ve;->c(Lcom/byazt/pro/ve;)Lcom/byazt/pro/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pro/uj;->getNativeVideoTsView()Lcom/byazt/un/NativeVideoTsView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/pro/ve$3;->c:Lcom/byazt/pro/ve;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/pro/ve;->c(Lcom/byazt/pro/ve;)Lcom/byazt/pro/uj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/byazt/pro/uj;->getNativeVideoTsView()Lcom/byazt/un/NativeVideoTsView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
