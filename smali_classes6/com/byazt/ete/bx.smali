.class public Lcom/byazt/ete/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x7e
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:I

.field public da:I

.field public i:I

.field public n:Ljava/lang/String;

.field public sl:I

.field public sp:Ljava/lang/String;

.field public t:I

.field public tt:Ljava/lang/String;

.field public u:Z

.field public uj:I

.field public ve:I

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "live_ad"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/byazt/ete/bx;->u:Z

    .line 17
    .line 18
    const-string v0, "live_show_time"

    .line 19
    .line 20
    const/16 v1, 0x3c

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/byazt/ete/bx;->c(I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "live_author_nickname"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/byazt/ete/bx;->tt:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "live_author_follower_count"

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/byazt/ete/bx;->ve:I

    .line 45
    .line 46
    const-string v0, "live_watch_count"

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/byazt/ete/bx;->uj:I

    .line 53
    .line 54
    const-string v0, "live_description"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/byazt/ete/bx;->n:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "live_feed_url"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/byazt/ete/bx;->a:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "live_cover_image_url"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/byazt/ete/bx;->sp:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, "live_avatar_url"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/byazt/ete/bx;->x:Ljava/lang/String;

    .line 85
    .line 86
    const-string v0, "live_avatar_width"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/byazt/ete/bx;->i:I

    .line 93
    .line 94
    const-string v0, "live_avatar_height"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/byazt/ete/bx;->da:I

    .line 101
    .line 102
    const-string v0, "live_cover_width"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/byazt/ete/bx;->sl:I

    .line 109
    .line 110
    const-string v0, "live_cover_height"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/byazt/ete/bx;->t:I

    .line 117
    .line 118
    :cond_1
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget-object p0, p0, Lcom/byazt/ete/bx;->n:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/bx;->u:Z

    return p0
.end method

.method public static da(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->i:I

    .line 10
    .line 11
    return p0
.end method

.method public static i(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget-object p0, p0, Lcom/byazt/ete/bx;->x:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static n(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->uj:I

    .line 10
    .line 11
    return p0
.end method

.method public static sl(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->da:I

    .line 10
    .line 11
    return p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget-object p0, p0, Lcom/byazt/ete/bx;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static t(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->sl:I

    .line 10
    .line 11
    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->c:I

    .line 10
    .line 11
    return p0
.end method

.method public static u(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->t:I

    .line 10
    .line 11
    return p0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget p0, p0, Lcom/byazt/ete/bx;->ve:I

    .line 10
    .line 11
    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget-object p0, p0, Lcom/byazt/ete/bx;->tt:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static x(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/bx;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;

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
    iget-object p0, p0, Lcom/byazt/ete/bx;->sp:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method private static yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/bx;
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
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->js()Lcom/byazt/ete/bx;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x12c

    if-le p1, v0, :cond_1

    :cond_0
    const/16 p1, 0x3c

    .line 20
    :cond_1
    iput p1, p0, Lcom/byazt/ete/bx;->c:I

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ete/bx;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "live_show_time"

    .line 4
    iget v2, p0, Lcom/byazt/ete/bx;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_author_nickname"

    .line 5
    iget-object v2, p0, Lcom/byazt/ete/bx;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_author_follower_count"

    .line 6
    iget v2, p0, Lcom/byazt/ete/bx;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_watch_count"

    .line 7
    iget v2, p0, Lcom/byazt/ete/bx;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_description"

    .line 8
    iget-object v2, p0, Lcom/byazt/ete/bx;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_feed_url"

    .line 9
    iget-object v2, p0, Lcom/byazt/ete/bx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_cover_image_url"

    .line 10
    iget-object v2, p0, Lcom/byazt/ete/bx;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_avatar_url"

    .line 11
    iget-object v2, p0, Lcom/byazt/ete/bx;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_cover_width"

    .line 12
    iget v2, p0, Lcom/byazt/ete/bx;->sl:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_cover_height"

    .line 13
    iget v2, p0, Lcom/byazt/ete/bx;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_avatar_width"

    .line 14
    iget v2, p0, Lcom/byazt/ete/bx;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "live_avatar_height"

    .line 15
    iget v2, p0, Lcom/byazt/ete/bx;->da:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isValid"

    .line 16
    iget-boolean v2, p0, Lcom/byazt/ete/bx;->u:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "live_ad"

    .line 17
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/bx;->u:Z

    return v0
.end method
