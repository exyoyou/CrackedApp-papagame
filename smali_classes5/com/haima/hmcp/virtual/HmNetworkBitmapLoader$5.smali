.class Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->initDownloadComponents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$5;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$5;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$000(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$5;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$100(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
