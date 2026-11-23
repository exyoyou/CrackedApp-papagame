.class Lcn/sharesdk/wechat/friends/Wechat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/friends/Wechat;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/wechat/friends/Wechat;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/friends/Wechat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/sharesdk/wechat/friends/Wechat;->g(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 10
    .line 11
    invoke-static {v0}, Lcn/sharesdk/wechat/friends/Wechat;->h(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/sharesdk/wechat/friends/Wechat;->c(Lcn/sharesdk/wechat/friends/Wechat;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 11
    .line 12
    invoke-static {p1}, Lcn/sharesdk/wechat/friends/Wechat;->d(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 24
    .line 25
    invoke-static {v1}, Lcn/sharesdk/wechat/friends/Wechat;->e(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformDb;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getAuthCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "authCode"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 39
    .line 40
    invoke-static {v1}, Lcn/sharesdk/wechat/friends/Wechat;->f(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 45
    .line 46
    invoke-interface {v1, v2, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v0, v1}, Lcn/sharesdk/wechat/friends/Wechat;->a(Lcn/sharesdk/wechat/friends/Wechat;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/sharesdk/wechat/friends/Wechat;->a(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 10
    .line 11
    invoke-static {v0}, Lcn/sharesdk/wechat/friends/Wechat;->b(Lcn/sharesdk/wechat/friends/Wechat;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcn/sharesdk/wechat/friends/Wechat$1;->a:Lcn/sharesdk/wechat/friends/Wechat;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
