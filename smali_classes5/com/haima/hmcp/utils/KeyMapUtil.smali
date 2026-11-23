.class public Lcom/haima/hmcp/utils/KeyMapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYCODE_DEL_HAIMA:I = 0x8

.field public static final KEYCODE_ENTER_HAIMA:I = 0xd

.field private static KEY_INTERNAL_CONSUME_SET:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_MAP_LENGTH:I = 0x2

.field private static final KeyMap_androidKeyCode2PASSKey:[I

.field private static final TAG:Ljava/lang/String; = "KeyMapUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x84

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/haima/hmcp/utils/KeyMapUtil;->KeyMap_androidKeyCode2PASSKey:[I

    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/utils/KeyMapUtil$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/haima/hmcp/utils/KeyMapUtil$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/haima/hmcp/utils/KeyMapUtil;->KEY_INTERNAL_CONSUME_SET:Ljava/util/Set;

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3b
        0x10
        0x6f
        0x1b
        0x3d
        0x9
        0x4
        0x9e
        0x42
        0xe8
        0x17
        0xe8
        0x71
        0x11
        0x3
        0x24
        0x15
        0x25
        0x13
        0x26
        0x16
        0x27
        0x14
        0x28
        0x43
        0x8
        0x73
        0x14
        0x8f
        0x90
        0x39
        0x12
        0x7
        0x30
        0x8
        0x31
        0x9
        0x32
        0xa
        0x33
        0xb
        0x34
        0xc
        0x35
        0xd
        0x36
        0xe
        0x37
        0xf
        0x38
        0x10
        0x39
        0x52
        0x1000055
        0x1d
        0x41
        0x1e
        0x42
        0x1f
        0x43
        0x20
        0x44
        0x21
        0x45
        0x22
        0x46
        0x23
        0x47
        0x24
        0x48
        0x25
        0x49
        0x26
        0x4a
        0x27
        0x4b
        0x28
        0x4c
        0x29
        0x4d
        0x2a
        0x4e
        0x2b
        0x4f
        0x2c
        0x50
        0x2d
        0x51
        0x2e
        0x52
        0x2f
        0x53
        0x30
        0x54
        0x31
        0x55
        0x32
        0x56
        0x33
        0x57
        0x34
        0x58
        0x35
        0x59
        0x36
        0x5a
        0x3e
        0x20
        0x4a
        0xba
        0x46
        0xbb
        0x45
        0xbd
        0x38
        0xbe
        0x4c
        0xbf
        0x44
        0xc0
        0x47
        0xdb
        0x49
        0xdc
        0x48
        0xdd
        0x378
        0x378
        -0x2
        -0x2
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static androidKeyCode2PASSKey(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/haima/hmcp/utils/KeyMapUtil;->KeyMap_androidKeyCode2PASSKey:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget v3, v2, v1

    .line 9
    .line 10
    if-ne p0, v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    aget p0, v2, v1

    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v0
.end method

.method private static getDefaultInternalConsumeSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/utils/KeyMapUtil$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/utils/KeyMapUtil$2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static isDirectionKey(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isDpadNumKey(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/KeyMapUtil;->isKeyboardEvent(Landroid/view/KeyEvent;)Z

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
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :pswitch_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isJoyPadKey(I)Z
    .locals 1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isKeyboardEvent(Landroid/view/KeyEvent;)Z
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
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v1, 0x101

    .line 20
    .line 21
    and-int/2addr p0, v1

    .line 22
    if-ne p0, v1, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    return v0
.end method

.method public static isNeedInternalConsume(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/KeyMapUtil;->KEY_INTERNAL_CONSUME_SET:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static parseKeyboardConsumedConfig(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "KeyMapUtil"

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    const-string v1, "x86KeyboardConsumedKeys"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "parseKeyboardConsumedConfig configData is "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v3, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    instance-of v5, v4, Ljava/lang/Integer;

    .line 68
    .line 69
    if-nez v5, :cond_0

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "parseKeyboardConsumedConfig: invalid element type at index "

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ", element: "

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    check-cast v4, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x1

    .line 109
    :goto_1
    if-eqz v2, :cond_2

    .line 110
    .line 111
    sput-object p0, Lcom/haima/hmcp/utils/KeyMapUtil;->KEY_INTERNAL_CONSUME_SET:Ljava/util/Set;

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v2, "parseKeyboardConsumedConfig: successfully updated KEY_INTERNAL_CONSUME_SET with "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p0, " keys"

    .line 131
    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catch_0
    move-exception p0

    .line 144
    const-string v1, "parseKeyboardConsumedConfig: JSON parse error"

    .line 145
    .line 146
    invoke-static {v0, v1, p0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/utils/KeyMapUtil;->getDefaultInternalConsumeSet()Ljava/util/HashSet;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    sput-object p0, Lcom/haima/hmcp/utils/KeyMapUtil;->KEY_INTERNAL_CONSUME_SET:Ljava/util/Set;

    .line 154
    .line 155
    const-string p0, "parseKeyboardConsumedConfig: reset to default values"

    .line 156
    .line 157
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static passKey2AndroidKeyCode(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    sget-object v2, Lcom/haima/hmcp/utils/KeyMapUtil;->KeyMap_androidKeyCode2PASSKey:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget v3, v2, v1

    .line 9
    .line 10
    if-ne p0, v3, :cond_0

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    aget p0, v2, v1

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method
