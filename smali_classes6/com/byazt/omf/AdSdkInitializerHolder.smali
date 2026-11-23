.class public Lcom/byazt/omf/AdSdkInitializerHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/i;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x306
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/omf/ve;

.field public static volatile tt:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static c()I
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdSdk;

    .line 2
    .line 3
    const-string v1, "SDK_VERSION_CODE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "init"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public static getNewInstance(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    const-class v0, Lcom/byazt/omf/AdSdkInitializerHolder;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/byazt/omf/ve;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/byazt/omf/ve;-><init>(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 26
    .line 27
    sget-object v1, Lcom/byazt/omf/p;->c:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "m"

    .line 36
    .line 37
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/byazt/dna/my;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    sget-object v3, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 46
    .line 47
    invoke-interface {v1, p0, v3}, Lcom/byazt/dna/my;->getDispatchAdSdkInitializer(Landroid/os/Bundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_2
    :goto_0
    const-string v0, "api_sdk_version"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    invoke-static {}, Lcom/byazt/omf/AdSdkInitializerHolder;->c()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const-string v0, "wzj,\u901a\u8fc7\u53cd\u5c04\u53d6apiSdkVersion\u503c="

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    if-nez p0, :cond_3

    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_3
    invoke-static {}, Lcom/byazt/mta/c;->c()Lcom/byazt/mta/c;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Lcom/byazt/mta/c;->c(I)V

    .line 92
    .line 93
    .line 94
    const/16 v0, 0x1a93

    .line 95
    .line 96
    if-ge p0, v0, :cond_5

    .line 97
    .line 98
    sget-object p0, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 99
    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    new-instance p0, Lcom/byazt/ap/tt;

    .line 103
    .line 104
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/byazt/ap/tt;-><init>(Ljava/util/function/Function;)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_4
    new-instance p0, Lcom/byazt/ap/c;

    .line 115
    .line 116
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 117
    .line 118
    invoke-direct {p0, v0}, Lcom/byazt/ap/c;-><init>(Ljava/util/function/Function;)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_5
    sget-object p0, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    sget-object p0, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_6
    sget-object p0, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 130
    .line 131
    return-object p0
.end method

.method public static hasDispatchAdSdkInitializer()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->tt:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public static isSdkInitSuccess()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/omf/AdSdkInitializerHolder;->c:Lcom/byazt/omf/ve;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/omf/ve;->isInitSuccess()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/byazt/omf/AdSdkInitializerHolder;->getInitialInstance(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public getInitialInstance(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/omf/AdSdkInitializerHolder;->getNewInstance(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
