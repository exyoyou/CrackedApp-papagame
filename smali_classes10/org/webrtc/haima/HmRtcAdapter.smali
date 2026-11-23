.class public Lorg/webrtc/haima/HmRtcAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmRtcAdapter$InputDataType;,
        Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;,
        Lorg/webrtc/haima/HmRtcAdapter$Configuration;,
        Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;,
        Lorg/webrtc/haima/HmRtcAdapter$EnvVariableReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmRtcAdapter"

.field public static externalAudioAttributes:Landroid/media/AudioAttributes;

.field private static impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field private static loggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

.field private static loggableInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->disconnect()V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setOwner(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private createConcatenatedTurnIceServers([Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-lez v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p1

    .line 11
    if-ge v1, v3, :cond_2

    .line 12
    .line 13
    aget-object v3, p1, v1

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v4, v3, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->url:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v4, v3, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->username:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->password:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ","

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_0
    const-string v3, "\\b(stun|turn)\\b:(.+:\\d+)"

    .line 49
    .line 50
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    aget-object v4, p1, v1

    .line 55
    .line 56
    iget-object v4, v4, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->url:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x2

    .line 73
    if-ne v4, v5, :cond_1

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "turn:"

    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, "?transport=tcp@"

    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    aget-object v0, p1, v1

    .line 101
    .line 102
    iget-object v0, v0, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->username:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, ":"

    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    aget-object v0, p1, v1

    .line 113
    .line 114
    iget-object v0, v0, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;->password:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "tcp turnIceServers: "

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v0
.end method

.method public static enableLogging(Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/Logging;->setEnableLogOutput(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static initLogging(Landroid/content/Context;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "defaultLogPath error:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_debug_mode:Z

    .line 39
    .line 40
    const-string v1, "}"

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    sget-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHmRtcSdkDebugCfg:Lorg/webrtc/haima/HmRtcSdkDebugCfg;

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    new-instance v12, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->isEnableDebugMode()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->isEnableLogcatOutput()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->getDebugLogLevel()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->getDebugLogPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->isEnableSingleThread()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->getMaxBytes()J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->getUploadInterval()J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    move-object v2, v12

    .line 79
    invoke-direct/range {v2 .. v11}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;-><init>(ZZILjava/lang/String;ZJJ)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    new-instance v12, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 84
    .line 85
    const-string p0, "enable:true,level:1,singleThread:false,logcat:false,maxBytes:32768,uploadInterval:5000"

    .line 86
    .line 87
    invoke-direct {v12, p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "debug-mode : enableLog  {"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->ToString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {p0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 120
    .line 121
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getDebugModeTagList()[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {p0, v12, v0, v1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;-><init>(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sput-object p0, Lorg/webrtc/haima/HmRtcAdapter;->loggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_1
    new-instance p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;

    .line 132
    .line 133
    invoke-direct {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->isEnable()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    sget-object v2, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v4, "enable loggable  {"

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->ToString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 172
    .line 173
    invoke-direct {v1, p0, v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;-><init>(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sput-object v1, Lorg/webrtc/haima/HmRtcAdapter;->loggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 180
    .line 181
    const-string v0, "disable loggable"

    .line 182
    .line 183
    invoke-static {p0, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_2
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapter;->loggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 187
    .line 188
    if-eqz p0, :cond_3

    .line 189
    .line 190
    invoke-virtual {p0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->getLevel()Lorg/hmwebrtc/Logging$Severity;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {p0, v0}, Lorg/hmwebrtc/Logging;->injectLoggable(Lorg/hmwebrtc/Loggable;Lorg/hmwebrtc/Logging$Severity;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 199
    .line 200
    const-string v0, "initialized without an injected Loggable, Any existing Loggable will be deleted."

    .line 201
    .line 202
    invoke-static {p0, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Lorg/hmwebrtc/Logging;->deleteInjectedLoggable()V

    .line 206
    .line 207
    .line 208
    :goto_3
    return-void
.end method

.method public static isCountlyEventRecorderCallbackSet()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isCountlyEventRecorderCallbackSet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2

    .line 1
    sput-object p0, Lorg/webrtc/haima/HmRtcAdapter;->externalAudioAttributes:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "setAudioAttributes"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "Not setAudioAttributes"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static setCountlyEventRecorderCallback(Lorg/webrtc/haima/HmCountlyEventRecorderCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setCountlyEventRecorderCallback(Lorg/webrtc/haima/HmCountlyEventRecorderCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setWifiSSIDGetOn(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->setGetWifiSSIDSwitchOn(Z)I

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public SetOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->SetOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public SwitchToCellularConnection(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->SwitchToCellularConnection(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public connectFailedInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->connectFailedInternal(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public createConnect()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->loggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->createConnect(Lorg/hmwebrtc/log/WebrtcLoggableHelp;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->disconnect()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public enableShareStreaming(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->enableShareStreaming(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public initAdapter(Landroid/content/Context;Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;ILandroid/widget/FrameLayout;Lorg/webrtc/haima/HmRtcAdapter$Configuration;)Z
    .locals 19

    move-object/from16 v0, p11

    .line 1
    sget-boolean v1, Lorg/webrtc/haima/HmRtcAdapter;->loggableInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lorg/hmwebrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapter;->initLogging(Landroid/content/Context;)V

    .line 5
    sput-boolean v2, Lorg/webrtc/haima/HmRtcAdapter;->loggableInited:Z

    .line 6
    :cond_1
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    return v4

    :cond_2
    if-nez v0, :cond_3

    return v4

    .line 7
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/webrtc/haima/TrafficStatsHelper;->getUid(Landroid/content/Context;)I

    .line 8
    iget-boolean v1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mGameTypeIsArm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 9
    new-instance v4, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;

    invoke-direct {v4, v0}, Lorg/webrtc/haima/HmRtcAdapter$HmRtcEnvironmentImpl;-><init>(Lorg/webrtc/haima/HmRtcAdapter$Configuration;)V

    .line 10
    sget-object v3, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    iget-object v1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mTurnIceServers:[Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    move-object/from16 v15, p0

    invoke-direct {v15, v1}, Lorg/webrtc/haima/HmRtcAdapter;->createConcatenatedTurnIceServers([Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mSignalServer:Ljava/lang/String;

    iget-object v10, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mRoomId:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-virtual/range {v3 .. v18}, Lorg/webrtc/haima/HmRtcAdapterImpl;->initAdapter(Lorg/webrtc/haima/HmRtcEnvironment;Landroid/content/Context;Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V

    return v2
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isInputChannelEnabled()Z
    .locals 5

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isInputChannelEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "isInputChannelEnabled "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v2
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isPlaying()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isRotationSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isRotationSupported()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isRtcUploadAudioChannelAvailable()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isRtcUploadAudioChannelAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isRtcUploadAudioChannelConfigOn()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 2
    .line 3
    return v0
.end method

.method public onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public registerGSCallback(Lorg/webrtc/haima/listeners/HmGSCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->registerGSCallback(Lorg/webrtc/haima/listeners/HmGSCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public registerProtoUtilsCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->registerProtoUtilsCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public requestKeyFrame()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->requestKeyFrame()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Cannot request key frame - adapter ownership mismatch"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public resetStreamInfo()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->resetStreamInfo()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public sendData([B)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->sendData([B)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->sendText(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public sendToRemoteInput(I[B)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    array-length v0, p2

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->sendToRemoteInput(I[B)I

    .line 29
    .line 30
    .line 31
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return p1

    .line 33
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setGSUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setGSUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setHmPlayerCallback(Lorg/webrtc/haima/HmPlayerCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setHmPlayerCallback(Lorg/webrtc/haima/HmPlayerCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setHmStreamerCallback(Lorg/webrtc/haima/HmStreamerCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setHmStreamerCallback(Lorg/webrtc/haima/HmStreamerCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setInputPingPongMs(I)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setInputPingPongMs(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "isInputChannelEnabled "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public setLongParameter(Ljava/lang/String;J)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setLongParameter(Ljava/lang/String;J)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "setLongParameter "

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v2
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "setParameter "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v2
.end method

.method public setSpeakerMute(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setSpeakerMute(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public startAudioRecorder()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->startAudioRecorder()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public startCameraCapture()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->startCameraCapture()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public stopAudioRecorder()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->stopAudioRecorder()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->stopCameraCapture()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public unRegisterPermissionHandler()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->unRegisterPermissionHandler()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getOwner()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->impl:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    :cond_0
    return v0
.end method
