.class public Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/WebrtcLoggableHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private enable:Z

.field private level:I

.field private logPath:Ljava/lang/String;

.field private logcat:Z

.field private maxBytes:J

.field private singleThread:Z

.field private uploadInterval:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load config file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HMRtc-Log-V1.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 4
    invoke-static {v1}, Lorg/hmwebrtc/utils/PathUtils$Inject;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "enable:false,level:2,singleThread:false,logcat:true,logPath:\\sdcard\\hm_rtc_debug\\hm_rtc.log"

    invoke-direct {v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;ZJJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->enable:Z

    .line 8
    iput-boolean p2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logcat:Z

    .line 9
    iput p3, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->level:I

    .line 10
    iput-boolean p5, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->singleThread:Z

    .line 11
    iput-wide p6, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 12
    iput-wide p8, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->uploadInterval:J

    .line 13
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/hmwebrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hm_rtc_debug/log/hm_rtc.log"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    iput-object p4, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$102(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$200(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->singleThread:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->level:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logcat:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->uploadInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 4

    .line 1
    const-string v0, "enable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->enable:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput v1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->level:I

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    iput-object p1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean v1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->singleThread:Z

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 24
    .line 25
    iput-wide v2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->uploadInterval:J

    .line 26
    .line 27
    iput-boolean v1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logcat:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "level"

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {p1, v0, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->level:I

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lorg/hmwebrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, "hm_rtc_debug/log/hm_rtc.log"

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "logPath"

    .line 87
    .line 88
    invoke-virtual {p1, v2, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getPathValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    .line 93
    .line 94
    const-string v0, "singleThread"

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->singleThread:Z

    .line 101
    .line 102
    const-string v0, "logcat"

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logcat:Z

    .line 109
    .line 110
    const-string v0, "maxBytes"

    .line 111
    .line 112
    const-wide/32 v1, 0x989680

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getLongValue(Ljava/lang/String;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    iput-wide v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 120
    .line 121
    const-string v0, "uploadInterval"

    .line 122
    .line 123
    const-wide/16 v1, 0x2710

    .line 124
    .line 125
    invoke-virtual {p1, v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getLongValue(Ljava/lang/String;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iput-wide v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->uploadInterval:J

    .line 130
    .line 131
    :goto_0
    return-void
.end method


# virtual methods
.method public ToString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "enable:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->enable:Z

    .line 17
    .line 18
    const-string v2, "true"

    .line 19
    .line 20
    const-string v3, "false"

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v3

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ",logcat:"

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logcat:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move-object v0, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v0, v3

    .line 54
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ",level:"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->level:I

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ",singleThread:"

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->singleThread:Z

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    move-object v2, v3

    .line 102
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ",maxBytes:"

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-wide v2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->maxBytes:J

    .line 123
    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, ",uploadInterval:"

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-wide v2, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->uploadInterval:J

    .line 145
    .line 146
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ",logPath:"

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->logPath:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/log/WebrtcLoggableHelp$Config;->enable:Z

    .line 2
    .line 3
    return v0
.end method
