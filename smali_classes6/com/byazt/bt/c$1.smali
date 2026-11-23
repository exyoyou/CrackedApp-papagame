.class public final Lcom/byazt/bt/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/c;->c(Landroid/content/Context;Lcom/byazt/dna/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/dna/c;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/byazt/dna/c;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/bt/c$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/bt/c$1;->tt:Lcom/byazt/dna/c;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/bt/c$1;->ve:I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/bt/c$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/bt/c$1;->tt:Lcom/byazt/dna/c;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/bt/c;->c(Landroid/content/Context;Lcom/byazt/dna/c;)Lcom/byazt/zuu/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/byazt/bt/c;->c(J)J

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/bt/c;->c(Lcom/byazt/zuu/c;)Lcom/byazt/zuu/c;

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "latitude"

    .line 29
    .line 30
    iget v3, v0, Lcom/byazt/zuu/c;->c:F

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v2, "longitude"

    .line 40
    .line 41
    iget v3, v0, Lcom/byazt/zuu/c;->tt:F

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v2, "lbstime"

    .line 51
    .line 52
    iget-wide v3, v0, Lcom/byazt/zuu/c;->ve:J

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "new_sdk_ad_location"

    .line 66
    .line 67
    iget-object v2, p0, Lcom/byazt/bt/c$1;->tt:Lcom/byazt/dna/c;

    .line 68
    .line 69
    iget v3, p0, Lcom/byazt/bt/c$1;->ve:I

    .line 70
    .line 71
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method
