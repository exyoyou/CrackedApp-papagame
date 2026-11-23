.class Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPoint"
.end annotation


# instance fields
.field currentX:F

.field currentY:F

.field isInDrawerButton:Z

.field isInDrawerList:Z

.field startTime:J

.field startX:F

.field startY:F

.field touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startX:F

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startY:F

    .line 7
    .line 8
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentX:F

    .line 9
    .line 10
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentY:F

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startTime:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method isClick()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0xc8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentX:F

    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startX:F

    .line 17
    .line 18
    sub-float/2addr v0, v1

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x41200000    # 10.0f

    .line 24
    .line 25
    cmpg-float v0, v0, v1

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentY:F

    .line 30
    .line 31
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->startY:F

    .line 32
    .line 33
    sub-float/2addr v0, v2

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    cmpg-float v0, v0, v1

    .line 39
    .line 40
    if-gez v0, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0
.end method

.method update(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->currentY:F

    .line 4
    .line 5
    return-void
.end method
