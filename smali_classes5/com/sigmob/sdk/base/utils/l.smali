.class public Lcom/sigmob/sdk/base/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceContext"
        }
    .end annotation

    invoke-static {p0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object p0

    invoke-static {}, Lcom/sigmob/sdk/base/utils/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/models/Network$Builder;->all_ipv6(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Network$Builder;

    :cond_0
    return-object p0
.end method
