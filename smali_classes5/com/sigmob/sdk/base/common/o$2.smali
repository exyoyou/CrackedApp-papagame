.class Lcom/sigmob/sdk/base/common/o$2;
.super Lcom/sigmob/sdk/downloader/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field private e:Lcom/sigmob/sdk/downloader/l$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "context",
            "val$context",
            "val$url",
            "val$trackers"
        }
    .end annotation

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/o$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/o$2;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/downloader/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 5
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "url"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V
    .locals 1

    .line 6
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p2

    const-string v0, "url"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "download_two_quarter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p1, "download_three_quarter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p1, "download_quarter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string p0, "status"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x32

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x4b

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x19

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x766ef60b -> :sswitch_2
        0x6d397d94 -> :sswitch_1
        0x6e8a9a82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 7
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o$2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o$2;->a(Ljava/lang/String;Lcom/sigmob/sdk/videoAd/d;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/o$2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/o$2;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/o$2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/common/o$2$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/common/o$2$1;-><init>(Lcom/sigmob/sdk/base/common/o$2;Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/u1;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/u1;-><init>(Ljava/lang/String;)V

    const-string p1, "apkdownload"

    const-string v1, "end"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "blockCount",
            "currentOffset",
            "totalLength"
        }
    .end annotation

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;IJJ)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "currentOffset",
            "totalLength"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->b:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super/range {p0 .. p5}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;JJ)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/o$2;->c:Ljava/util/List;

    const-string v2, "download_quarter"

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/videoAd/d;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/e;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    new-instance p4, Lcom/sigmob/sdk/base/common/v1;

    invoke-direct {p4, p3, p2}, Lcom/sigmob/sdk/base/common/v1;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videoAd/d;)V

    const-string p2, "apkdownload"

    const-string p3, "progress"

    const/4 p5, 0x0

    invoke-static {p2, p3, p5, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "e"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->f:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$2;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/w1;

    invoke-direct {v0, p2, p1}, Lcom/sigmob/sdk/base/common/w1;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string p1, "apkdownload"

    const-string p2, "end"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method protected b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->b:Lcom/sigmob/sdk/downloader/l$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->b(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/x1;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/x1;-><init>(Ljava/lang/String;)V

    const-string p1, "apkdownload"

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method protected c(Lcom/sigmob/sdk/downloader/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    sget-object v1, Lcom/sigmob/sdk/downloader/l$a;->e:Lcom/sigmob/sdk/downloader/l$a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sigmob/sdk/base/common/o$2;->e:Lcom/sigmob/sdk/downloader/l$a;

    invoke-super {p0, p1}, Lcom/sigmob/sdk/downloader/h;->c(Lcom/sigmob/sdk/downloader/f;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$2;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/common/t1;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/t1;-><init>(Ljava/lang/String;)V

    const-string p1, "apkdownload"

    const-string v1, "pause"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method
