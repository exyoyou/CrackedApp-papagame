.class final Lcom/windmill/gdt/e$3;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/e;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/gdt/e;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/e$3;->b:Lcom/windmill/gdt/e;

    iput-object p2, p0, Lcom/windmill/gdt/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e$3;->b:Lcom/windmill/gdt/e;

    iget-object v0, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v0

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e$3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e$3;->b:Lcom/windmill/gdt/e;

    iget-object v0, v0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
