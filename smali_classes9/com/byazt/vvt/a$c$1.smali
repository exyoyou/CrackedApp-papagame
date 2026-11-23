.class public Lcom/byazt/vvt/a$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x428
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/a$c;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/vvt/a$c;

.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/ete/x$uj;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/a$c;ILcom/byazt/dj/tt;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/x$uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/a$c$1;->a:Lcom/byazt/vvt/a$c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/vvt/a$c$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/a$c$1;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/a$c$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/vvt/a$c$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/vvt/a$c$1;->n:Lcom/byazt/ete/x$uj;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 3
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
    iget v1, p0, Lcom/byazt/vvt/a$c$1;->c:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "slot_type"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/vvt/a$c$1;->tt:Lcom/byazt/dj/tt;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "rit"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "reason"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/byazt/vvt/a$c$1;->ve:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "reason_value"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/vvt/a$c$1;->uj:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/vvt/a$c$1;->a:Lcom/byazt/vvt/a$c;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/byazt/vvt/a$c;->c(Lcom/byazt/vvt/a$c;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "score"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/vvt/a$c$1;->n:Lcom/byazt/ete/x$uj;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/byazt/ete/x$uj;->uj()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "score_threshold"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "load_score_cache"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method
