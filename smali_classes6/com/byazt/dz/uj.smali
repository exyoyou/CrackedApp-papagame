.class public Lcom/byazt/dz/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a,
        0xf
    }
.end annotation


# static fields
.field public static n:Lcom/byazt/dz/uj;


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:I

.field public volatile uj:Lcom/byazt/ak/c;

.field public ve:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dz/uj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/dz/uj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/dz/uj;->n:Lcom/byazt/dz/uj;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/dz/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/dz/uj;->n:Lcom/byazt/dz/uj;

    return-object v0
.end method

.method private tt()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    iput-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    .line 2
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dz/uj;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/nr/c;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, ""

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public c(I)Lcom/byazt/dz/uj;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/byazt/dz/uj;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput p1, p0, Lcom/byazt/dz/uj;->tt:I

    :cond_0
    return-object p0
.end method

.method public c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/byazt/dz/uj;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/byazt/dz/uj;->c:Lcom/byazt/ete/ic;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/byazt/dz/uj;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    const-string v1, "-------fatal----------"

    invoke-interface {v0, p1, v1}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last show rit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/dz/uj;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last show adtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/dz/uj;->tt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    invoke-direct {p0}, Lcom/byazt/dz/uj;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/dz/uj;->uj:Lcom/byazt/ak/c;

    const-string v0, "-------finish----------"

    invoke-interface {p2, p1, v0}, Lcom/byazt/ak/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    invoke-virtual {p1}, Lcom/byazt/zlb/tt;->c()Lcom/byazt/sq/ve$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/sq/ve$c;->c()V

    :cond_1
    return-void
.end method

.method public tt(I)Lcom/byazt/dz/uj;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/byazt/dz/uj;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput p1, p0, Lcom/byazt/dz/uj;->ve:I

    :cond_0
    return-object p0
.end method
