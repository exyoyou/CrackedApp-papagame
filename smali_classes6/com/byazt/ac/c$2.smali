.class public Lcom/byazt/ac/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/c;
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
    iput-object p1, p0, Lcom/byazt/ac/c$2;->c:Lcom/byazt/ac/c;

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
    iget-object v0, p0, Lcom/byazt/ac/c$2;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c$2;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->pauseTimers()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
