.class public Lcom/byazt/wn/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ylx/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a,
        0x3c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wn/x;->callSplashAdSkip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wn/x;


# direct methods
.method public constructor <init>(Lcom/byazt/wn/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wn/x$3;->c:Lcom/byazt/wn/x;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/x$3;->c:Lcom/byazt/wn/x;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wn/x;->c(Lcom/byazt/wn/x;)Lcom/byazt/uj/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getTTAdatperCallback()Lcom/byazt/zq/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/ko/tt;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lcom/byazt/ko/tt;->c(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
