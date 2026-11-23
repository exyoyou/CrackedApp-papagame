.class public Lcom/byazt/ete/cu$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xe3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ete/cu$5;->c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ete/cu$5;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/cu$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ete/cu$5$1;->uj:Lcom/byazt/ete/cu$5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ete/cu$5$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ete/cu$5$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ete/cu$5$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    const-string v1, "url"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/ete/cu$5$1;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "sourceFrom"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/ete/cu$5$1;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "extraInfo"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/ete/cu$5$1;->ve:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "stats_net_block_url"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
