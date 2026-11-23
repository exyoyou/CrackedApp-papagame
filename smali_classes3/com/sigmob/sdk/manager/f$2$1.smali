.class Lcom/sigmob/sdk/manager/f$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/manager/f$2;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/f$2;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/manager/f$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    iget-object v0, v0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "error"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    iget-object v0, v0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    return-void
.end method
