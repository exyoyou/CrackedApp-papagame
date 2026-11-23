.class Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/SdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 4
    .line 5
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$700(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial$1;->a:Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;

    .line 14
    .line 15
    invoke-static {v0}, Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;->access$700(Lcn/sharesdk/sina/weibo/SinaWeiboWebAuthOfficial;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "WeiboInitFailure "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v2, 0x0

    .line 47
    aput-object p1, v1, v2

    .line 48
    .line 49
    const-string p1, "SinaWeiboShareOfficial"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onInitSuccess()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    .line 3
    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "WB init Sucess"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method
