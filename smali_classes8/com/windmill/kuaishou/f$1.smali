.class final Lcom/windmill/kuaishou/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/f;-><init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsNativeAd;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/f;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/f;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/f$1;->a:Lcom/windmill/kuaishou/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBitmapLoadFailed()V
    .locals 0

    return-void
.end method

.method public final onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/f$1;->a:Lcom/windmill/kuaishou/f;

    invoke-static {v0, p1}, Lcom/windmill/kuaishou/f;->a(Lcom/windmill/kuaishou/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
