.class Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;
.super Lorg/webrtc/haima/HmRtcEnvironment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HmRtcEnvironmentImpl"
.end annotation


# instance fields
.field private final mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapter$Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcEnvironment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p2

    .line 6
    :cond_0
    const-string v0, "user_id"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mUserId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 26
    .line 27
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mUserId:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    return-object p2

    .line 30
    :cond_2
    const-string v0, "dev_id"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 50
    .line 51
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceId:Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    return-object p2

    .line 54
    :cond_4
    const-string v0, "dev_os"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 63
    .line 64
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceOs:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 74
    .line 75
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceOs:Ljava/lang/String;

    .line 76
    .line 77
    :goto_2
    return-object p2

    .line 78
    :cond_6
    const-string v0, "dev_model"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 87
    .line 88
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceModel:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 98
    .line 99
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceModel:Ljava/lang/String;

    .line 100
    .line 101
    :goto_3
    return-object p2

    .line 102
    :cond_8
    const-string v0, "dev_brand"

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 111
    .line 112
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceBrand:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_9
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 122
    .line 123
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceBrand:Ljava/lang/String;

    .line 124
    .line 125
    :goto_4
    return-object p2

    .line 126
    :cond_a
    const-string v0, "dev_resolution"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 135
    .line 136
    iget-object p1, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceResolution:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_b

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_b
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 146
    .line 147
    iget-object p2, p1, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceResolution:Ljava/lang/String;

    .line 148
    .line 149
    :goto_5
    return-object p2

    .line 150
    :cond_c
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;->mConfig:Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 151
    .line 152
    iget-object v0, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mEnvVariableReader:Lorg/webrtc/haima/HmRtcAdapter$EnvVariableReader;

    .line 153
    .line 154
    if-eqz v0, :cond_d

    .line 155
    .line 156
    invoke-interface {v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapter$EnvVariableReader;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_d
    return-object p2
.end method
