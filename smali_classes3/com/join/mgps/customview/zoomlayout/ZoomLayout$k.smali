.class Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method b()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 45
    .line 46
    invoke-interface {v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;->c(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 45
    .line 46
    invoke-interface {v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;->b(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method
