.class public Lcom/byazt/cq/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e0,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cq/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public n:Lorg/json/JSONObject;

.field public sp:Lcom/byazt/nd/ve;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->tt:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/byazt/cq/tt$c;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p2, p0, Lcom/byazt/cq/tt$c;->c:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->uj:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 7
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->ve:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cq/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/cq/tt$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/cq/tt$c;->c:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/cq/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->x:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/cq/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/cq/tt$c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/cq/tt$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->n:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/cq/tt$c;)Lcom/byazt/nd/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cq/tt$c;->sp:Lcom/byazt/nd/ve;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/nd/ve;)Lcom/byazt/cq/tt$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->sp:Lcom/byazt/nd/ve;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/cq/tt$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/cq/tt$c;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->a:Ljava/util/Map;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->n:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c()Lcom/byazt/cq/tt;
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/cq/tt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/cq/tt;-><init>(Lcom/byazt/cq/tt$c;Lcom/byazt/cq/tt$1;)V

    return-object v0
.end method

.method public tt(Lorg/json/JSONObject;)Lcom/byazt/cq/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cq/tt$c;->x:Lorg/json/JSONObject;

    return-object p0
.end method
