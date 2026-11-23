.class public Lcom/byazt/ete/p$c;
.super Lcom/byazt/ete/u;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x88f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/p$c$c;
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/ete/p$c$c;

.field public ve:Lcom/byazt/ete/p$c$c;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/ete/u;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/ete/p$c$c;

    .line 8
    .line 9
    const-string v1, "vertical"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/byazt/ete/p$c$c;-><init>(Lorg/json/JSONObject;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 19
    .line 20
    new-instance v0, Lcom/byazt/ete/p$c$c;

    .line 21
    .line 22
    const-string v1, "horizontal"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lcom/byazt/ete/p$c$c;-><init>(Lorg/json/JSONObject;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/ete/p$c;->ve:Lcom/byazt/ete/p$c$c;

    .line 32
    .line 33
    iput p2, p0, Lcom/byazt/ete/u;->c:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/p$c;->ve:Lcom/byazt/ete/p$c$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/ete/p$c$c;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ete/p$c$c;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public c(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/p$c$c;->c()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/byazt/ete/p$c$c;->c:Ljava/lang/String;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/byazt/ete/p$c;->ve:Lcom/byazt/ete/p$c$c;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/byazt/ete/p$c$c;->c()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/byazt/ete/p$c;->ve:Lcom/byazt/ete/p$c$c;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/byazt/ete/p$c$c;->c:Ljava/lang/String;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/byazt/ete/p$c$c;->c()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/byazt/ete/p$c$c;->c:Ljava/lang/String;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string p1, ""

    .line 49
    .line 50
    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/p$c;->tt:Lcom/byazt/ete/p$c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/ete/p$c$c;->tt:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/p$c;->ve:Lcom/byazt/ete/p$c$c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, v0, Lcom/byazt/ete/p$c$c;->tt:I

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public ve()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
