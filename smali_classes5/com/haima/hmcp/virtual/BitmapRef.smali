.class public Lcom/haima/hmcp/virtual/BitmapRef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultBitmap:Landroid/graphics/Bitmap;

.field private networkBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->networkBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/haima/hmcp/virtual/BitmapRef;->networkBitmap:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    return-void
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/BitmapRef;->networkBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method public hasNetwork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/BitmapRef;->networkBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public set(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setDefault(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setNetwork(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->networkBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/virtual/BitmapRef;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    :cond_0
    return-void
.end method
