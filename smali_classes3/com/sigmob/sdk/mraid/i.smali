.class public Lcom/sigmob/sdk/mraid/i;
.super Lcom/sigmob/sdk/base/common/y;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customEventInterstitialListener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/y;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method protected static a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {p0}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p0

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected a(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customEventInterstitialListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "option"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/mraid2/b;->a()Lcom/sigmob/sdk/mraid2/b;

    move-result-object v3

    new-instance v4, Lcom/sigmob/sdk/mraid2/e;

    invoke-direct {v4, v2, v1}, Lcom/sigmob/sdk/mraid2/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v0, v4}, Lcom/sigmob/sdk/mraid2/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid2/e;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/base/common/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result p1

    return p1
.end method
