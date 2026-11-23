.class Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/haima/hmcp/volley/VolleyError;

.field private final mRequest:Lcom/haima/hmcp/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/haima/hmcp/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addContainer(Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getError()Lcom/haima/hmcp/volley/VolleyError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/haima/hmcp/volley/VolleyError;

    .line 2
    .line 3
    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->cancel()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public setError(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/haima/hmcp/volley/VolleyError;

    .line 2
    .line 3
    return-void
.end method
