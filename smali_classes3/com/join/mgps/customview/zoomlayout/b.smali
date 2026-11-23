.class public Lcom/join/mgps/customview/zoomlayout/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threeStep"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/b;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method private b(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMinScale()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMaxScale()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMinScale()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-float/2addr v2, v3

    .line 18
    const v3, 0x3e99999a    # 0.3f

    .line 19
    .line 20
    .line 21
    mul-float v2, v2, v3

    .line 22
    .line 23
    add-float/2addr v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    cmpg-float v3, v0, v1

    .line 26
    .line 27
    if-gez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FFFZ)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    cmpl-float v1, v0, v1

    .line 34
    .line 35
    if-ltz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMaxScale()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    cmpg-float v0, v0, v1

    .line 42
    .line 43
    if-gez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMaxScale()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FFFZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMinScale()F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1, p2, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FZ)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private c(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMinScale()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMinScale()F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p2, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FZ)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getMaxScale()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FFFZ)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "info"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/customview/zoomlayout/b;->b(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/customview/zoomlayout/b;->c(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1
.end method
