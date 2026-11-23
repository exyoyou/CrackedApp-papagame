.class Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawerItemBitmaps(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

.field final synthetic val$centerIconHeight:I

.field final synthetic val$centerIconWidth:I

.field final synthetic val$finalItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$finalItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$centerIconWidth:I

    .line 6
    .line 7
    iput p4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$centerIconHeight:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$finalUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$finalItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$centerIconWidth:I

    .line 8
    .line 9
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$centerIconHeight:I

    .line 10
    .line 11
    invoke-static {p2, v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "initDrawerItemBitmaps: preload complete, updated item CENTER icon, url="

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$finalUrl:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

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
    const-string v1, "initDrawerItemBitmaps: preload failed for item CENTER icon, url="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;->val$finalUrl:Ljava/lang/String;

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
