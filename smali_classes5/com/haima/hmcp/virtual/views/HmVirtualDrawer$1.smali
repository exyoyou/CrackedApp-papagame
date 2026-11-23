.class Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

.field final synthetic val$bitmapHeight:I

.field final synthetic val$bitmapWidth:I

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$bitmapWidth:I

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$bitmapHeight:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$finalUrl:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Lcom/haima/hmcp/virtual/BitmapRef;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$bitmapWidth:I

    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$bitmapHeight:I

    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "initDrawerBitmap: preload complete, updated UP state, url="

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$finalUrl:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "initDrawerBitmap: preload failed for UP state, url="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;->val$finalUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", error="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
