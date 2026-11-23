.class Lcn/sharesdk/sina/weibo/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/a$3;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/sina/weibo/a$3;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a$3;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a$3$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 2
    .line 3
    iget-object v1, v0, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->k(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "ShareParams"

    .line 13
    .line 14
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3$1;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 20
    .line 21
    iget-object v2, v1, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 22
    .line 23
    iget-object v1, v1, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 24
    .line 25
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->f(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/16 v3, 0x9

    .line 30
    .line 31
    invoke-interface {v2, v1, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const-string v0, "uid"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "access_token"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "expire_in"

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 61
    .line 62
    iget-object v2, v2, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/sina/weibo/a;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 68
    .line 69
    iget-object v1, v1, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 70
    .line 71
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->h(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 80
    .line 81
    iget-object v2, v2, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 82
    .line 83
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->g(Lcn/sharesdk/sina/weibo/a;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 91
    .line 92
    iget-object v1, v1, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 93
    .line 94
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->i(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 110
    .line 111
    iget-object p1, p1, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 112
    .line 113
    invoke-static {p1}, Lcn/sharesdk/sina/weibo/a;->j(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    :catchall_0
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a$3$1;->b:Lcn/sharesdk/sina/weibo/a$3;

    .line 2
    .line 3
    iget-object v1, v0, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/a;->e(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    invoke-interface {v1, v0, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
