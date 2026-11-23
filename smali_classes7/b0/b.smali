.class public final Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/a;


# static fields
.field private static a:Lb0/a;

.field private static b:Lcom/alipay/security/mobile/module/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lb0/a;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lb0/b;->a:Lb0/a;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/security/mobile/module/a/b;->c(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;

    move-result-object p0

    sput-object p0, Lb0/b;->b:Lcom/alipay/security/mobile/module/a/a;

    new-instance p0, Lb0/b;

    invoke-direct {p0}, Lb0/b;-><init>()V

    sput-object p0, Lb0/b;->a:Lb0/a;

    :cond_1
    sget-object p0, Lb0/b;->a:Lb0/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La0/a;
    .locals 1

    .line 1
    sget-object v0, Lb0/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, La0/a;

    iget-object p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListData:Ljava/lang/String;

    iget-object p4, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListVer:Ljava/lang/String;

    invoke-direct {p2, p3, p4}, La0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->success:Z

    iput-boolean p3, p2, La0/b;->a:Z

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->resultCode:Ljava/lang/String;

    iput-object p1, p2, La0/b;->b:Ljava/lang/String;

    return-object p2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lb0/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(La0/d;)La0/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    iget-object v1, p1, La0/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    iget-object v1, p1, La0/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->apdid:Ljava/lang/String;

    iget-object v1, p1, La0/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    iget-object v1, p1, La0/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    iget-object v1, p1, La0/d;->e:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    iget-object v1, p1, La0/d;->f:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    iget-object v1, p1, La0/d;->g:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    iget-object v1, p1, La0/d;->h:Ljava/lang/String;

    invoke-static {v1}, Lc0/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    iget-object p1, p1, La0/d;->i:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    sget-object p1, Lb0/b;->b:Lcom/alipay/security/mobile/module/a/a;

    invoke-interface {p1, v0}, Lcom/alipay/security/mobile/module/a/a;->b(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object p1

    new-instance v0, La0/c;

    invoke-direct {v0}, La0/c;-><init>()V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-boolean v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->success:Z

    iput-boolean v1, v0, La0/b;->a:Z

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/BaseResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, La0/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v1, v0, La0/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v1, v0, La0/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v1, v0, La0/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->version:Ljava/lang/String;

    iput-object v1, v0, La0/c;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->vkeySwitch:Ljava/lang/String;

    iput-object v1, v0, La0/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->bugTrackSwitch:Ljava/lang/String;

    iput-object v1, v0, La0/c;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->appListVer:Ljava/lang/String;

    iput-object p1, v0, La0/c;->i:Ljava/lang/String;

    return-object v0
.end method
