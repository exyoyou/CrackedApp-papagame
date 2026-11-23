.class public Lcom/byazt/qx/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x3b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qx/x;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/qx/x;


# direct methods
.method public constructor <init>(Lcom/byazt/qx/x;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qx/x$2;->tt:Lcom/byazt/qx/x;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/qx/x$2;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ZLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {p2}, Lcom/byazt/omf/d;->c(Ljava/util/List;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "creatives"

    .line 13
    .line 14
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string p1, "is_cache"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const-string p1, "prefetch_opt_time"

    .line 25
    .line 26
    iget-wide p2, p0, Lcom/byazt/qx/x$2;->c:J

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/byazt/qx/x$2;->tt:Lcom/byazt/qx/x;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/byazt/qx/x;->c(Lcom/byazt/qx/x;)Lcom/byazt/ete/ic;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/byazt/ab/tt;->ve(Lcom/byazt/ete/ic;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    sub-long/2addr p2, v1

    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/byazt/qx/x$2;->tt:Lcom/byazt/qx/x;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/byazt/qx/x;->c(Lcom/byazt/qx/x;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/byazt/qx/x$2;->tt:Lcom/byazt/qx/x;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/byazt/qx/x;->tt(Lcom/byazt/qx/x;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/byazt/omf/x;->hd()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    const-string p2, "DoGetAdsFromNetwork"

    .line 67
    .line 68
    const-string p3, "onAdLoaded error"

    .line 69
    .line 70
    invoke-static {p2, p3, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
