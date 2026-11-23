.class Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->webShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getNetworkTypeForStatic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "none"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$002(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 25
    .line 26
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$100(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Ljava/lang/Throwable;

    .line 31
    .line 32
    const-string v1, "failed to load webpage, network disconnected."

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-interface {p1, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$300(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Lcn/sharesdk/framework/authorize/RegisterView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$1;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    .line 53
    .line 54
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$200(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
