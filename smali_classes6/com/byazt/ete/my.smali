.class public Lcom/byazt/ete/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x91
    }
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public da:I

.field public i:Ljava/lang/String;

.field public n:I

.field public sp:Z

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:Ljava/lang/String;


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
    iput v0, p0, Lcom/byazt/ete/my;->tt:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "reward_browse_type"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/byazt/ete/my;->tt:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    if-le v1, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    iput v0, p0, Lcom/byazt/ete/my;->tt:I

    .line 24
    .line 25
    :cond_2
    iget v1, p0, Lcom/byazt/ete/my;->tt:I

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-ne v1, v3, :cond_3

    .line 29
    .line 30
    iput v2, p0, Lcom/byazt/ete/my;->tt:I

    .line 31
    .line 32
    :cond_3
    const-string v1, "direct_landing_page_info"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    const-string v1, "direct_landing_url"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/byazt/ete/my;->c:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "display_duration"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, p0, Lcom/byazt/ete/my;->ve:I

    .line 55
    .line 56
    const-string v1, "close_time"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/byazt/ete/my;->uj:I

    .line 63
    .line 64
    const-string v1, "page_type"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, p0, Lcom/byazt/ete/my;->n:I

    .line 71
    .line 72
    const-string v1, "show_type"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, p0, Lcom/byazt/ete/my;->a:I

    .line 79
    .line 80
    const-string v1, "is_landing_with_sound"

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/byazt/ete/my;->sp:Z

    .line 87
    .line 88
    const-string v0, "reward_browse_banner"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    const-string v1, "ugen_url"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/byazt/ete/my;->x:Ljava/lang/String;

    .line 103
    .line 104
    const-string v1, "ugen_md5"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/byazt/ete/my;->i:Ljava/lang/String;

    .line 111
    .line 112
    :cond_4
    const-string v0, "close_btn_position"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput p1, p0, Lcom/byazt/ete/my;->da:I

    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/byazt/ete/my;->n:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 17
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/my;->da(Lcom/byazt/ete/ic;)I

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/byazt/ete/my;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static da(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->tt:I

    .line 10
    .line 11
    return p0
.end method

.method public static i(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/my;->sp:Z

    .line 10
    .line 11
    return p0
.end method

.method public static m(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->da:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_1
    return v0
.end method

.method public static n(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, v0, Lcom/byazt/ete/my;->n:I

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    .line 13
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    if-eq p0, v2, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x5

    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    return v1
.end method

.method public static nu(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->da:I

    .line 10
    .line 11
    return p0
.end method

.method private static rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;
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
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->pn()Lcom/byazt/ete/my;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static sl(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->ve:I

    .line 10
    .line 11
    if-gez p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    return p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->a:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_1
    return v0
.end method

.method public static t(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->uj:I

    .line 10
    .line 11
    if-gez p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/byazt/ete/my;->i(Lcom/byazt/ete/ic;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static u(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/my;->da(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    return v1
.end method

.method public static uj(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget p0, v0, Lcom/byazt/ete/my;->tt:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p0, v2, :cond_2

    .line 20
    .line 21
    iget p0, v0, Lcom/byazt/ete/my;->n:I

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p0, v0, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    return v1
.end method

.method public static ve(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget v1, p0, Lcom/byazt/ete/my;->tt:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget p0, p0, Lcom/byazt/ete/my;->n:I

    .line 15
    .line 16
    if-ne p0, v2, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    return v0
.end method

.method public static x(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/my;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static yp(Lcom/byazt/ete/ic;)Lcom/byazt/seg/c;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/ete/my;->x:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/byazt/seg/c;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/byazt/seg/c;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/ete/my;->x:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/seg/c;->ve(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/ete/my;->i:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/seg/c;->tt(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/byazt/ete/my;->x:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/byazt/seg/c;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static z(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/my;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/ete/my;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/my;->da:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "reward_browse_type"

    .line 1
    iget v1, p0, Lcom/byazt/ete/my;->tt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "direct_landing_url"

    .line 4
    iget-object v2, p0, Lcom/byazt/ete/my;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "display_duration"

    .line 5
    iget v2, p0, Lcom/byazt/ete/my;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_time"

    .line 6
    iget v2, p0, Lcom/byazt/ete/my;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "page_type"

    .line 7
    iget v2, p0, Lcom/byazt/ete/my;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_type"

    .line 8
    iget v2, p0, Lcom/byazt/ete/my;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "close_btn_position"

    .line 9
    iget v2, p0, Lcom/byazt/ete/my;->da:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_landing_with_sound"

    .line 10
    iget-boolean v2, p0, Lcom/byazt/ete/my;->sp:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ugen_url"

    .line 12
    iget-object v3, p0, Lcom/byazt/ete/my;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ugen_md5"

    .line 13
    iget-object v3, p0, Lcom/byazt/ete/my;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reward_browse_banner"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "direct_landing_page_info"

    .line 15
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
