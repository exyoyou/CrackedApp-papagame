.class public Lcom/byazt/ukr/yp$16;
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
        0x476
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(JLcom/byazt/whk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/whk/n;

.field public final synthetic ve:Lcom/byazt/ukr/yp;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;JLcom/byazt/whk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$16;->ve:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ukr/yp$16;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/ukr/yp$16;->tt:Lcom/byazt/whk/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    const-string v1, "duration"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/byazt/ukr/yp$16;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/eo;->tt()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "ext_plugin_code"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/ukr/yp$16;->tt:Lcom/byazt/whk/n;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/byazt/whk/n;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "success"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/ukr/yp$16;->tt:Lcom/byazt/whk/n;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/byazt/whk/n;->tt()Lcom/byazt/whk/sp;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v2, "msg"

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/byazt/whk/sp;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v2, "code"

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/byazt/whk/sp;->c()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "pitaya_init"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
