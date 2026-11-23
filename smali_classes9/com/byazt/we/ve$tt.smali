.class public final Lcom/byazt/we/ve$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/android/live/base/api/ILiveInitCallback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x394,
        0x21f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/we/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "tt"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/we/ve;


# direct methods
.method private constructor <init>(Lcom/byazt/we/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/we/ve;Lcom/byazt/we/ve$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/we/ve$tt;-><init>(Lcom/byazt/we/ve;)V

    return-void
.end method


# virtual methods
.method public onLiveInitFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "onLiveInitFailed! "

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const-string v1, "TTLiveSDkBridge"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/byazt/bog/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/we/ve;->tt(Lcom/byazt/we/ve;)Lcom/byazt/we/ve$ve;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/we/ve;->tt(Lcom/byazt/we/ve;)Lcom/byazt/we/ve$ve;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, -0x3

    .line 32
    invoke-static {v0, v1, p1, v2}, Lcom/byazt/we/ve$ve;->c(Lcom/byazt/we/ve$ve;ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onLiveInitFinish()V
    .locals 4

    .line 1
    const-string v0, "TTLiveSDkBridge"

    .line 2
    .line 3
    const-string v1, "onLiveInitFinish!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/we/tt;->c()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/we/ve;->tt(Lcom/byazt/we/ve;)Lcom/byazt/we/ve$ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/we/ve;->tt(Lcom/byazt/we/ve;)Lcom/byazt/we/ve$ve;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v2, v1, v3}, Lcom/byazt/we/ve$ve;->c(Lcom/byazt/we/ve$ve;ILjava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/we/ve$tt;->c:Lcom/byazt/we/ve;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/byazt/we/ve;->c(Lcom/byazt/we/ve;Ljava/util/Map;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    return-void
.end method
