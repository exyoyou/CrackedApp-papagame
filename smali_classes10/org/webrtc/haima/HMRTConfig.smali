.class public Lorg/webrtc/haima/HMRTConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIELD_NAME_ENABLE:Ljava/lang/String; = "enable"


# instance fields
.field protected mEnable:Z

.field protected mParser:Lorg/hmwebrtc/utils/FiledStringParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p3

    .line 4
    :cond_0
    new-instance p2, Lorg/hmwebrtc/utils/FiledStringParser;

    invoke-direct {p2, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    const-string p1, "enable"

    .line 5
    invoke-virtual {p2, p1, p4}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    return-void
.end method

.method public static getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v4, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p0, v2, v5

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    const-string p0, ""

    .line 37
    .line 38
    :goto_0
    return-object p0
.end method


# virtual methods
.method public ToString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "enable:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "1"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "0"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method getFieldParser()Lorg/hmwebrtc/utils/FiledStringParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method protected loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object p1, p3

    .line 4
    :cond_0
    new-instance p2, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/webrtc/haima/HMRTConfig;->mParser:Lorg/hmwebrtc/utils/FiledStringParser;

    .line 10
    .line 11
    const-string p1, "enable"

    .line 12
    .line 13
    invoke-virtual {p2, p1, p4}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 18
    .line 19
    return-void
.end method

.method protected setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 2
    .line 3
    return-void
.end method
