.class final enum Lcom/sigmob/sdk/base/common/am$7;
.super Lcom/sigmob/sdk/base/common/am;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "requiresUserInteraction"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/am;-><init>(Ljava/lang/String;IZLcom/sigmob/sdk/base/common/am$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/an;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "urlHandler",
            "adUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string v0, "performAction"

    const/4 v1, 0x0

    invoke-static {p0, v0, p4, v1}, Lcom/sigmob/sdk/base/common/am;->a(Lcom/sigmob/sdk/base/common/am;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p4}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDeeplinkUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p4, p2}, Lcom/sigmob/sdk/base/common/am;->a(Lcom/sigmob/sdk/base/common/am;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p4, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDeeplinkUri(Landroid/net/Uri;)V

    throw p1

    :cond_0
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/common/an;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-class p2, Lcom/sigmob/sdk/base/common/AdActivity;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/net/Uri;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "uri",
            "interActionType"
        }
    .end annotation

    .line 3
    if-eqz p1, :cond_1

    const-string p2, "HTTP"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "HTTPS"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
