.class public Lcom/haima/hmcp/beans/GlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalConfig"


# instance fields
.field public configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

.field public mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

.field public mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

.field public rtcSurfaceRendererScreenShotEnable:Z

.field public x86KeyboardMapConfigs:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->rtcSurfaceRendererScreenShotEnable:Z

    .line 6
    .line 7
    return-void
.end method

.method private parseEnable(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->configs:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->configs:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return p2

    .line 35
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-lez p1, :cond_2

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1

    .line 45
    :catch_0
    :catchall_0
    :cond_3
    :goto_1
    return p2
.end method

.method private parseIntValue(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "null"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Failed to parse integer value from: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return p2
.end method

.method private processConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 4
    .line 5
    const-string v2, "config"

    .line 6
    .line 7
    const-string v3, "parse config error: "

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getConfig()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentConfig:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentConfig:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private processFnBtns(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 4
    .line 5
    const-string v2, "fnBtns"

    .line 6
    .line 7
    const-string v3, "parse fnBtns config error: "

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getKeyboardConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getFnBtnsConfig()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentFnBtns:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentFnBtns:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private processKeyboard(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 4
    .line 5
    const-string v2, "keyboard"

    .line 6
    .line 7
    const-string v3, "parse keyboard config error: "

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getKeyboardConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getKeyboardConfig()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentKeyboard:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentKeyboard:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private processMouse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 4
    .line 5
    const-string v2, "mouse"

    .line 6
    .line 7
    const-string v3, "parse mouse config error: "

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getMouseConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getMouseConfig()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentMouse:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentMouse:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private processXbox(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 4
    .line 5
    const-string v2, "xbox"

    .line 6
    .line 7
    const-string v3, "parse xbox config error: "

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getXboxConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->getXboxConfig()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentXbox:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentXbox:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private test()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    const-string v1, "[{\"kT\":6,\"ks\":[{\"c\":7,\"k\":\"WASD\"}],\"n\":\"\",\"p\":{\"h\":320,\"w\":320,\"x\":0.094,\"y\":0.559},\"s\":1.07,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":27,\"k\":\"ESC\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.065},\"s\":0.8,\"sT\":0},{\"kT\":9,\"ks\":[{\"c\":514,\"k\":\"MR\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.91,\"y\":0.704},\"s\":0.98,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"Space\"}],\"n\":\"\u8df3\u8dc3\",\"p\":{\"h\":108,\"w\":108,\"x\":0.793,\"y\":0.855},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":70,\"k\":\"F\"}],\"n\":\"\u4f19\u4f34\u6280\u80fd\",\"p\":{\"h\":108,\"w\":108,\"x\":0.712,\"y\":0.425},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":160,\"k\":\"Shift\"}],\"n\":\"\u5954\u8dd1\",\"p\":{\"h\":108,\"w\":108,\"x\":0.917,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":17,\"k\":\"Ctrl\"}],\"n\":\"\u7ffb\u6eda\",\"p\":{\"h\":108,\"w\":108,\"x\":0.845,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":81,\"k\":\"Q\"}],\"n\":\"\u4e22\u7403\",\"p\":{\"h\":108,\"w\":108,\"x\":0.679,\"y\":0.554},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":69,\"k\":\"E\"}],\"n\":\"\u4e22\u5e15\u9c81\",\"p\":{\"h\":108,\"w\":108,\"x\":0.746,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":50,\"k\":\"2\"}],\"n\":\"\u6362\u5e15\u9c81\u7403\",\"p\":{\"h\":108,\"w\":108,\"x\":0.916,\"y\":0.219},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":82,\"k\":\"R\"}],\"n\":\"\u91cd\u65b0\u88c5\u586b\",\"p\":{\"h\":108,\"w\":108,\"x\":0.845,\"y\":0.219},\"s\":0.81,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":86,\"k\":\"V\"}],\"n\":\"\u5347\u7ea7\",\"p\":{\"h\":108,\"w\":108,\"x\":0.917,\"y\":0.423},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":52,\"k\":\"4\"}],\"n\":\"\u5e15\u9c81\u6307\u793a\",\"p\":{\"h\":108,\"w\":108,\"x\":0.916,\"y\":0.319},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":67,\"k\":\"C\"}],\"n\":\"\u4e0b\u8e72\",\"p\":{\"h\":108,\"w\":108,\"x\":0.716,\"y\":0.854},\"s\":0.8,\"sT\":0},{\"kT\":11,\"ks\":[{\"c\":515,\"k\":\"WU\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.675,\"y\":0.709},\"s\":0.9,\"sT\":0},{\"kT\":12,\"ks\":[{\"c\":515,\"k\":\"WD\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.743,\"y\":0.709},\"s\":0.9,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":77,\"k\":\"M\"}],\"n\":\"\u5730\u56fe\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.319},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":66,\"k\":\"B\"}],\"n\":\"\u5efa\u9020\",\"p\":{\"h\":108,\"w\":108,\"x\":0.102,\"y\":0.318},\"s\":0.8,\"sT\":0},{\"kT\":8,\"ks\":[{\"c\":512,\"k\":\"ML\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.838,\"y\":0.703},\"s\":1,\"sT\":0},{\"kT\":2,\"ks\":[{\"c\":66,\"k\":\"B\"},{\"c\":67,\"k\":\"C\"}],\"n\":\"\u62c6\u9664\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.425},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":9,\"k\":\"Tab\"}],\"n\":\"\u80cc\u530511\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.218},\"s\":0.8,\"sT\":0}]"

    .line 4
    .line 5
    iput-object v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentKeyboard:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB1\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]"

    .line 8
    .line 9
    iput-object v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentXbox:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "{\"default_layout\":\"xbox\",\"xbox_alpha\":1}"

    .line 12
    .line 13
    iput-object v1, v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentConfig:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getImeDigits(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

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
    const-string v0, "ime_digits"

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
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "ime digits config: "

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method public getMouseSlideConfig(Ljava/util/HashMap;Lcom/haima/hmcp/beans/X86TouchConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/beans/X86TouchConfig;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "down_max_distance"

    .line 2
    .line 3
    const-string v1, "left_down_duration"

    .line 4
    .line 5
    const-string v2, "right_down_duration"

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v3, "mouse_slide_mode_extra"

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const-string p1, "=mouseSlideRMode==mouseSlideModeExtra is empty"

    .line 32
    .line 33
    sget-object p2, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const-string p1, "=mouseSlideRMode==mouseSlideModeExtraJson is null"

    .line 46
    .line 47
    sget-object p2, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->isMouseSlideModeRClickModeOn:Z

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/16 v3, 0x1f4

    .line 67
    .line 68
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/GlobalConfig;->parseIntValue(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v2, 0x7d0

    .line 85
    .line 86
    invoke-direct {p0, v1, v2}, Lcom/haima/hmcp/beans/GlobalConfig;->parseIntValue(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 91
    .line 92
    :cond_4
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/16 v0, 0x1e

    .line 103
    .line 104
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->parseIntValue(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->downMaxDistance:I

    .line 109
    .line 110
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v0, "=mouseSlideRMode==x86TouchConfig.downMaxDistance="

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v0, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->downMaxDistance:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, " x86TouchConfig.rightDownDuration="

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v0, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " x86TouchConfig.leftDownDuration="

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget p2, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object p2, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catch_0
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    const-string p2, "x86KeyboardMapConfigs config is invalid"

    .line 158
    .line 159
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_0
    return-void
.end method

.method public getMouseSlideOffset(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "mouse_slide_mode_down_move_distance"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "mouse slide offset config is: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    return v0

    .line 49
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-gtz p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, p1

    .line 57
    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public getMouseSlideTouchTime(Ljava/util/HashMap;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x320

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v2, "mouse_slide_mode_down_duration"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v2, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "mouse slide touch time config is: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    return-wide v0

    .line 49
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    cmp-long p1, v2, v4

    .line 56
    .line 57
    if-gtz p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-wide v0, v2

    .line 61
    :catch_0
    :cond_3
    :goto_0
    return-wide v0
.end method

.method public getScreenOrientationChangeEnable(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "screen_orientation_monitor_enable"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "Screen monitor enable config is: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_1
    return v0
.end method

.method public getScreenOrientationChangeOrderTimeout(Ljava/util/HashMap;)[Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "screen_orientation_order_time_out"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "Screen order timeout config is: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, ","

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    array-length v2, p1

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_0
    if-ge v3, v2, :cond_2

    .line 59
    .line 60
    aget-object v4, p1, v3

    .line 61
    .line 62
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/16 v5, 0x3e8

    .line 67
    .line 68
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    new-array p1, p1, [Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, [Ljava/lang/Integer;

    .line 100
    .line 101
    :cond_3
    return-object v0
.end method

.method public getScreenSlideConfig(Ljava/util/HashMap;)Lcom/haima/hmcp/beans/X86ScreenSlideConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/haima/hmcp/beans/X86ScreenSlideConfig;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const-string v1, "x86_screen_slide_config"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "x86_screen_slide_config getScreenSlideConfig config is: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    :try_start_0
    const-class v1, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;

    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    move-object v0, p1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    sget-object v1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "getScreenSlideConfig config parse exception : "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "getScreenSlideConfig config after parsed is: "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    const-string v2, "null"

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_3
    :goto_2
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    const-string v1, "getScreenSlideConfig tips is empty "

    .line 116
    .line 117
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public getServerImeType(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "ime_type"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    sget-object v1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "ime_typeerror:"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return v0
.end method

.method public getTouchScreenModeClickDelay(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "touch_screen_mode_click_delay"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "x86 touch screen mode click delay config is: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    return v0

    .line 48
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_2
    :goto_1
    return v0
.end method

.method public getTouchUpPolicy(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "touch_up_policy"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "touch up policy config value : "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-lt p1, v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-le p1, v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v0, p1

    .line 58
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public getVirtualKeyViewEnable()Z
    .locals 2

    .line 1
    const-string v0, "is_virtual_keyboard_visible"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/beans/GlobalConfig;->parseEnable(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public getX86KeyMapContentConfig(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
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
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p2, "x86_key_map_content_config"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "x86_key_map_content_mouse"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "x86_key_map_content_xbox"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "x86_key_map_content_keyboard"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, "x86_key_map_content_fnBtns"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    new-instance v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 60
    .line 61
    :cond_1
    iget-object v4, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iput-object p2, v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentConfig:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v0, v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentMouse:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v1, v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentXbox:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v2, v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentKeyboard:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v3, v4, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentFnBtns:Ljava/lang/String;

    .line 72
    .line 73
    const-string p2, "x86_key_map_content_large_screen_config"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "x86_key_map_content_large_screen_mouse"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    const-string v1, "x86_key_map_content_large_screen_xbox"

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    const-string v2, "x86_key_map_content_large_screen_keyboard"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/String;

    .line 104
    .line 105
    const-string v3, "x86_key_map_content_large_screen_fnBtns"

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 114
    .line 115
    iput-object p2, v3, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentLargeScreenConfig:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v0, v3, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentLargeScreenMouse:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v1, v3, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentLargeScreenXbox:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v2, v3, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentLargeScreenKeyboard:Ljava/lang/String;

    .line 122
    .line 123
    iput-object p1, v3, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->x86KeyMapContentLargeScreenFnBtns:Ljava/lang/String;

    .line 124
    .line 125
    :cond_2
    :goto_0
    return-void
.end method

.method public getX86VirtualLayoutConfig(Ljava/util/HashMap;Landroid/content/Context;Ljava/lang/String;)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getX86VirtualLayoutConfigStr(Ljava/util/HashMap;Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/beans/GlobalConfig;->mergeConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1, p3, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->loadingLayoutFromJson(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public mergeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mergeConfig begin configJsonStr="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "\n"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "mergeConfig parse error: "

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->processConfig(Lcom/alibaba/fastjson/JSONObject;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->processMouse(Lcom/alibaba/fastjson/JSONObject;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->processXbox(Lcom/alibaba/fastjson/JSONObject;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->processKeyboard(Lcom/alibaba/fastjson/JSONObject;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/GlobalConfig;->processFnBtns(Lcom/alibaba/fastjson/JSONObject;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "mergeConfig end configJsonStr="

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object p1
.end method

.method public parseClientImeTypeEnable(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "client_ime_type_enable"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "client_ime_type-> enable: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string v0, "1"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "client_ime_type-> client_ime_type_enable is not config"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_0
    return p1
.end method

.method public parseGamepadMappingConfig(Ljava/util/HashMap;)V
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
    if-eqz p1, :cond_3

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
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "x86_keyboard_mapper_gamepad"

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
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "x86_keyboard_mapper_gamepad getGamepadMappingConfig config is: "

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string p1, "getGamepadMappingConfig value is empty "

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_0
    const-class v0, Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->sortMouseRefreshRatesByIntervalAsc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "getGamepadMappingConfig config parse exception : "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    :goto_1
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    const-string v0, "getGamepadMappingConfig tips is empty "

    .line 95
    .line 96
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public parseIsUseLargeConfig(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string v1, "x86_key_map_reference_aspect_ratio"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 24
    .line 25
    iput-boolean v0, v1, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isContainsRatioConfig:Z

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->usingLargeScreenConfig(Ljava/util/HashMap;Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, v1, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isUseLargeConfig:Z

    .line 34
    .line 35
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "parseKeyboardMapConfigs usingLargeScreen "

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isUseLargeConfig:Z

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mKeyMapConfig:Lcom/haima/hmcp/beans/X86KeyMapContentConfig;

    .line 62
    .line 63
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/X86KeyMapContentConfig;->isUseLargeConfig:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dealUsingLargeLayoutConfig(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    invoke-static {p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dealUsingLargeLayoutConfig(Z)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public parseKeyboardMapConfigs(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

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
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string v0, "x86_key_map_game_list"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "x86_key_map_game_list_large_screen"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->usingLargeScreenConfig(Ljava/util/HashMap;Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string p2, "parseKeyboardMapConfigs usingLargeScreen true"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dealUsingLargeLayoutConfig(Z)V

    .line 48
    .line 49
    .line 50
    move-object v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p2, "parseKeyboardMapConfigs usingLargeScreen false"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dealUsingLargeLayoutConfig(Z)V

    .line 61
    .line 62
    .line 63
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->x86KeyboardMapConfigs:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string p2, "x86KeyboardMapConfigs config is invalid"

    .line 73
    .line 74
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object p1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->x86KeyboardMapConfigs:Lcom/alibaba/fastjson/JSONObject;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v0, "x86KeyboardMapConfigs size: "

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->x86KeyboardMapConfigs:Lcom/alibaba/fastjson/JSONObject;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    :goto_2
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p2, "x86KeyboardMapConfigs is null or empty, please reset config"

    .line 123
    .line 124
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    :goto_3
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string p2, "parseKeyboardMapConfigs failed:params is invalid"

    .line 134
    .line 135
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public parseLongTouchBtnList()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/beans/LongTouchBtnConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->configs:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/GlobalConfig;->configs:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v2, "handle_long_touch_btn_list"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    :try_start_0
    new-instance v2, Lcom/haima/hmcp/beans/GlobalConfig$1;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/haima/hmcp/beans/GlobalConfig$1;-><init>(Lcom/haima/hmcp/beans/GlobalConfig;)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 42
    .line 43
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "parse handle_long_touch_btn_list config failure"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-object v1
.end method

.method public parseTouchesMappingConfig(Ljava/util/HashMap;)V
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
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "x86_touches_mapper_input_device"

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
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "x86_touches_mapper_input_device parseTouchesMappingConfig config is: "

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string p1, "parseTouchesMappingConfig value is empty "

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_0
    const-class v0, Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/haima/hmcp/beans/GlobalConfig;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    sget-object v0, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "parseTouchesMappingConfig config parse exception : "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_2
    :goto_1
    sget-object p1, Lcom/haima/hmcp/beans/GlobalConfig;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string v0, "parseTouchesMappingConfig tips is empty "

    .line 90
    .line 91
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
