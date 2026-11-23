.class public Lorg/hmwebrtc/HmAndroidCallbackDirectly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmCallbackDirectly"

.field private static final hmAdapterCallbackName:Ljava/lang/String; = "nativeCallbackDirectly"

.field private static final hmAdapterName:Ljava/lang/String; = "org.webrtc.haima.HmRtcAdapterImpl"

.field private static final hmExceptionReportMethodName:Ljava/lang/String; = "throwExceptionMsg"

.field private static final hmRecordCountlyEventMethodName:Ljava/lang/String; = "recordCountlyEvent"

.field private static sHmRtcAdapterCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static hmCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    :try_start_0
    const-string v0, "org.webrtc.haima.HmRtcAdapterImpl"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 19
    .line 20
    const-string v4, "nativeCallbackDirectly"

    .line 21
    .line 22
    new-array v5, v3, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    .line 24
    const-class v6, Ljava/lang/String;

    .line 25
    .line 26
    :try_start_1
    aput-object v6, v5, v2

    .line 27
    .line 28
    aput-object v6, v5, v1

    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    :cond_1
    :try_start_2
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    sget-object v4, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 39
    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p0, v3, v2

    .line 43
    .line 44
    aput-object p1, v3, v1

    .line 45
    .line 46
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "Fatal error: call HmRtcAdapterImpl failed:"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p0, ", exception: "

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :catch_1
    :goto_0
    return-void
.end method

.method public static hmRecordCountlyEvent(ILjava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    :try_start_0
    const-string v0, "org.webrtc.haima.HmRtcAdapterImpl"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 19
    .line 20
    const-string v4, "recordCountlyEvent"

    .line 21
    .line 22
    new-array v5, v3, [Ljava/lang/Class;

    .line 23
    .line 24
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v6, v5, v2

    .line 27
    .line 28
    const-class v6, Ljava/lang/String;

    .line 29
    .line 30
    aput-object v6, v5, v1

    .line 31
    .line 32
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    :cond_1
    :try_start_1
    sget-object v0, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sMethod:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    sget-object v4, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->sHmRtcAdapterCls:Ljava/lang/Class;

    .line 41
    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    aput-object p0, v3, v2

    .line 49
    .line 50
    aput-object p1, v3, v1

    .line 51
    .line 52
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "Fatal error: call HmRtcAdapterImpl failed:recordCountlyEvent, exception: "

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :catch_1
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "Can\'t find class: "

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    return-void
.end method
