.class Lcom/papa91/arc/EmuActivity_psp$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/http/HttpUtils$OnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->restoreAdData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onPostExecute(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "data"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 26
    .line 27
    new-instance v1, Lcom/papa91/arc/bean/AdInfoBean;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/papa91/arc/bean/AdInfoBean;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 33
    .line 34
    const-string v0, "main"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lorg/json/JSONObject;

    .line 41
    .line 42
    const-string v1, "title"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v1, "label"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v1, "pic_remote"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v1, "title_type"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const-string v1, "sub_title"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const-string v1, "ad_switch"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    new-instance v0, Lcom/papa91/arc/bean/MainBean;

    .line 79
    .line 80
    move-object v2, v0

    .line 81
    invoke-direct/range {v2 .. v8}, Lcom/papa91/arc/bean/MainBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/AdInfoBean;->setMain(Lcom/papa91/arc/bean/MainBean;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "sub"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lorg/json/JSONArray;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lorg/json/JSONObject;

    .line 105
    .line 106
    const-string v0, "link_type"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v0, "link_type_val"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v0, "crc_link_type_val"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const-string v0, "jump_type"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    const-string v0, "is_more"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-string v0, "tpl_type"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    new-instance p1, Lcom/papa91/arc/bean/SubBean;

    .line 143
    .line 144
    move-object v1, p1

    .line 145
    invoke-direct/range {v1 .. v7}, Lcom/papa91/arc/bean/SubBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Lcom/papa91/arc/bean/AdInfoBean;->setSub(Lcom/papa91/arc/bean/SubBean;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->showAdView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$11;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$11$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$11$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$11;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
