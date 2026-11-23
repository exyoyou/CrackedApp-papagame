.class Lcom/baidu/mobads/sdk/internal/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IOAdEventListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/cu;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/sdk/internal/cu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/cx;->a:Lcom/baidu/mobads/sdk/internal/cu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "intervalpages"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "bannerseconds"

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "novelrouter"

    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "entry"

    .line 44
    .line 45
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "channelId"

    .line 54
    .line 55
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v5, "contentId"

    .line 64
    .line 65
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    move v6, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x6

    .line 82
    const/4 v6, 0x6

    .line 83
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    move v7, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/16 v0, 0xa

    .line 94
    .line 95
    const/16 v7, 0xa

    .line 96
    .line 97
    :goto_1
    if-eqz v3, :cond_2

    .line 98
    .line 99
    check-cast v3, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    move v9, v0

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    const/4 v0, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    :goto_2
    if-eqz v4, :cond_3

    .line 110
    .line 111
    check-cast v4, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    move v10, v0

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    const/16 v0, 0x3fe

    .line 120
    .line 121
    const/16 v10, 0x3fe

    .line 122
    .line 123
    :goto_3
    if-eqz p1, :cond_4

    .line 124
    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    const/4 p1, 0x0

    .line 129
    :goto_4
    move-object v11, p1

    .line 130
    new-instance p1, Lorg/json/JSONObject;

    .line 131
    .line 132
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/ao;->f()Z

    .line 136
    .line 137
    .line 138
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const-string v1, "status"

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    :try_start_1
    const-string v0, "0"

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_5
    const-string v0, "1"

    .line 150
    .line 151
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    :goto_5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/cx;->a:Lcom/baidu/mobads/sdk/internal/cu;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Lorg/json/JSONObject;)V

    .line 157
    .line 158
    .line 159
    iget-object v5, p0, Lcom/baidu/mobads/sdk/internal/cx;->a:Lcom/baidu/mobads/sdk/internal/cu;

    .line 160
    .line 161
    move-object v8, v2

    .line 162
    check-cast v8, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static/range {v5 .. v11}, Lcom/baidu/mobads/sdk/internal/cu;->a(Lcom/baidu/mobads/sdk/internal/cu;IILjava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_6

    .line 168
    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_6
    return-void
.end method
