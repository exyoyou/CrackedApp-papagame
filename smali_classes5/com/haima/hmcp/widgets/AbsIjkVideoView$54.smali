.class synthetic Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$haima$hmcp$device$input$enums$KeyType:[I

.field static final synthetic $SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

.field static final synthetic $SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType:[I

.field static final synthetic $SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->values()[Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->NONE:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType:[I

    .line 21
    .line 22
    sget-object v3, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_STICK_XBOX:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    :try_start_2
    sget-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType:[I

    .line 32
    .line 33
    sget-object v4, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_KEYBOARD:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;->values()[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v3, v3

    .line 46
    new-array v3, v3, [I

    .line 47
    .line 48
    sput-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType:[I

    .line 49
    .line 50
    :try_start_3
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;->GAME_QUIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    .line 58
    :catch_3
    :try_start_4
    sget-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType:[I

    .line 59
    .line 60
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;->GET_CONTROL:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    :try_start_5
    sget-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType:[I

    .line 69
    .line 70
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;->LOST_CONTROL:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GSNotifType;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 77
    .line 78
    :catch_5
    invoke-static {}, Lcom/haima/hmcp/device/input/enums/KeyType;->values()[Lcom/haima/hmcp/device/input/enums/KeyType;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v3, v3

    .line 83
    new-array v3, v3, [I

    .line 84
    .line 85
    sput-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$device$input$enums$KeyType:[I

    .line 86
    .line 87
    :try_start_6
    sget-object v4, Lcom/haima/hmcp/device/input/enums/KeyType;->KEY_BACK:Lcom/haima/hmcp/device/input/enums/KeyType;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 94
    .line 95
    :catch_6
    invoke-static {}, Lcom/haima/hmcp/enums/WsMessageType;->values()[Lcom/haima/hmcp/enums/WsMessageType;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    array-length v3, v3

    .line 100
    new-array v3, v3, [I

    .line 101
    .line 102
    sput-object v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 103
    .line 104
    :try_start_7
    sget-object v4, Lcom/haima/hmcp/enums/WsMessageType;->INTENT_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 111
    .line 112
    :catch_7
    :try_start_8
    sget-object v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 113
    .line 114
    sget-object v3, Lcom/haima/hmcp/enums/WsMessageType;->GPS_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 121
    .line 122
    :catch_8
    :try_start_9
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 123
    .line 124
    sget-object v1, Lcom/haima/hmcp/enums/WsMessageType;->CLIPBOARD_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 131
    .line 132
    :catch_9
    :try_start_a
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 133
    .line 134
    sget-object v1, Lcom/haima/hmcp/enums/WsMessageType;->UPDATE_VIEW_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v2, 0x4

    .line 141
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 142
    .line 143
    :catch_a
    :try_start_b
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 144
    .line 145
    sget-object v1, Lcom/haima/hmcp/enums/WsMessageType;->CAP_SCREEN_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v2, 0x5

    .line 152
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 153
    .line 154
    :catch_b
    :try_start_c
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$54;->$SwitchMap$com$haima$hmcp$enums$WsMessageType:[I

    .line 155
    .line 156
    sget-object v1, Lcom/haima/hmcp/enums/WsMessageType;->MISC_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const/4 v2, 0x6

    .line 163
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 164
    .line 165
    :catch_c
    return-void
.end method
