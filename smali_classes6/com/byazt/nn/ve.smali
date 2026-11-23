.class public Lcom/byazt/nn/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fc,
        0x36
    }
.end annotation


# static fields
.field public static c:I = 0x0

.field public static tt:I = 0x1

.field public static ve:I = 0x2


# instance fields
.field public a:Lorg/json/JSONObject;

.field public i:Ljava/lang/String;

.field public n:J

.field public sp:I

.field public uj:I

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/byazt/nn/ve;->c:I

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/nn/ve;->uj:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/byazt/nn/ve;->n:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/byazt/nn/ve;->a:Lorg/json/JSONObject;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/byazt/nn/ve;->sp:I

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/nn/ve;->x:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/nn/ve;->i:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/nn/ve;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nn/ve;->uj:I

    return-object p0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nn/ve;->uj:I

    sget v1, Lcom/byazt/nn/ve;->tt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nn/ve;->sp:I

    return v0
.end method

.method public tt(I)Lcom/byazt/nn/ve;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nn/ve;->sp:I

    return-object p0
.end method
