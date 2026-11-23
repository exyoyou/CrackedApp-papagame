.class final Lcom/windmill/kuaishou/f$8;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/f;->getVideoCoverImage()Lcom/windmill/sdk/natives/WMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/KsImage;

.field final synthetic b:Lcom/windmill/kuaishou/f;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/f;Lcom/kwad/sdk/api/KsImage;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/f$8;->b:Lcom/windmill/kuaishou/f;

    iput-object p2, p0, Lcom/windmill/kuaishou/f$8;->a:Lcom/kwad/sdk/api/KsImage;

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$8;->a:Lcom/kwad/sdk/api/KsImage;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$8;->a:Lcom/kwad/sdk/api/KsImage;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$8;->a:Lcom/kwad/sdk/api/KsImage;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$8;->a:Lcom/kwad/sdk/api/KsImage;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->isValid()Z

    move-result v0

    return v0
.end method
