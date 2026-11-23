.class public Lcom/byazt/cj/i$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0xc9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cj/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cj/i$7;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$7;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cj/i$7;->c:Lcom/byazt/cj/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->onPause()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$7;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cj/i$7;->c:Lcom/byazt/cj/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->pauseTimers()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
