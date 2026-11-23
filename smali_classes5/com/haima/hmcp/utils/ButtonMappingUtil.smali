.class public Lcom/haima/hmcp/utils/ButtonMappingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_DOWN_TYPE:I = 0x1

.field public static final ACTION_UP_TYPE:I = 0x2

.field public static final BUTTON_DIRECTION:I = 0x3e1

.field public static final BUTTON_DOWN:I = 0x3e4

.field public static final BUTTON_LEFT:I = 0x3e3

.field public static final BUTTON_MOUSE_PRIMARY:I = 0x3de

.field public static final BUTTON_MOUSE_RIGHT:I = 0x3df

.field public static final BUTTON_RIGHT:I = 0x3e2

.field public static final BUTTON_UP:I = 0x3e5

.field public static final DPAD_KEYMAPPING:I = 0x1

.field private static final DpadKeymappingList:[Ljava/lang/String;

.field public static final JOY_KEYMAPPING:I = 0x0

.field private static final JoyKeymappingList:[Ljava/lang/String;

.field public static final KEYBOARD_DIRECTION:I = 0x378

.field public static final KEYBOARD_DOWN_FLAG:Ljava/lang/String; = "1"

.field public static final KEYBOARD_KEYMAPPING:I = 0x2

.field public static final KEYBOARD_UP_FLAG:Ljava/lang/String; = "0"

.field private static TAG:Ljava/lang/String; = "ButtonMappingUtil"

.field public static final TRACK_BALL_L:I = 0x3e7

.field public static final TRACK_BALL_R:I = 0x3e6


# instance fields
.field private fnCodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isDpad2JoypadInBattle:Z

.field private isJoypad2Dpad:Z

.field private isKeyoard2Dpad:Z

.field private keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardFnCodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonMappingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ButtonMappings;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

.field private mCurrentInputMode:I

.field public mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

.field public mSightbBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

.field private mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "buttonX"

    .line 2
    .line 3
    const-string v1, "buttonY"

    .line 4
    .line 5
    const-string v2, "buttonB"

    .line 6
    .line 7
    const-string v3, "buttonA"

    .line 8
    .line 9
    const-string v4, "buttonUp"

    .line 10
    .line 11
    const-string v5, "buttonDown"

    .line 12
    .line 13
    const-string v6, "buttonLeft"

    .line 14
    .line 15
    const-string v7, "buttonRight"

    .line 16
    .line 17
    const-string v8, "buttonL1"

    .line 18
    .line 19
    const-string v9, "buttonL2"

    .line 20
    .line 21
    const-string v10, "buttonR2"

    .line 22
    .line 23
    const-string v11, "buttonR1"

    .line 24
    .line 25
    const-string v12, "trackBallL"

    .line 26
    .line 27
    const-string v13, "trackBallR"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->JoyKeymappingList:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "buttonNum0"

    .line 36
    .line 37
    const-string v2, "buttonNum1"

    .line 38
    .line 39
    const-string v3, "buttonNum2"

    .line 40
    .line 41
    const-string v4, "buttonNum3"

    .line 42
    .line 43
    const-string v5, "buttonNum4"

    .line 44
    .line 45
    const-string v6, "buttonNum5"

    .line 46
    .line 47
    const-string v7, "buttonNum6"

    .line 48
    .line 49
    const-string v8, "buttonNum7"

    .line 50
    .line 51
    const-string v9, "buttonNum8"

    .line 52
    .line 53
    const-string v10, "buttonNum9"

    .line 54
    .line 55
    const-string v11, "buttonCenter"

    .line 56
    .line 57
    const-string v12, "buttonDirection"

    .line 58
    .line 59
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->DpadKeymappingList:[Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isDpad2JoypadInBattle:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 27
    .line 28
    return-void
.end method

.method public static getHmInputOpDirection(Lcom/haima/hmcp/beans/HmInputMappings;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    iget-object p0, p0, Lcom/haima/hmcp/beans/HmInputMappings;->mapping:Ljava/util/HashMap;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x378

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/haima/hmcp/beans/HmInputMappingContent;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 27
    .line 28
    .line 29
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/haima/hmcp/beans/HmInputMappingContent;->posX:D

    .line 32
    .line 33
    double-to-float v1, v1

    .line 34
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/haima/hmcp/beans/HmInputMappingContent;->posY:D

    .line 37
    .line 38
    double-to-float p0, v1

    .line 39
    iput p0, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 40
    .line 41
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getHmInputOpMappings(Ljava/lang/String;)Lcom/haima/hmcp/beans/HmInputMappings;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lcom/haima/hmcp/beans/HmInputMappings;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/beans/HmInputMappings;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    const-string v2, "version"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/haima/hmcp/beans/HmInputMappings;->version:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "mappingName"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/haima/hmcp/beans/HmInputMappings;->mappingName:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "view_move_offset"

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, p0, Lcom/haima/hmcp/beans/HmInputMappings;->viewMoveOffset:D

    .line 37
    .line 38
    const-string v0, "mapping"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/haima/hmcp/beans/HmInputMappings;->mapping:Ljava/util/HashMap;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    new-instance v3, Lcom/haima/hmcp/beans/HmInputMappingContent;

    .line 74
    .line 75
    invoke-direct {v3}, Lcom/haima/hmcp/beans/HmInputMappingContent;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "buttonName"

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->buttonName:Ljava/lang/String;

    .line 85
    .line 86
    const-string v4, "value"

    .line 87
    .line 88
    const/4 v5, -0x1

    .line 89
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iput v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->value:I

    .line 94
    .line 95
    const-string v4, "pos_x"

    .line 96
    .line 97
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 98
    .line 99
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    iput-wide v7, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->posX:D

    .line 104
    .line 105
    const-string v4, "pos_y"

    .line 106
    .line 107
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    iput-wide v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->posY:D

    .line 112
    .line 113
    const-string v4, "type"

    .line 114
    .line 115
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iput v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->type:I

    .line 120
    .line 121
    const-string v4, "direction"

    .line 122
    .line 123
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iput v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->direction:I

    .line 128
    .line 129
    const-string v4, "viewState"

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->viewState:I

    .line 136
    .line 137
    iget-object v2, p0, Lcom/haima/hmcp/beans/HmInputMappings;->mapping:Ljava/util/HashMap;

    .line 138
    .line 139
    iget v4, v3, Lcom/haima/hmcp/beans/HmInputMappingContent;->value:I

    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .line 147
    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception p0

    .line 154
    move-object v9, v0

    .line 155
    move-object v0, p0

    .line 156
    move-object p0, v9

    .line 157
    :goto_2
    sget-object v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "HmInputOp-->getHmInputMappings: parse error = "

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :cond_1
    return-object p0
.end method

.method public static isCrossKey(I)Z
    .locals 1

    const/16 v0, 0x3e5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private parseJoypadJson(Ljava/lang/String;)Lcom/haima/hmcp/beans/Joypad;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/haima/hmcp/beans/Joypad;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/haima/hmcp/beans/Joypad;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "battlePlayer"

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, p1, Lcom/haima/hmcp/beans/Joypad;->battlePlayer:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-lt v2, v4, :cond_1

    .line 38
    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    :cond_1
    iput v3, p1, Lcom/haima/hmcp/beans/Joypad;->battlePlayer:I

    .line 42
    .line 43
    :cond_2
    const-string v2, "isCrossDirection"

    .line 44
    .line 45
    const-string v3, "false"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput-boolean v2, p1, Lcom/haima/hmcp/beans/Joypad;->isCrossDirection:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    const-string v2, "hatXDown"

    .line 60
    .line 61
    const/16 v3, -0x3e7

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, p1, Lcom/haima/hmcp/beans/Joypad;->hatXDown:F

    .line 76
    .line 77
    const-string v2, "hatYDown"

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, p1, Lcom/haima/hmcp/beans/Joypad;->hatYDown:F

    .line 92
    .line 93
    const-string v2, "hatXUp"

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, p1, Lcom/haima/hmcp/beans/Joypad;->hatXUp:F

    .line 108
    .line 109
    const-string v2, "hatYUp"

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p1, Lcom/haima/hmcp/beans/Joypad;->hatYUp:F

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const-string v2, "keyEvent"

    .line 127
    .line 128
    const-string v3, ""

    .line 129
    .line 130
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p1, Lcom/haima/hmcp/beans/Joypad;->keyCodeEvent:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    :goto_0
    move-object v1, p1

    .line 137
    :catch_0
    return-object v1
.end method

.method private putButtonMapping(Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x3e8

    .line 4
    .line 5
    iget v1, p1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpad2JoypadMappingData(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "tv_battle->"

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq p1, v3, :cond_0

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p3, "get dpad mapping joypad fail, cause actionType not access: "

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_0
    if-eqz p2, :cond_12

    .line 49
    .line 50
    iget-object v4, p2, Lcom/haima/hmcp/beans/PointCoord;->joypad:Lcom/haima/hmcp/beans/Joypad;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :cond_1
    const/4 v5, 0x0

    .line 57
    if-eq p3, v3, :cond_3

    .line 58
    .line 59
    if-ne p3, v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 65
    :goto_1
    if-nez v0, :cond_4

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string p2, "get dpad mapping joypad fail, cause is not battle player: "

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_4
    iget v0, v4, Lcom/haima/hmcp/beans/Joypad;->battlePlayer:I

    .line 106
    .line 107
    const/4 v6, 0x3

    .line 108
    if-ne v0, v6, :cond_5

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const/4 v6, 0x0

    .line 113
    :goto_2
    if-nez v6, :cond_6

    .line 114
    .line 115
    if-eq v0, p3, :cond_6

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string p3, "get dpad mapping joypad fail, cause the battle player is not mapping: "

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_6
    iget-boolean p3, v4, Lcom/haima/hmcp/beans/Joypad;->isCrossDirection:Z

    .line 156
    .line 157
    if-eqz p3, :cond_f

    .line 158
    .line 159
    if-ne p1, v3, :cond_7

    .line 160
    .line 161
    iget p2, v4, Lcom/haima/hmcp/beans/Joypad;->hatXDown:F

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    iget p2, v4, Lcom/haima/hmcp/beans/Joypad;->hatXUp:F

    .line 165
    .line 166
    :goto_3
    if-ne p1, v3, :cond_8

    .line 167
    .line 168
    iget p1, v4, Lcom/haima/hmcp/beans/Joypad;->hatYDown:F

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    iget p1, v4, Lcom/haima/hmcp/beans/Joypad;->hatYUp:F

    .line 172
    .line 173
    :goto_4
    const p3, -0x3b864000    # -999.0f

    .line 174
    .line 175
    .line 176
    cmpl-float v0, p2, p3

    .line 177
    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    cmpl-float p3, p1, p3

    .line 181
    .line 182
    if-nez p3, :cond_9

    .line 183
    .line 184
    goto/16 :goto_7

    .line 185
    .line 186
    :cond_9
    const/high16 p3, -0x40800000    # -1.0f

    .line 187
    .line 188
    cmpg-float v0, p2, p3

    .line 189
    .line 190
    if-ltz v0, :cond_d

    .line 191
    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    .line 193
    .line 194
    cmpl-float v4, p2, v0

    .line 195
    .line 196
    if-lez v4, :cond_a

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_a
    cmpg-float p3, p1, p3

    .line 200
    .line 201
    if-ltz p3, :cond_c

    .line 202
    .line 203
    cmpl-float p3, p1, v0

    .line 204
    .line 205
    if-lez p3, :cond_b

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_b
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 209
    .line 210
    new-array v0, v3, [Ljava/lang/Object;

    .line 211
    .line 212
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    aput-object p2, v0, v5

    .line 217
    .line 218
    const-string p2, "ABS_HAT0X:%.4f"

    .line 219
    .line 220
    invoke-static {p3, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    new-array v0, v3, [Ljava/lang/Object;

    .line 225
    .line 226
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    aput-object p1, v0, v5

    .line 231
    .line 232
    const-string p1, "ABS_HAT0Y:%.4f"

    .line 233
    .line 234
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    goto/16 :goto_9

    .line 243
    .line 244
    :cond_c
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "get dpad mapping joypad fail, hatY is out of range: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 262
    .line 263
    new-instance p3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :cond_d
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string p3, "get dpad mapping joypad fail, hatX is out of range: "

    .line 288
    .line 289
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 300
    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-object v1

    .line 320
    :cond_e
    :goto_7
    new-instance p3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v0, "get dpad mapping joypad fail, hatX or hatY is default value, hatX = "

    .line 326
    .line 327
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p2, ", hatY = "

    .line 334
    .line 335
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    sget-object p2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 346
    .line 347
    new-instance p3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v1

    .line 366
    :cond_f
    iget-object p3, v4, Lcom/haima/hmcp/beans/Joypad;->keyCodeEvent:Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result p3

    .line 372
    if-eqz p3, :cond_10

    .line 373
    .line 374
    sget-object p1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 375
    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string p3, "get dpad mapping joypad fail, keyCodeEvent is empty"

    .line 385
    .line 386
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return-object v1

    .line 397
    :cond_10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    iget-object p2, p2, Lcom/haima/hmcp/beans/PointCoord;->joypad:Lcom/haima/hmcp/beans/Joypad;

    .line 403
    .line 404
    iget-object p2, p2, Lcom/haima/hmcp/beans/Joypad;->keyCodeEvent:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p2, ":"

    .line 410
    .line 411
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    if-ne p1, v3, :cond_11

    .line 415
    .line 416
    const-string p1, "1"

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_11
    const-string p1, "0"

    .line 420
    .line 421
    :goto_8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    filled-new-array {p1}, [Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    :goto_9
    return-object p1

    .line 433
    :cond_12
    :goto_a
    sget-object p1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 434
    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string p3, "get dpad mapping joypad fail, PointCoord or PointCoord.Joypad is null"

    .line 444
    .line 445
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-object v1
.end method

.method public getInputMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :cond_0
    iput v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_8

    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/haima/hmcp/device/input/utils/Json2BeanUtil;->parseButtonMapContent(Ljava/lang/String;)Lcom/haima/hmcp/beans/ButtonMapContent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->buttonMappingsList:Ljava/util/List;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mButtonMappingsList:Ljava/util/List;

    .line 29
    .line 30
    iget-object p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->version:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v0, 0x2

    .line 37
    const/4 v2, 0x5

    .line 38
    if-eqz p2, :cond_5

    .line 39
    .line 40
    iget-object p2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mButtonMappingsList:Ljava/util/List;

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-lez p2, :cond_4

    .line 49
    .line 50
    iget-object p2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mButtonMappingsList:Ljava/util/List;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lcom/haima/hmcp/beans/ButtonMappings;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->isJoypad2Dpad:Z

    .line 64
    .line 65
    if-nez p2, :cond_3

    .line 66
    .line 67
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->isKeyoard2Dpad:Z

    .line 68
    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->isNativeDpadGame()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iput v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    iput v2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 86
    .line 87
    :cond_4
    :goto_1
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->defaultMouseMode:Z

    .line 88
    .line 89
    if-eqz p1, :cond_8

    .line 90
    .line 91
    iput v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->isJoypad2Dpad:Z

    .line 95
    .line 96
    if-nez p2, :cond_7

    .line 97
    .line 98
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->isKeyoard2Dpad:Z

    .line 99
    .line 100
    if-nez p2, :cond_7

    .line 101
    .line 102
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->isNativeDpadGame()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iput v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    :goto_2
    iput v2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 117
    .line 118
    :goto_3
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->defaultMouseMode:Z

    .line 119
    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    iput v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v0, "VolleyManager::parseResponse::"

    .line 135
    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_4
    iget p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentInputMode:I

    .line 154
    .line 155
    return p1
.end method

.method public getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeymappingList(Lorg/json/JSONObject;I)Lorg/json/JSONArray;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "ry"

    .line 8
    .line 9
    const-string v4, "y"

    .line 10
    .line 11
    const-string v5, "x"

    .line 12
    .line 13
    const-string v6, "rx"

    .line 14
    .line 15
    new-instance v7, Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    if-eq v2, v9, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq v2, v0, :cond_0

    .line 28
    .line 29
    return-object v8

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Lorg/json/JSONObject;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-object v7

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v8

    .line 81
    :cond_2
    sget-object v2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->DpadKeymappingList:[Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    sget-object v2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->JoyKeymappingList:[Ljava/lang/String;

    .line 85
    .line 86
    :goto_1
    :try_start_1
    array-length v9, v2

    .line 87
    const/4 v10, 0x0

    .line 88
    :goto_2
    if-ge v10, v9, :cond_6

    .line 89
    .line 90
    aget-object v11, v2, v10

    .line 91
    .line 92
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    new-instance v13, Lorg/json/JSONObject;

    .line 103
    .line 104
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v14, "name"

    .line 108
    .line 109
    invoke-virtual {v13, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    const-wide/16 v14, 0x0

    .line 113
    .line 114
    move/from16 p2, v9

    .line 115
    .line 116
    invoke-virtual {v12, v5, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    invoke-virtual {v13, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v4, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    invoke-virtual {v13, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_4

    .line 135
    .line 136
    invoke-virtual {v12, v6, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v8

    .line 140
    invoke-virtual {v13, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v3, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v8

    .line 147
    invoke-virtual {v13, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    move/from16 p2, v9

    .line 155
    .line 156
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 157
    .line 158
    move/from16 v9, p2

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    goto :goto_2

    .line 162
    :cond_6
    return-object v7

    .line 163
    :catch_1
    move-exception v0

    .line 164
    sget-object v2, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v2, 0x0

    .line 174
    return-object v2
.end method

.method public getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;
    .locals 14

    .line 1
    const-string v0, "y"

    .line 2
    .line 3
    const-string v1, "x"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "version"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->version:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "isJoypad2Dpad"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput-boolean v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad:Z

    .line 38
    .line 39
    const-string v3, "isKeyboard2Dpad"

    .line 40
    .line 41
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iput-boolean v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad:Z

    .line 46
    .line 47
    const-string v3, "isDpad2JoypadInBattle"

    .line 48
    .line 49
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput-boolean v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isDpad2JoypadInBattle:Z

    .line 54
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->fnCodeList:Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->version:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-static {p1}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parseButtonMapContent(Ljava/lang/String;)Lcom/haima/hmcp/beans/ButtonMapContent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMapContent;->buttonMappingsList:Ljava/util/List;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mButtonMappingsList:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mButtonMappingsList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/haima/hmcp/beans/ButtonMappings;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 95
    .line 96
    sget-object p1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "current button mappings: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/ButtonMappings;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 129
    .line 130
    .line 131
    const-string p1, "buttonMappingsList"

    .line 132
    .line 133
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-lez v2, :cond_5

    .line 144
    .line 145
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    const-string v2, "mapping"

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const/4 v2, 0x0

    .line 158
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-ge v2, v3, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v6, Lcom/haima/hmcp/beans/PointCoord;

    .line 169
    .line 170
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 171
    .line 172
    .line 173
    const-wide/16 v7, 0x0

    .line 174
    .line 175
    invoke-virtual {v3, v1, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 176
    .line 177
    .line 178
    move-result-wide v9

    .line 179
    double-to-float v9, v9

    .line 180
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 181
    .line 182
    invoke-virtual {v3, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 183
    .line 184
    .line 185
    move-result-wide v9

    .line 186
    double-to-float v9, v9

    .line 187
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 188
    .line 189
    const-string v9, "keyCode"

    .line 190
    .line 191
    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 196
    .line 197
    const-string v9, "toKeyCode"

    .line 198
    .line 199
    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 204
    .line 205
    const-string v9, "toKeyEvent"

    .line 206
    .line 207
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-direct {p0, v9}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->parseJoypadJson(Ljava/lang/String;)Lcom/haima/hmcp/beans/Joypad;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    iput-object v9, v6, Lcom/haima/hmcp/beans/PointCoord;->joypad:Lcom/haima/hmcp/beans/Joypad;

    .line 216
    .line 217
    const-string v9, "buttonName"

    .line 218
    .line 219
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    iput-object v9, v6, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 224
    .line 225
    const-string v9, "rx"

    .line 226
    .line 227
    invoke-virtual {v3, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 228
    .line 229
    .line 230
    move-result-wide v9

    .line 231
    double-to-float v9, v9

    .line 232
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 233
    .line 234
    const-string v9, "ry"

    .line 235
    .line 236
    invoke-virtual {v3, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v9

    .line 240
    double-to-float v9, v9

    .line 241
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 242
    .line 243
    const-string v9, "sp"

    .line 244
    .line 245
    invoke-virtual {v3, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    double-to-float v9, v9

    .line 250
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 251
    .line 252
    const-string v9, "fnKeyCode"

    .line 253
    .line 254
    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    iput v9, v6, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 259
    .line 260
    if-eqz v9, :cond_2

    .line 261
    .line 262
    iget-object v10, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->fnCodeList:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-nez v9, :cond_2

    .line 273
    .line 274
    iget-object v9, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->fnCodeList:Ljava/util/ArrayList;

    .line 275
    .line 276
    iget v10, v6, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 277
    .line 278
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v9, v6, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 291
    .line 292
    const-string v9, "pointList"

    .line 293
    .line 294
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    if-eqz v3, :cond_3

    .line 299
    .line 300
    const/4 v9, 0x0

    .line 301
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-ge v9, v10, :cond_3

    .line 306
    .line 307
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    new-instance v11, Lcom/haima/hmcp/beans/PointCoord2;

    .line 312
    .line 313
    invoke-direct {v11}, Lcom/haima/hmcp/beans/PointCoord2;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v10, v1, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 317
    .line 318
    .line 319
    move-result-wide v12

    .line 320
    double-to-float v12, v12

    .line 321
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 322
    .line 323
    invoke-virtual {v10, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v12

    .line 327
    double-to-float v12, v12

    .line 328
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 329
    .line 330
    const-string v12, "keyType"

    .line 331
    .line 332
    invoke-virtual {v10, v12, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord2;->keyType:I

    .line 337
    .line 338
    const-string v12, "runTime"

    .line 339
    .line 340
    invoke-virtual {v10, v12, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 345
    .line 346
    const-string v12, "repeatCount"

    .line 347
    .line 348
    invoke-virtual {v10, v12, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    iput v10, v11, Lcom/haima/hmcp/beans/PointCoord2;->repeatCount:I

    .line 353
    .line 354
    iget-object v10, v6, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 355
    .line 356
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    goto :goto_1

    .line 362
    :cond_3
    invoke-direct {p0, v6}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->putButtonMapping(Lcom/haima/hmcp/beans/PointCoord;)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v2, v2, 0x1

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->fnCodeList:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-ge v5, p1, :cond_5

    .line 376
    .line 377
    new-instance p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 378
    .line 379
    invoke-direct {p1}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 380
    .line 381
    .line 382
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->fnCodeList:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/lang/Integer;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    iput v0, p1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    .line 398
    .line 399
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->putButtonMapping(Lcom/haima/hmcp/beans/PointCoord;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .line 401
    .line 402
    add-int/lit8 v5, v5, 0x1

    .line 403
    .line 404
    goto :goto_2

    .line 405
    :catch_0
    move-exception p1

    .line 406
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 412
    .line 413
    .line 414
    :cond_5
    :goto_3
    return-object p0
.end method

.method public initKeyboardMappings(Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "extKeys"

    .line 2
    .line 3
    const-string v1, "keys"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardFnCodeList:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p1, v3

    .line 39
    :goto_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    const-string v0, "fnCode"

    .line 50
    .line 51
    const-string v1, "name"

    .line 52
    .line 53
    const-string v2, "value"

    .line 54
    .line 55
    const-string v4, "pos_y"

    .line 56
    .line 57
    const-string v5, "pos_x"

    .line 58
    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-lez v9, :cond_6

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-ge v9, v10, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    new-instance v11, Lcom/haima/hmcp/beans/PointCoord;

    .line 82
    .line 83
    invoke-direct {v11}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v12

    .line 90
    double-to-float v12, v12

    .line 91
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 92
    .line 93
    invoke-virtual {v10, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v12

    .line 97
    double-to-float v12, v12

    .line 98
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 99
    .line 100
    const-string v12, "w"

    .line 101
    .line 102
    invoke-virtual {v10, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->w:I

    .line 107
    .line 108
    const-string v12, "h"

    .line 109
    .line 110
    invoke-virtual {v10, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->h:I

    .line 115
    .line 116
    invoke-virtual {v10, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-static {v12}, Lcom/haima/hmcp/utils/KeyMapUtil;->passKey2AndroidKeyCode(I)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 125
    .line 126
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    iput-object v12, v11, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 131
    .line 132
    const-string v12, "type"

    .line 133
    .line 134
    invoke-virtual {v10, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    iput v12, v11, Lcom/haima/hmcp/beans/PointCoord;->type:I

    .line 139
    .line 140
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    iput v10, v11, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 145
    .line 146
    iget v12, v11, Lcom/haima/hmcp/beans/PointCoord;->type:I

    .line 147
    .line 148
    const/4 v13, 0x3

    .line 149
    if-ne v12, v13, :cond_2

    .line 150
    .line 151
    iput-object v11, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    const/4 v13, 0x4

    .line 155
    if-ne v12, v13, :cond_3

    .line 156
    .line 157
    iput-object v11, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mSightbBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    if-eqz v10, :cond_4

    .line 161
    .line 162
    iget-object v12, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardFnCodeList:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_4

    .line 173
    .line 174
    iget-object v10, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardFnCodeList:Ljava/util/ArrayList;

    .line 175
    .line 176
    iget v12, v11, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 177
    .line 178
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_4
    iget v10, v11, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 186
    .line 187
    if-lez v10, :cond_5

    .line 188
    .line 189
    iget-object v12, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_6
    if-eqz v3, :cond_9

    .line 203
    .line 204
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-lez p1, :cond_9

    .line 209
    .line 210
    const/4 p1, 0x0

    .line 211
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-ge p1, v9, :cond_9

    .line 216
    .line 217
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    new-instance v10, Lcom/haima/hmcp/beans/PointCoord;

    .line 222
    .line 223
    invoke-direct {v10}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 227
    .line 228
    .line 229
    move-result-wide v11

    .line 230
    double-to-float v11, v11

    .line 231
    iput v11, v10, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 232
    .line 233
    invoke-virtual {v9, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 234
    .line 235
    .line 236
    move-result-wide v11

    .line 237
    double-to-float v11, v11

    .line 238
    iput v11, v10, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 239
    .line 240
    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    invoke-static {v11}, Lcom/haima/hmcp/utils/KeyMapUtil;->passKey2AndroidKeyCode(I)I

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    iput v11, v10, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 249
    .line 250
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    iput-object v11, v10, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    iput v9, v10, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 261
    .line 262
    if-eqz v9, :cond_7

    .line 263
    .line 264
    iget-object v11, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 265
    .line 266
    invoke-static {v9}, Lcom/haima/hmcp/utils/KeyMapUtil;->passKey2AndroidKeyCode(I)I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    mul-int/lit16 v9, v9, 0x3e8

    .line 271
    .line 272
    iget v12, v10, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 273
    .line 274
    add-int/2addr v9, v12

    .line 275
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v9, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 283
    .line 284
    iget v11, v10, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 285
    .line 286
    invoke-static {v11}, Lcom/haima/hmcp/utils/KeyMapUtil;->passKey2AndroidKeyCode(I)I

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    mul-int/lit16 v11, v11, 0x3e8

    .line 291
    .line 292
    iget v12, v10, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 293
    .line 294
    add-int/2addr v11, v12

    .line 295
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    invoke-virtual {v9, v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    new-instance v9, Lcom/haima/hmcp/beans/PointCoord;

    .line 303
    .line 304
    invoke-direct {v9}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 305
    .line 306
    .line 307
    iget v10, v10, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 308
    .line 309
    iput v10, v9, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 310
    .line 311
    const/4 v11, 0x1

    .line 312
    iput-boolean v11, v9, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    .line 313
    .line 314
    iget-object v11, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 315
    .line 316
    invoke-static {v10}, Lcom/haima/hmcp/utils/KeyMapUtil;->passKey2AndroidKeyCode(I)I

    .line 317
    .line 318
    .line 319
    move-result v10

    .line 320
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v11, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_7
    iget v9, v10, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 329
    .line 330
    if-lez v9, :cond_8

    .line 331
    .line 332
    iget-object v11, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 333
    .line 334
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_8
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 342
    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    :cond_9
    sget-object p1, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 346
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string v1, "keyboardEventMap size:"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, " data:"

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :catch_0
    move-exception p1

    .line 389
    sget-object v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->TAG:Ljava/lang/String;

    .line 390
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v2, "initKeyboardMappings JSONException:"

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    :goto_5
    return-void
.end method

.method public isDpad2JoypadInBattle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isDpad2JoypadInBattle:Z

    .line 2
    .line 3
    return v0
.end method

.method public isJoypad2Dpad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad:Z

    .line 2
    .line 3
    return v0
.end method

.method public isKeyoard2Dpad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad:Z

    .line 2
    .line 3
    return v0
.end method
