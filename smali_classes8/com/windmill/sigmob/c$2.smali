.class final Lcom/windmill/sigmob/c$2;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sigmob/c;->getImageList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/SigImage;

.field final synthetic b:Lcom/windmill/sigmob/c;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/c;Lcom/sigmob/sdk/base/models/SigImage;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/c$2;->b:Lcom/windmill/sigmob/c;

    iput-object p2, p0, Lcom/windmill/sigmob/c$2;->a:Lcom/sigmob/sdk/base/models/SigImage;

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$2;->a:Lcom/sigmob/sdk/base/models/SigImage;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$2;->a:Lcom/sigmob/sdk/base/models/SigImage;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c$2;->a:Lcom/sigmob/sdk/base/models/SigImage;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
