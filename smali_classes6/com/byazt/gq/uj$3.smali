.class public Lcom/byazt/gq/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hs/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/uj;->c(Ljava/lang/String;Lcom/byazt/dd/tt;Lcom/byazt/gq/n$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/n$tt;

.field public final synthetic tt:Lcom/byazt/gq/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/uj;Lcom/byazt/gq/n$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/uj$3;->tt:Lcom/byazt/gq/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gq/uj$3;->c:Lcom/byazt/gq/n$tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/uj$3;->tt:Lcom/byazt/gq/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gq/uj;->c(Lcom/byazt/gq/uj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/uj$3;->tt:Lcom/byazt/gq/uj;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/gq/uj;->c(Lcom/byazt/gq/uj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/gq/uj$3;->tt:Lcom/byazt/gq/uj;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/byazt/gq/uj;->c(Lcom/byazt/gq/uj;Ljava/util/Map;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long p1, v0, v2

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    new-instance p1, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-string v2, "apk_size"

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v2, "available_space"

    .line 51
    .line 52
    invoke-static {}, Lcom/byazt/gq/uj;->ve()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/gq/uj$3;->c:Lcom/byazt/gq/n$tt;

    .line 69
    .line 70
    invoke-interface {p1, v0, v1}, Lcom/byazt/gq/n$tt;->c(J)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
