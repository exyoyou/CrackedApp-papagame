.class public Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HWDecodeConfig"
.end annotation


# static fields
.field private static final HMRTC_DEFAULT_CONTENT:Ljava/lang/String; = "enable:0,mode:1"

.field private static final HMRTC_KEY_ENAME:Ljava/lang/String; = "HMRTC_HWDecode_V1"


# instance fields
.field public enable:Z

.field public mode:I

.field public tag:Ljava/lang/String;

.field public texAcc:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 5
    .line 6
    const-string v1, "HMRTC_HWDecode_V1.cfg"

    .line 7
    .line 8
    invoke-static {v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "enable:0,mode:1"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "HMRTC_HWDecode_V1 enable:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->enable:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ",mode:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->mode:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ",tex_acc:"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->texAcc:Z

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ",tag:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->tag:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "HMConf"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->tag:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "mode"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->mode:I

    .line 13
    .line 14
    if-gt v1, v2, :cond_0

    .line 15
    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    :cond_0
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->mode:I

    .line 19
    .line 20
    :cond_1
    const-string v1, "enable"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput-boolean v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->enable:Z

    .line 28
    .line 29
    const-string v1, "tag"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->tag:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "tex_acc"

    .line 38
    .line 39
    invoke-virtual {p1, v0, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput-boolean p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$HWDecodeConfig;->texAcc:Z

    .line 44
    .line 45
    return-void
.end method
