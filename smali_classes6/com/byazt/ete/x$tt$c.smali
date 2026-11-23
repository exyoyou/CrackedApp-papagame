.class public Lcom/byazt/ete/x$tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xe5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/x$tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/dj/tt;

.field public n:Z

.field public tt:Lorg/json/JSONObject;

.field public uj:I

.field public ve:Lcom/byazt/ete/ic;


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

.method public static synthetic c(Lcom/byazt/ete/x$tt$c;)Lcom/byazt/dj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/x$tt$c;->c:Lcom/byazt/dj/tt;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ete/x$tt$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ete/x$tt$c;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/ete/x$tt$c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/x$tt$c;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ete/x$tt$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/x$tt$c;->uj:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/ete/x$tt$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/x$tt$c;->tt:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/ete/x$tt$c;
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/ete/x$tt$c;->uj:I

    return-object p0
.end method

.method public c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/x$tt$c;->c:Lcom/byazt/dj/tt;

    return-object p0
.end method

.method public c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ete/x$tt$c;->ve:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/ete/x$tt$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/x$tt$c;->tt:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/ete/x$tt$c;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/ete/x$tt$c;->n:Z

    return-object p0
.end method

.method public c()Lcom/byazt/ete/x$tt;
    .locals 2

    .line 7
    new-instance v0, Lcom/byazt/ete/x$tt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/ete/x$tt;-><init>(Lcom/byazt/ete/x$tt$c;Lcom/byazt/ete/x$1;)V

    return-object v0
.end method
