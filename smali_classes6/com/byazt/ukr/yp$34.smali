.class public Lcom/byazt/ukr/yp$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x44c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic n:Lcom/byazt/ukr/yp;

.field public final synthetic tt:Z

.field public final synthetic uj:Z

.field public final synthetic ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ZJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$34;->n:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$34;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/ukr/yp$34;->tt:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/ukr/yp$34;->ve:J

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/byazt/ukr/yp$34;->uj:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/ukr/yp$34;->c:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "req_id"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "auth"

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/byazt/ukr/yp$34;->tt:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "duration"

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/byazt/ukr/yp$34;->ve:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "time_out"

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/byazt/ukr/yp$34;->uj:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/byazt/ukr/yp$34;->c:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->C_()Lcom/byazt/ete/q;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const-string v2, "saas_info"

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/byazt/ete/q;->c()Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v1, p0, Lcom/byazt/ukr/yp$34;->c:Lcom/byazt/ete/ic;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "ext"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "auth_time"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method
