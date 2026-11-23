.class public final Lcom/byazt/hn/tt$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0x207
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hn/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ve"
.end annotation


# instance fields
.field public final a:I

.field public final c:Ljava/lang/String;

.field public final da:Lcom/byazt/hn/tt$tt;

.field public final i:Lcom/byazt/hn/tt$tt;

.field public final n:I

.field public final sp:Lcom/byazt/hn/tt$tt;

.field public final tt:Ljava/lang/String;

.field public final uj:I

.field public final ve:Ljava/lang/String;

.field public final x:Lcom/byazt/hn/tt$tt;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/hn/tt$ve;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/hn/tt$ve;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/hn/tt$ve;->ve:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/hn/tt;->c(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/byazt/hn/tt$ve;->uj:I

    .line 15
    .line 16
    invoke-static {p2}, Lcom/byazt/hn/tt;->tt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/byazt/hn/tt$ve;->n:I

    .line 21
    .line 22
    invoke-static {p3}, Lcom/byazt/hn/tt;->uj(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/byazt/hn/tt$ve;->a:I

    .line 27
    .line 28
    iput-object p4, p0, Lcom/byazt/hn/tt$ve;->sp:Lcom/byazt/hn/tt$tt;

    .line 29
    .line 30
    iput-object p5, p0, Lcom/byazt/hn/tt$ve;->x:Lcom/byazt/hn/tt$tt;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/byazt/hn/tt$ve;->i:Lcom/byazt/hn/tt$tt;

    .line 33
    .line 34
    iput-object p7, p0, Lcom/byazt/hn/tt$ve;->da:Lcom/byazt/hn/tt$tt;

    .line 35
    .line 36
    return-void
.end method

.method private static c()Lcom/byazt/hn/tt$ve;
    .locals 10

    .line 12
    new-instance v8, Lcom/byazt/hn/tt$ve;

    const-string v1, "point"

    const-string v2, "points"

    const-string v3, "unordered"

    new-instance v4, Lcom/byazt/hn/tt$tt;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    new-instance v6, Lcom/byazt/hn/tt$tt;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v5}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    new-instance v7, Lcom/byazt/hn/tt$tt;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v5}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    new-instance v9, Lcom/byazt/hn/tt$tt;

    invoke-direct {v9, v0, v5}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    move-object v0, v8

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/byazt/hn/tt$ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;)V

    return-object v8
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/hn/tt$ve;
    .locals 10

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/byazt/hn/tt$ve;->c()Lcom/byazt/hn/tt$ve;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "emitterShape"

    const-string v1, "point"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "emitterMode"

    const-string v1, "points"

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "renderMode"

    const-string v1, "unordered"

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "emitterPosition"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "x"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    new-instance v6, Lcom/byazt/hn/tt$tt;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    invoke-static {v2, v6}, Lcom/byazt/hn/tt$tt;->c(Ljava/lang/Object;Lcom/byazt/hn/tt$tt;)Lcom/byazt/hn/tt$tt;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v2, "y"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    new-instance v2, Lcom/byazt/hn/tt$tt;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v8}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    invoke-static {v0, v2}, Lcom/byazt/hn/tt$tt;->c(Ljava/lang/Object;Lcom/byazt/hn/tt$tt;)Lcom/byazt/hn/tt$tt;

    move-result-object v7

    const-string v0, "emitterSize"

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "w"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    new-instance v2, Lcom/byazt/hn/tt$tt;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v8}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    invoke-static {v0, v2}, Lcom/byazt/hn/tt$tt;->c(Ljava/lang/Object;Lcom/byazt/hn/tt$tt;)Lcom/byazt/hn/tt$tt;

    move-result-object v0

    if-eqz p0, :cond_4

    const-string v1, "h"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    new-instance p0, Lcom/byazt/hn/tt$tt;

    invoke-direct {p0, v9, v8}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    invoke-static {v1, p0}, Lcom/byazt/hn/tt$tt;->c(Ljava/lang/Object;Lcom/byazt/hn/tt$tt;)Lcom/byazt/hn/tt$tt;

    move-result-object v9

    .line 11
    new-instance p0, Lcom/byazt/hn/tt$ve;

    move-object v2, p0

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/byazt/hn/tt$ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;Lcom/byazt/hn/tt$tt;)V

    return-object p0
.end method
