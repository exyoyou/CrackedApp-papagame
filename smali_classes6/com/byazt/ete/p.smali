.class public Lcom/byazt/ete/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x15e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/p$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Z

.field public n:Ljava/lang/String;

.field public tt:Lcom/byazt/ete/ir;

.field public uj:I

.field public ve:Lcom/byazt/ete/p$c;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ete/p;->c:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "use_interact_webview"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/ete/p;->c:Z

    .line 17
    .line 18
    const-string v0, "easy_playable_client"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "components"

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/byazt/ete/ir;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v2, v0, v3}, Lcom/byazt/ete/ir;-><init>(Lorg/json/JSONObject;I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/byazt/ete/p;->tt:Lcom/byazt/ete/ir;

    .line 39
    .line 40
    :cond_1
    const-string v0, "easy_playable"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance v2, Lcom/byazt/ete/p$c;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-direct {v2, v0, v1}, Lcom/byazt/ete/p$c;-><init>(Lorg/json/JSONObject;I)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/byazt/ete/p;->ve:Lcom/byazt/ete/p$c;

    .line 59
    .line 60
    :cond_2
    const-string v0, "style_category"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/byazt/ete/p;->uj:I

    .line 67
    .line 68
    const-string v0, "exp_id"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/byazt/ete/p;->n:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "group_id"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/byazt/ete/p;->a:Ljava/lang/String;

    .line 83
    .line 84
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/byazt/ete/p;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static c()Z
    .locals 3

    .line 2
    sget v0, Lcom/byazt/omf/p;->uj:I

    const/16 v1, 0x18b2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1900

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x1906

    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/p;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/p;->ve(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static n(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/byazt/ete/p;->n:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/byazt/ete/p;->ve:Lcom/byazt/ete/p$c;

    .line 13
    .line 14
    return-object p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/byazt/ete/p;->tt:Lcom/byazt/ete/ir;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/ete/ir;->t()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_2
    return v0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Lcom/byazt/ete/p;->uj:I

    .line 10
    .line 11
    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/byazt/ete/p;->c:Z

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    return v0

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/byazt/ete/p;->ve:Lcom/byazt/ete/p$c;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/byazt/ete/p$c;->a()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_3
    return v0
.end method

.method public static x(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->vt()Lcom/byazt/ete/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/byazt/ete/p;->tt:Lcom/byazt/ete/ir;

    .line 13
    .line 14
    return-object p0
.end method
