.class public Lcom/byazt/ete/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x1b6
    }
.end annotation


# instance fields
.field public a:I

.field public c:Z

.field public da:I

.field public i:I

.field public m:Z

.field public n:I

.field public sl:Ljava/lang/String;

.field public sp:Z

.field public t:Ljava/lang/String;

.field public tt:I

.field public u:I

.field public uj:I

.field public ve:Z

.field public x:I

.field public yp:Z

.field public z:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ete/lt;->da:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "reward_draw"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x1e

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v4, "max_draw_play_time"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iput v3, p0, Lcom/byazt/ete/lt;->tt:I

    .line 29
    .line 30
    const-string v3, "draw_rewarded_play_time"

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, p0, Lcom/byazt/ete/lt;->uj:I

    .line 37
    .line 38
    const-string v2, "skip_btn_left_style"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, p0, Lcom/byazt/ete/lt;->n:I

    .line 45
    .line 46
    const-string v2, "skip_btn_right_style"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iput v2, p0, Lcom/byazt/ete/lt;->a:I

    .line 53
    .line 54
    const-string v2, "auto_slide"

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iput-boolean v2, p0, Lcom/byazt/ete/lt;->sp:Z

    .line 61
    .line 62
    const-string v2, "show_time_type"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lcom/byazt/ete/lt;->x:I

    .line 69
    .line 70
    const-string v2, "tip_time"

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, p0, Lcom/byazt/ete/lt;->i:I

    .line 77
    .line 78
    const-string v2, "show_type"

    .line 79
    .line 80
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lcom/byazt/ete/lt;->da:I

    .line 85
    .line 86
    const-string v2, "single_max_countdown"

    .line 87
    .line 88
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput-boolean v2, p0, Lcom/byazt/ete/lt;->ve:Z

    .line 93
    .line 94
    const-string v2, "top_template_url"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iput-object v2, p0, Lcom/byazt/ete/lt;->sl:Ljava/lang/String;

    .line 101
    .line 102
    const-string v2, "top_template_md5"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/byazt/ete/lt;->t:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "top_template_timeout"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iput v2, p0, Lcom/byazt/ete/lt;->u:I

    .line 117
    .line 118
    const-string v2, "can_cancel"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iput-boolean v2, p0, Lcom/byazt/ete/lt;->yp:Z

    .line 125
    .line 126
    const-string v2, "init_status_time"

    .line 127
    .line 128
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iput v2, p0, Lcom/byazt/ete/lt;->z:I

    .line 133
    .line 134
    const-string v2, "is_pause_tip_by_express"

    .line 135
    .line 136
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput-boolean v0, p0, Lcom/byazt/ete/lt;->m:Z

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    iput v3, p0, Lcom/byazt/ete/lt;->tt:I

    .line 144
    .line 145
    iput v2, p0, Lcom/byazt/ete/lt;->uj:I

    .line 146
    .line 147
    :goto_0
    const-string v0, "group_info"

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    const-string v0, "group_id"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    xor-int/lit8 p1, p1, 0x1

    .line 166
    .line 167
    iput-boolean p1, p0, Lcom/byazt/ete/lt;->c:Z

    .line 168
    .line 169
    :cond_2
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget-boolean p0, p0, Lcom/byazt/ete/lt;->sp:Z

    .line 10
    .line 11
    return p0
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/lt;->c:Z

    return p0
.end method

.method public static da(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget-boolean p0, p0, Lcom/byazt/ete/lt;->ve:Z

    .line 10
    .line 11
    return p0
.end method

.method public static i(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x19

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/lt;->i:I

    .line 11
    .line 12
    return p0
.end method

.method public static m(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget-boolean p0, p0, Lcom/byazt/ete/lt;->m:Z

    .line 10
    .line 11
    return p0
.end method

.method public static n(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget p0, p0, Lcom/byazt/ete/lt;->a:I

    .line 10
    .line 11
    return p0
.end method

.method private static nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;
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
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xo()Lcom/byazt/ete/lt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static sl(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/lt;->sl:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0xa

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget v0, v0, Lcom/byazt/ete/lt;->x:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-double v2, p0

    .line 24
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    double-to-int p0, v0

    .line 29
    const/16 v0, 0x3c

    .line 30
    .line 31
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static t(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/lt;->t:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/lt;->tt:I

    .line 11
    .line 12
    if-lez p0, :cond_1

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public static u(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget p0, p0, Lcom/byazt/ete/lt;->u:I

    .line 10
    .line 11
    return p0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget p0, p0, Lcom/byazt/ete/lt;->n:I

    .line 10
    .line 11
    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/lt;->uj:I

    .line 11
    .line 12
    if-lez p0, :cond_1

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public static x(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    invoke-static {p0}, Lcom/byazt/ete/lt;->c(Lcom/byazt/ete/ic;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget p0, v0, Lcom/byazt/ete/lt;->da:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    return v1
.end method

.method public static yp(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget-boolean p0, p0, Lcom/byazt/ete/lt;->yp:Z

    .line 10
    .line 11
    return p0
.end method

.method public static z(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/lt;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/ete/lt;

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
    iget p0, p0, Lcom/byazt/ete/lt;->z:I

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "max_draw_play_time"

    .line 2
    iget v2, p0, Lcom/byazt/ete/lt;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "draw_rewarded_play_time"

    .line 3
    iget v2, p0, Lcom/byazt/ete/lt;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "skip_btn_left_style"

    .line 4
    iget v2, p0, Lcom/byazt/ete/lt;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "skip_btn_right_style"

    .line 5
    iget v2, p0, Lcom/byazt/ete/lt;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "auto_slide"

    .line 6
    iget-boolean v2, p0, Lcom/byazt/ete/lt;->sp:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "show_time_type"

    .line 7
    iget v2, p0, Lcom/byazt/ete/lt;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_type"

    .line 8
    iget v2, p0, Lcom/byazt/ete/lt;->da:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "tip_time"

    .line 9
    iget v2, p0, Lcom/byazt/ete/lt;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "single_max_countdown"

    .line 10
    iget-boolean v2, p0, Lcom/byazt/ete/lt;->ve:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "top_template_url"

    .line 11
    iget-object v2, p0, Lcom/byazt/ete/lt;->sl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "top_template_md5"

    .line 12
    iget-object v2, p0, Lcom/byazt/ete/lt;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "top_template_timeout"

    .line 13
    iget v2, p0, Lcom/byazt/ete/lt;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "can_cancel"

    .line 14
    iget-boolean v2, p0, Lcom/byazt/ete/lt;->yp:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "init_status_time"

    .line 15
    iget v2, p0, Lcom/byazt/ete/lt;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_pause_tip_by_express"

    .line 16
    iget-boolean v2, p0, Lcom/byazt/ete/lt;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reward_draw"

    .line 17
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
