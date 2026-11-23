.class public Lcom/byazt/dk/i$c;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x40
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/dk/x;

.field public tt:Lcom/byazt/qt/tt;

.field public uj:Z

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method private constructor <init>(Lcom/byazt/dk/x;Z)V
    .locals 5

    .line 1
    const-string v0, "LogTask"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/byazt/dk/i$c;->uj:Z

    .line 9
    .line 10
    if-eqz p1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/byazt/dk/x;->uj()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_6

    .line 17
    .line 18
    iget-object p2, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/byazt/dk/x;->uj()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string v0, "ad_extra_data"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "open_ad_sdk_download_extra"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/byazt/qt/tt;->c(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/dk/x;->tt()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/byazt/qt/tt;->c(Ljava/lang/String;)Lcom/byazt/qt/tt;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/byazt/qt/tt;->tt(Ljava/lang/String;)Lcom/byazt/qt/tt;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/byazt/qt/tt;->c:Lcom/byazt/ete/ic;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/byazt/dk/x;->n()Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    iget-object v2, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 91
    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {p0, v1, v2}, Lcom/byazt/dk/i$c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 107
    .line 108
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Lcom/byazt/ete/ic;->gr(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 116
    .line 117
    const-string v3, "creative_id"

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Lcom/byazt/ete/ic;->gu(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "material_meta"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Lcom/byazt/qt/tt;->c(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    return-void

    .line 148
    :cond_5
    iput-object v0, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Lcom/byazt/qt/tt;->tt(Ljava/lang/String;)Lcom/byazt/qt/tt;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/byazt/dk/x;->tt()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {}, Lcom/byazt/dk/x;->c()Lcom/byazt/dk/x;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2, v0}, Lcom/byazt/dk/x;->c(Ljava/lang/String;)Lcom/byazt/dk/x;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Lcom/byazt/dk/x;->tt(Ljava/lang/String;)Lcom/byazt/dk/x;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Lcom/byazt/dk/x;->c(Lorg/json/JSONObject;)Lcom/byazt/dk/x;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, p2}, Lcom/byazt/dk/x;->tt(Lorg/json/JSONObject;)Lcom/byazt/dk/x;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/byazt/qt/tt;->c:Lcom/byazt/ete/ic;

    .line 190
    .line 191
    iput-object p1, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    :catch_0
    :cond_6
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/dk/x;Z)Lcom/byazt/dk/i$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dk/i$c;

    invoke-direct {v0, p0, p1}, Lcom/byazt/dk/i$c;-><init>(Lcom/byazt/dk/x;Z)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/byazt/dk/i$c;->uj:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/byazt/dk/i;->tt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ad_id"

    .line 2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "req_id"

    .line 4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "creative_id"

    .line 6
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 7
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v9, "origin_req_id"

    .line 8
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v14, 0x0

    cmp-long v9, v4, v14

    if-eqz v9, :cond_2

    cmp-long v9, v4, v6

    if-nez v9, :cond_2

    cmp-long v4, v10, v14

    if-eqz v4, :cond_2

    cmp-long v4, v10, v12

    if-nez v4, :cond_2

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 12
    :cond_1
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/dk/x;->tt()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "pl_LibEventLogger"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "label: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " tag: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, v1, Lcom/byazt/qt/tt;->tt:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/byazt/qt/tt;->tt:Ljava/lang/String;

    .line 58
    .line 59
    :cond_1
    iget-object v1, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qt/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/byazt/dk/x;->tt()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/byazt/dk/x;->uj()Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/byazt/dk/i;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/byazt/dk/i$c;->tt:Lcom/byazt/qt/tt;

    .line 119
    .line 120
    iget-object v1, v1, Lcom/byazt/qt/tt;->tt:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/byazt/dk/x;->tt()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {p0, v2}, Lcom/byazt/dk/i$c;->c(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    iget-object v2, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v3, "click"

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    const-string v2, "open_ad_sdk_download_extra"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string v2, "obm_convert"

    .line 155
    .line 156
    iget-object v3, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 157
    .line 158
    invoke-static {v3}, Lcom/byazt/ete/gt;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/byazt/dk/i$c;->ve:Lcom/byazt/ete/ic;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/byazt/dk/i$c;->c:Lcom/byazt/dk/x;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/byazt/dk/x;->ve()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v2, v1, v3, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method
