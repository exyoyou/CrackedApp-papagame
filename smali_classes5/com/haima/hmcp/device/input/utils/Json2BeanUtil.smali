.class public Lcom/haima/hmcp/device/input/utils/Json2BeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "Json2BeanUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseButtonMapContent(Ljava/lang/String;)Lcom/haima/hmcp/beans/ButtonMapContent;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseButtonMapContent data: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Json2BeanUtil"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/haima/hmcp/beans/ButtonMapContent;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ButtonMapContent;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    const-string v0, "defaultMouseMode"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->defaultMouseMode:Z

    .line 41
    .line 42
    const-string v0, "showTips"

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showTips:Z

    .line 49
    .line 50
    const-string v0, "showTipsWindow"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showTipsWindow:Z

    .line 57
    .line 58
    const-string v0, "showMaps"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showMaps:Z

    .line 65
    .line 66
    const-string v0, "isJoypad2Dpad"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->isJoypad2Dpad:Z

    .line 73
    .line 74
    const-string v0, "isKeyoard2Dpad"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->isKeyoard2Dpad:Z

    .line 81
    .line 82
    const-string v0, "version"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->version:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "buttonMappingsList"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->buttonMappingsList:Ljava/util/List;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ge v1, v2, :cond_0

    .line 111
    .line 112
    iget-object v2, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->buttonMappingsList:Ljava/util/List;

    .line 113
    .line 114
    new-instance v3, Lcom/haima/hmcp/beans/ButtonMappings;

    .line 115
    .line 116
    invoke-direct {v3}, Lcom/haima/hmcp/beans/ButtonMappings;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_1

    .line 127
    :catch_1
    move-exception p0

    .line 128
    move-object v4, v0

    .line 129
    move-object v0, p0

    .line 130
    move-object p0, v4

    .line 131
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_0
    return-object p0
.end method
