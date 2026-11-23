.class Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;
.super Lcn/sharesdk/framework/utils/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/k$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 6
    .line 7
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$800(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SinaWeiboOfficialAuth onCreate loginManager() "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 22
    .line 23
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$700(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/lang/Throwable;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "Authorize catch: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 52
    .line 53
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$700(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "SinaWeiboOfficialAuth onCreate catch: "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$2;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method
