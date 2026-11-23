.class final Lcom/windmill/gromore/h$3;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/h;->getImageList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTImage;

.field final synthetic b:Lcom/windmill/gromore/h;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/h;Lcom/bytedance/sdk/openadsdk/TTImage;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/h$3;->b:Lcom/windmill/gromore/h;

    iput-object p2, p0, Lcom/windmill/gromore/h$3;->a:Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/h$3;->a:Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/h$3;->a:Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/h$3;->a:Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/h$3;->a:Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v0

    return v0
.end method
