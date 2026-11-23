.class public Lcom/byazt/jzl/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x626,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jzl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/lang/String;

.field public da:D

.field public i:I

.field public n:I

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:Lorg/json/JSONObject;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/jzl/n$c;->i:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/jzl/n$c;->sl:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/byazt/jzl/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jzl/n$c;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/jzl/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/jzl/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/jzl/n$c;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jzl/n$c;->da:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic n(Lcom/byazt/jzl/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jzl/n$c;->x:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sl(Lcom/byazt/jzl/n$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->t:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/jzl/n$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jzl/n$c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic t(Lcom/byazt/jzl/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/jzl/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/jzl/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jzl/n$c;->n:I

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/jzl/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jzl/n$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/jzl/n$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jzl/n$c;->sp:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(D)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/jzl/n$c;->da:D

    return-object p0
.end method

.method public c(I)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/jzl/n$c;->n:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/jzl/n$c;->a:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/jzl/n$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/jzl/n$c;->t:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c()Lcom/byazt/jzl/n;
    .locals 2

    .line 7
    new-instance v0, Lcom/byazt/jzl/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/jzl/n;-><init>(Lcom/byazt/jzl/n$c;Lcom/byazt/jzl/n$1;)V

    return-object v0
.end method

.method public tt(I)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/jzl/n$c;->sp:I

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/jzl/n$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public uj(I)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/jzl/n$c;->i:I

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/jzl/n$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public ve(I)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/jzl/n$c;->x:I

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/jzl/n$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/jzl/n$c;->tt:Ljava/lang/String;

    return-object p0
.end method
