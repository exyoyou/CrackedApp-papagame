.class public final synthetic Lcom/sigmob/sdk/base/common/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/common/ae;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/common/ae;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/n0;->a:Lcom/sigmob/sdk/base/common/ae;

    iput p2, p0, Lcom/sigmob/sdk/base/common/n0;->b:I

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/n0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/n0;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n0;->a:Lcom/sigmob/sdk/base/common/ae;

    iget v1, p0, Lcom/sigmob/sdk/base/common/n0;->b:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/n0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/n0;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/base/common/ae;->c(Lcom/sigmob/sdk/base/common/ae;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method
