.class public Lcom/byazt/kz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x90,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kz/c$c;,
        Lcom/byazt/kz/c$tt;,
        Lcom/byazt/kz/c$ve;
    }
.end annotation


# instance fields
.field public a:I

.field public c:Lcom/byazt/ete/ic;

.field public n:I

.field public sp:I

.field public tt:Lcom/byazt/el/SSWebView;

.field public uj:I

.field public ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/byazt/el/SSWebView;Landroid/content/Context;ILcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/kz/c;->n:I

    .line 6
    .line 7
    const/4 v0, -0x3

    .line 8
    iput v0, p0, Lcom/byazt/kz/c;->a:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/byazt/kz/c;->sp:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/kz/c;->tt:Lcom/byazt/el/SSWebView;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/byazt/kz/c;->ve:Landroid/content/Context;

    .line 16
    .line 17
    iput p3, p0, Lcom/byazt/kz/c;->uj:I

    .line 18
    .line 19
    iput-object p4, p0, Lcom/byazt/kz/c;->c:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kz/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kz/c;->n:I

    return p0
.end method

.method private c(IJZLjava/lang/String;II)V
    .locals 10

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTWifiObject sendWifiEvent duration:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v3, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   s:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  detailInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " simType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  redirectTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "transmit_TTWifiObject"

    invoke-static {v2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/byazt/kz/c$ve;

    move-object v2, v0

    move v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/byazt/kz/c$ve;-><init>(JIZLjava/lang/String;II)V

    move-object v1, p0

    .line 5
    iget-object v2, v1, Lcom/byazt/kz/c;->c:Lcom/byazt/ete/ic;

    const-string v3, "wifi_auth"

    const-string v4, "click_other"

    invoke-static {v2, v3, v4, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kz/c;IJZLjava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/byazt/kz/c;->c(IJZLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 6

    .line 6
    iget v0, p0, Lcom/byazt/kz/c;->uj:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/byazt/kz/c;->ve:Landroid/content/Context;

    const/4 v3, -0x3

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-static {v2}, Lcom/byazt/fiq/n;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/byazt/fiq/n;->c(Landroid/content/Context;Z)I

    move-result v0

    .line 9
    iput v0, p0, Lcom/byazt/kz/c;->sp:I

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "device_info_new"

    .line 10
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0}, Lcom/byazt/dna/u;->getActiveSimOperatorStr()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string v5, "2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    return v3

    :pswitch_3
    return v2

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    return v4

    :cond_6
    :goto_1
    const/4 v0, -0x2

    return v0

    :cond_7
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getNetOperatorType()I
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getNetOperatorType PhoneNumStatus:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/kz/c;->uj:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "transmit_TTWifiObject"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/kz/c;->c()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    const/4 v2, -0x2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    new-instance v8, Lcom/byazt/kz/c$1;

    .line 37
    .line 38
    const-string v4, "getNetOperatorType"

    .line 39
    .line 40
    move-object v2, v8

    .line 41
    move-object v3, p0

    .line 42
    move v7, v0

    .line 43
    invoke-direct/range {v2 .. v7}, Lcom/byazt/kz/c$1;-><init>(Lcom/byazt/kz/c;Ljava/lang/String;JI)V

    .line 44
    .line 45
    .line 46
    invoke-static {v8}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string v2, "getNetOperatorType type:"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v0
.end method

.method public sendNetworkSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "send_switch PhoneNumStatus:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, v8, Lcom/byazt/kz/c;->uj:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "  params:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "transmit_TTWifiObject"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v14

    .line 38
    iget v1, v8, Lcom/byazt/kz/c;->uj:I

    .line 39
    .line 40
    const-string v18, ""

    .line 41
    .line 42
    if-gtz v1, :cond_2

    .line 43
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    iget v1, v8, Lcom/byazt/kz/c;->sp:I

    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    if-ne v1, v2, :cond_0

    .line 53
    .line 54
    iget-object v1, v8, Lcom/byazt/kz/c;->ve:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/fiq/n;->c(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v1, v2}, Lcom/byazt/fiq/n;->c(Landroid/content/Context;Z)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, v8, Lcom/byazt/kz/c;->sp:I

    .line 67
    .line 68
    :cond_0
    :try_start_0
    const-string v1, "data"

    .line 69
    .line 70
    const-string v2, "\u6ca1\u6709wifi\u7f51\u7edc\u4e0b\u83b7\u53d6\u624b\u673a\u53f7\u6743\u9650"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string v1, "networkType"

    .line 76
    .line 77
    iget v2, v8, Lcom/byazt/kz/c;->sp:I

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    nop

    .line 84
    :goto_0
    iget-object v1, v8, Lcom/byazt/kz/c;->tt:Lcom/byazt/el/SSWebView;

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "javascript:receiveNetworkSwitch("

    .line 91
    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ")"

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Lcom/byazt/nr/yp;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    const/4 v1, -0x1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    sub-long/2addr v2, v14

    .line 116
    const/4 v4, 0x0

    .line 117
    const-string v5, "\u6ca1\u6709wifi\u7f51\u7edc\u4e0b\u83b7\u53d6\u624b\u673a\u53f7\u6743\u9650"

    .line 118
    .line 119
    const/4 v6, -0x1

    .line 120
    iget v7, v8, Lcom/byazt/kz/c;->n:I

    .line 121
    .line 122
    move-object/from16 v0, p0

    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Lcom/byazt/kz/c;->c(IJZLjava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    return-object v18

    .line 128
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "operType"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    const/4 v1, -0x3

    .line 141
    :goto_1
    const/4 v2, 0x3

    .line 142
    const/4 v3, 0x1

    .line 143
    if-eq v1, v3, :cond_3

    .line 144
    .line 145
    const/4 v4, 0x2

    .line 146
    if-eq v1, v4, :cond_3

    .line 147
    .line 148
    if-eq v1, v2, :cond_3

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/kz/c;->c()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    :cond_3
    if-ne v1, v2, :cond_4

    .line 155
    .line 156
    iget v4, v8, Lcom/byazt/kz/c;->a:I

    .line 157
    .line 158
    if-ne v4, v2, :cond_4

    .line 159
    .line 160
    iget v2, v8, Lcom/byazt/kz/c;->n:I

    .line 161
    .line 162
    add-int/2addr v2, v3

    .line 163
    iput v2, v8, Lcom/byazt/kz/c;->n:I

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    iput v3, v8, Lcom/byazt/kz/c;->n:I

    .line 167
    .line 168
    :goto_2
    iput v1, v8, Lcom/byazt/kz/c;->a:I

    .line 169
    .line 170
    new-instance v2, Lcom/byazt/kz/c$tt;

    .line 171
    .line 172
    iget-object v10, v8, Lcom/byazt/kz/c;->tt:Lcom/byazt/el/SSWebView;

    .line 173
    .line 174
    iget-object v11, v8, Lcom/byazt/kz/c;->ve:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v12, v8, Lcom/byazt/kz/c;->c:Lcom/byazt/ete/ic;

    .line 177
    .line 178
    iget v3, v8, Lcom/byazt/kz/c;->n:I

    .line 179
    .line 180
    move-object v9, v2

    .line 181
    move-object/from16 v13, p1

    .line 182
    .line 183
    move/from16 v16, v1

    .line 184
    .line 185
    move/from16 v17, v3

    .line 186
    .line 187
    invoke-direct/range {v9 .. v17}, Lcom/byazt/kz/c$tt;-><init>(Lcom/byazt/el/SSWebView;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;JII)V

    .line 188
    .line 189
    .line 190
    invoke-static {v2}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 191
    .line 192
    .line 193
    return-object v18
.end method
