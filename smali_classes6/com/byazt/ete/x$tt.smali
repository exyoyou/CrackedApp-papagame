.class public Lcom/byazt/ete/x$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x361
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/x$tt$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/dj/tt;

.field public n:Z

.field public tt:Lorg/json/JSONObject;

.field public uj:I

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method private constructor <init>(Lcom/byazt/ete/x$tt$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/x$tt$c;)Lcom/byazt/dj/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/x$tt;->c:Lcom/byazt/dj/tt;

    .line 4
    invoke-static {p1}, Lcom/byazt/ete/x$tt$c;->tt(Lcom/byazt/ete/x$tt$c;)Lcom/byazt/ete/ic;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/x$tt;->ve:Lcom/byazt/ete/ic;

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/x$tt$c;->ve(Lcom/byazt/ete/x$tt$c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/x$tt;->tt:Lorg/json/JSONObject;

    .line 6
    invoke-static {p1}, Lcom/byazt/ete/x$tt$c;->uj(Lcom/byazt/ete/x$tt$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/x$tt;->uj:I

    .line 7
    invoke-static {p1}, Lcom/byazt/ete/x$tt$c;->n(Lcom/byazt/ete/x$tt$c;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/ete/x$tt;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/ete/x$tt$c;Lcom/byazt/ete/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ete/x$tt;-><init>(Lcom/byazt/ete/x$tt$c;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/dj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/x$tt;->c:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/x$tt;->tt:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/x$tt;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/x$tt;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$tt;->uj:I

    .line 2
    .line 3
    return v0
.end method
