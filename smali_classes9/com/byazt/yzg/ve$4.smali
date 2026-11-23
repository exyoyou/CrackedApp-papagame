.class public Lcom/byazt/yzg/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yzg/ve;->tt(Ljava/lang/String;Lcom/byazt/av/tt;)Lcom/byazt/aas/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/av/tt;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/yzg/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yzg/ve;Lcom/byazt/av/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yzg/ve$4;->c:Lcom/byazt/av/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/yzg/ve$4;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->c:Lcom/byazt/av/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/av/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/yzg/ve;->tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/yzg/ve;->tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/byazt/av/c;->ve()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/yzg/ve;->tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/byazt/av/c;->tt()V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/byazt/yzg/a;->tt:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/byazt/yzg/ve$4;->tt:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/byazt/yzg/ve;->ve(Lcom/byazt/yzg/ve;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "pop_up_download"

    .line 52
    .line 53
    invoke-static {v0, v1, v3, v2}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/yzg/ve$4;->tt:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/byazt/yzg/ve;->ve(Lcom/byazt/yzg/ve;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "pop_up_cancel"

    .line 16
    .line 17
    invoke-static {v0, v1, v3, v2}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/yzg/ve;->tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/yzg/ve$4;->ve:Lcom/byazt/yzg/ve;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/yzg/ve;->tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/byazt/av/c;->tt()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
