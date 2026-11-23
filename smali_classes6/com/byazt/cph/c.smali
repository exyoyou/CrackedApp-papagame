.class public Lcom/byazt/cph/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x423,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cph/c$c;
    }
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/lang/String;

.field public n:I

.field public sp:Lorg/json/JSONObject;

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cph/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/cph/c;->uj:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/cph/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/cph/c;->a:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/cph/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cph/c;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/cph/c;->sp:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/cph/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/cph/c;->n:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cph/c;->tt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/cph/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cph/c;->ve:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/cph/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/cph/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/cph/c;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cph/c;->sp:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/cph/c;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/cph/c;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cph/c;->ve:Ljava/lang/String;

    return-object v0
.end method
