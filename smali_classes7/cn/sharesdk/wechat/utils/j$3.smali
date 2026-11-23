.class Lcn/sharesdk/wechat/utils/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/framework/ShareSDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ShareSDKCallback;

.field final synthetic b:Lcn/sharesdk/wechat/utils/j;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/j;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j$3;->b:Lcn/sharesdk/wechat/utils/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/j$3;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPInfoForce([I)Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "wechat versionName ==>> "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    const-string p1, "0"

    .line 44
    .line 45
    :goto_0
    const-string v1, "_"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    aget-object p1, p1, v0

    .line 52
    .line 53
    const-string v1, "\\."

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    array-length v1, p1

    .line 60
    new-array v2, v1, [I

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_1
    if-ge v3, v1, :cond_0

    .line 64
    .line 65
    :try_start_1
    aget-object v4, p1, v3

    .line 66
    .line 67
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception v4

    .line 75
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    aput v0, v2, v3

    .line 83
    .line 84
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const/4 p1, 0x4

    .line 88
    if-lt v1, p1, :cond_2

    .line 89
    .line 90
    aget p1, v2, v0

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    if-ne p1, v0, :cond_1

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    aget p1, v2, p1

    .line 97
    .line 98
    if-nez p1, :cond_1

    .line 99
    .line 100
    const/4 p1, 0x2

    .line 101
    aget v0, v2, p1

    .line 102
    .line 103
    if-ne v0, p1, :cond_1

    .line 104
    .line 105
    const/4 p1, 0x3

    .line 106
    aget p1, v2, p1

    .line 107
    .line 108
    const/16 v0, 0x38

    .line 109
    .line 110
    if-gt p1, v0, :cond_1

    .line 111
    .line 112
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j$3;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j$3;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/j$3;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 133
    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_3
    return-void
.end method
