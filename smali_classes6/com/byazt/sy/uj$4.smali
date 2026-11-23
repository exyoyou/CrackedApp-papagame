.class public final Lcom/byazt/sy/uj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kyz/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sy/uj;->c([Z[FLcom/byazt/kyz/c;FFD)Lcom/byazt/ete/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/m;

.field public final synthetic n:Lcom/byazt/ete/m;

.field public final synthetic tt:D

.field public final synthetic uj:D

.field public final synthetic ve:D


# direct methods
.method public constructor <init>(Lcom/byazt/ete/m;DDDLcom/byazt/ete/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/uj$4;->c:Lcom/byazt/ete/m;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/sy/uj$4;->tt:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/sy/uj$4;->ve:D

    .line 6
    .line 7
    iput-wide p6, p0, Lcom/byazt/sy/uj$4;->uj:D

    .line 8
    .line 9
    iput-object p8, p0, Lcom/byazt/sy/uj$4;->n:Lcom/byazt/ete/m;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getActualRectJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/uj$4;->n:Lcom/byazt/ete/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/m;->c(Lcom/byazt/ete/m;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getExceedAreaRate()D
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/byazt/sy/uj$4;->tt:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpg-double v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-wide v4, p0, Lcom/byazt/sy/uj$4;->ve:D

    .line 13
    .line 14
    cmpg-double v6, v4, v2

    .line 15
    .line 16
    if-gtz v6, :cond_1

    .line 17
    .line 18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_1
    iget-wide v2, p0, Lcom/byazt/sy/uj$4;->uj:D

    .line 22
    .line 23
    sub-double/2addr v2, v0

    .line 24
    div-double/2addr v2, v0

    .line 25
    return-wide v2
.end method

.method public getMaxRectJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/uj$4;->c:Lcom/byazt/ete/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/m;->c(Lcom/byazt/ete/m;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
