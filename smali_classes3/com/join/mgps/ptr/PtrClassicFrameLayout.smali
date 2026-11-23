.class public Lcom/join/mgps/ptr/PtrClassicFrameLayout;
.super Lcom/join/mgps/ptr/PtrFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;
    }
.end annotation


# instance fields
.field private R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

.field private S:Lcom/join/mgps/ptr/PtrUIHeader;

.field private T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T()V

    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->e(Lcom/join/mgps/ptr/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private O()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "#4EA9E9"

    .line 14
    .line 15
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/header/DropBounceHeaderView;->setColor(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    const/16 v4, 0x32

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    const/high16 v2, 0x41000000    # 8.0f

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x41100000    # 9.0f

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setLoadingMinTime(I)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x1f4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 60
    .line 61
    return-void
.end method

.method private P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/MaterialHeader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f030003

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/MaterialHeader;->setColorSchemeColors([I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    const/4 v3, -0x2

    .line 28
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    const/high16 v1, 0x41700000    # 15.0f

    .line 35
    .line 36
    invoke-static {v1}, Lz6/b;->b(F)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/high16 v2, 0x41200000    # 10.0f

    .line 41
    .line 42
    invoke-static {v2}, Lz6/b;->b(F)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 54
    .line 55
    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x41700000    # 15.0f

    .line 21
    .line 22
    invoke-static {v1}, Lz6/b;->b(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/high16 v2, 0x41200000    # 10.0f

    .line 27
    .line 28
    invoke-static {v2}, Lz6/b;->b(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 40
    .line 41
    return-void
.end method

.method private R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/StoreHouseHeader;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "PAPA LOADING..."

    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/high16 v2, 0x41700000    # 15.0f

    .line 17
    .line 18
    invoke-static {v2}, Lz6/b;->b(F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    .line 25
    .line 26
    aget-object v1, v1, v3

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/StoreHouseHeader;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const v2, 0x7f06043d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 46
    .line 47
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->Classical:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->Material:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x4

    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->RentalsSun:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 v1, 0x5

    .line 36
    if-ne v0, v1, :cond_4

    .line 37
    .line 38
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->StoreHouse:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;->DropBounce:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private T()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout$a;->a:[I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R:Lcom/join/mgps/ptr/PtrClassicFrameLayout$Style;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->R()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->Q()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->P()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->O()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->e(Lcom/join/mgps/ptr/c;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->N()V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public getClassicHeader()Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeader()Lcom/join/mgps/ptr/PtrUIHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->S:Lcom/join/mgps/ptr/PtrUIHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;->T:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
