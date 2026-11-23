.class public Lcom/byazt/nt/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x570,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nt/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/pop/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic ve:Lcom/byazt/nt/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nt/tt;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nt/tt$2;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private varargs c([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 21
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    const-string v2, "success"

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appad"

    .line 24
    iget-object v2, p0, Lcom/byazt/nt/tt$2;->tt:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 26
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {p1}, Lcom/byazt/nt/tt;->tt(Lcom/byazt/nt/tt;)Lcom/byazt/nt/ve;

    move-result-object p1

    const-string v1, "app_ad_event"

    invoke-interface {p1, v1, v0}, Lcom/byazt/nt/ve;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nt/c;->c(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v1, "idle"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/pop/c;->c()V

    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/byazt/nt/c;->c(Ljava/lang/String;JJ)V

    const-string v1, "status"

    const-string v2, "download_active"

    const-string v3, "total_bytes"

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "current_bytes"

    .line 7
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/byazt/pop/c;->c(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "download_finished"

    const-string v3, "total_bytes"

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "current_bytes"

    .line 13
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/pop/c;->c(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v1, "installed"

    .line 18
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/pop/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;JJ)V

    .line 4
    .line 5
    .line 6
    const-string v1, "status"

    .line 7
    .line 8
    const-string v2, "download_paused"

    .line 9
    .line 10
    const-string v3, "total_bytes"

    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "current_bytes"

    .line 17
    .line 18
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-wide v2, p1

    .line 45
    move-wide v4, p3

    .line 46
    move-object v6, p5

    .line 47
    move-object v7, p6

    .line 48
    invoke-interface/range {v1 .. v7}, Lcom/byazt/pop/c;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;JJ)V

    .line 4
    .line 5
    .line 6
    const-string v1, "status"

    .line 7
    .line 8
    const-string v2, "download_failed"

    .line 9
    .line 10
    const-string v3, "total_bytes"

    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "current_bytes"

    .line 17
    .line 18
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/byazt/nt/tt$2;->c([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt$2;->ve:Lcom/byazt/nt/tt;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/nt/tt;->c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-wide v2, p1

    .line 45
    move-wide v4, p3

    .line 46
    move-object v6, p5

    .line 47
    move-object v7, p6

    .line 48
    invoke-interface/range {v1 .. v7}, Lcom/byazt/pop/c;->ve(JJLjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
