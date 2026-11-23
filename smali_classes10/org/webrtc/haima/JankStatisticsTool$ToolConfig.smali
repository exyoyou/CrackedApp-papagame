.class Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/JankStatisticsTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolConfig"
.end annotation


# instance fields
.field private mEnable:Z

.field private mReportDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->parseConfig(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->mEnable:Z

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "enable"

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne p1, v2, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const-string p1, "reportDir"

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-virtual {v1, p1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "|"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string v2, "/"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->mReportDir:Ljava/lang/String;

    .line 58
    .line 59
    :cond_3
    iput-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->mEnable:Z

    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getReportDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->mReportDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$ToolConfig;->mEnable:Z

    .line 2
    .line 3
    return v0
.end method
