.class public Lcom/haima/hmcp/model/VibratorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VibratorModel"

.field private static final VIBRATOR_TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_VIBRATOR_AMPLITUDE:I

.field private final MAX_AMPLITUDE:I

.field private final MAX_X86_AMPLITUDE:I

.field private final MIN_AMPLITUDE:I

.field private final PHONE_VIBRATOR_DEFAULT:Z

.field private final VIBRATOR_CONVERSION:F

.field private phoneVibrator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/haima/hmcp/model/VibratorModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_VIBRATOR"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/haima/hmcp/model/VibratorModel;->VIBRATOR_TAG:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/model/VibratorModel;->MAX_AMPLITUDE:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/haima/hmcp/model/VibratorModel;->MIN_AMPLITUDE:I

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/model/VibratorModel;->DEFAULT_VIBRATOR_AMPLITUDE:I

    .line 14
    .line 15
    const v0, 0xffff

    .line 16
    .line 17
    .line 18
    iput v0, p0, Lcom/haima/hmcp/model/VibratorModel;->MAX_X86_AMPLITUDE:I

    .line 19
    .line 20
    const v0, 0x3b7f00ff

    .line 21
    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/model/VibratorModel;->VIBRATOR_CONVERSION:F

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/haima/hmcp/model/VibratorModel;->PHONE_VIBRATOR_DEFAULT:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/haima/hmcp/model/VibratorModel;->phoneVibrator:Z

    .line 29
    .line 30
    return-void
.end method

.method private isPhoneVibrator()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->hasJoyStick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/model/VibratorModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "has joy stick: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ", phone vibrator: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/haima/hmcp/model/VibratorModel;->phoneVibrator:Z

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/haima/hmcp/model/VibratorModel;->phoneVibrator:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0
.end method

.method private transAmplitude(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const v0, 0x3b7f00ff

    .line 3
    .line 4
    .line 5
    mul-float p1, p1, v0

    .line 6
    .line 7
    float-to-int p1, p1

    .line 8
    const/16 v0, 0xff

    .line 9
    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method


# virtual methods
.method public handleX86Vibrator(Landroid/content/Context;[BILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isSystemAPISupportVibrator()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/model/VibratorModel;->VIBRATOR_TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "handleVibrator failed:SystemAPISupportVibrator is unsupported"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/VibratorModel;->VIBRATOR_TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "handleVibrator "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->parseFrom([B)Lcom/haima/hmcp/proto/GSSDK$XInputMSG;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p1, "XInputMSG is empty."

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "XInputMSG is "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getMsgType()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    if-ne v1, v2, :cond_b

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getUserIndex()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getVendor()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne v1, v2, :cond_2

    .line 92
    .line 93
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;->PS:Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    if-nez v1, :cond_3

    .line 97
    .line 98
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;->XBOX:Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const/4 v1, 0x0

    .line 102
    :goto_0
    move-object v4, v1

    .line 103
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getLeftMotorSpeed()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getRightMotorSpeed()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v1, :cond_6

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/haima/hmcp/model/VibratorModel;->isPhoneVibrator()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    invoke-static {p1}, Lcom/haima/hmcp/utils/VibratorUtil;->stopVibrate(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    const-string p1, "x86, stop phone vibrator"

    .line 127
    .line 128
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    invoke-static {v3, v4, p1, p3, p4}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->stopVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;Landroid/content/Context;ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string p1, "x86, stop joy stick vibrator"

    .line 136
    .line 137
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    const-string p1, "x86, stop vibrator fail, Context is null"

    .line 142
    .line 143
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$XInputMSG;->getDuration()F

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 152
    .line 153
    mul-float p2, p2, v0

    .line 154
    .line 155
    float-to-int v6, p2

    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/VibratorModel;->transAmplitude(I)I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    :goto_1
    move v5, p2

    .line 163
    goto :goto_2

    .line 164
    :cond_7
    if-nez v2, :cond_8

    .line 165
    .line 166
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/VibratorModel;->transAmplitude(I)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/VibratorModel;->transAmplitude(I)I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    goto :goto_1

    .line 176
    :goto_2
    if-eqz p1, :cond_a

    .line 177
    .line 178
    invoke-direct {p0}, Lcom/haima/hmcp/model/VibratorModel;->isPhoneVibrator()Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_9

    .line 183
    .line 184
    invoke-static {p1, v5, v6}, Lcom/haima/hmcp/utils/VibratorUtil;->startVibrate(Landroid/content/Context;II)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/haima/hmcp/model/VibratorModel;->TAG:Ljava/lang/String;

    .line 188
    .line 189
    const-string p2, "x86, phone vibrator"

    .line 190
    .line 191
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    move-object v7, p1

    .line 196
    move v8, p3

    .line 197
    move-object v9, p4

    .line 198
    invoke-static/range {v3 .. v9}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->startVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;IILandroid/content/Context;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Lcom/haima/hmcp/model/VibratorModel;->TAG:Ljava/lang/String;

    .line 202
    .line 203
    const-string p2, "x86, joy stick vibrator"

    .line 204
    .line 205
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    sget-object p1, Lcom/haima/hmcp/model/VibratorModel;->TAG:Ljava/lang/String;

    .line 210
    .line 211
    const-string p2, "x86, vibrator fail, Context is null"

    .line 212
    .line 213
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_3
    return-void
.end method

.method public setConfig(Ljava/util/HashMap;)V
    .locals 3
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
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "x86_phone_vibrator_enable"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    sget-object v0, Lcom/haima/hmcp/model/VibratorModel;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "x86_phone_vibrator_enable = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/haima/hmcp/model/VibratorModel;->phoneVibrator:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "1"

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/haima/hmcp/model/VibratorModel;->phoneVibrator:Z

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method
