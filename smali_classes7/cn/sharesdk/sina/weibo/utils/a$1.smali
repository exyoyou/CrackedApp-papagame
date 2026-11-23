.class Lcn/sharesdk/sina/weibo/utils/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/utils/a;->a(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/sharesdk/sina/weibo/utils/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/utils/a;Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->c:Lcn/sharesdk/sina/weibo/utils/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->a:Lcn/sharesdk/framework/Platform;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    const-string v1, "expires_in"

    .line 4
    .line 5
    const-string v2, "remind_in"

    .line 6
    .line 7
    const-string v3, "uid"

    .line 8
    .line 9
    :try_start_0
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->a:Lcn/sharesdk/framework/Platform;

    .line 10
    .line 11
    invoke-static {v4}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/a;

    .line 12
    .line 13
    .line 14
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Lcn/sharesdk/sina/weibo/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v4

    .line 23
    :try_start_2
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->c:Lcn/sharesdk/sina/weibo/utils/a;

    .line 24
    .line 25
    invoke-static {v5}, Lcn/sharesdk/sina/weibo/utils/a;->a(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5, v4}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-nez v4, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->c:Lcn/sharesdk/sina/weibo/utils/a;

    .line 36
    .line 37
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/utils/a;->b(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/Throwable;

    .line 42
    .line 43
    const-string v2, "Authorize token is empty"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v5, Lcom/mob/tools/utils/Hashon;

    .line 53
    .line 54
    invoke-direct {v5}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/a$1;->c:Lcn/sharesdk/sina/weibo/utils/a;

    .line 111
    .line 112
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/utils/a;->c(Lcn/sharesdk/sina/weibo/utils/a;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0, v5}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method
