.class Lcn/sharesdk/tencent/qzone/QZone$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/ShareSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/framework/ShareSDKCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/sharesdk/tencent/qzone/QZone;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/Platform$ShareParams;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 9
    .line 10
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->b:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 34
    .line 35
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->l(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 42
    .line 43
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->m(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/Throwable;

    .line 50
    .line 51
    const-string v4, "response is empty"

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2, v0, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v1, "ShareParams"

    .line 60
    .line 61
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 67
    .line 68
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->n(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 75
    .line 76
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->o(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 81
    .line 82
    invoke-interface {v1, v2, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 88
    .line 89
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->p(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 96
    .line 97
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/QZone;->q(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone$3;->d:Lcn/sharesdk/tencent/qzone/QZone;

    .line 102
    .line 103
    invoke-interface {v1, v2, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone$3;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
