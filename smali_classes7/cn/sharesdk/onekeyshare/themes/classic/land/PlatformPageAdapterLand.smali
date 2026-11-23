.class public Lcn/sharesdk/onekeyshare/themes/classic/land/PlatformPageAdapterLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "SourceFile"


# static fields
.field private static final DESIGN_CELL_WIDTH_L:I = 0xa0

.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_L:I = 0x500

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p2, p1

    .line 6
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 7
    .line 8
    div-float/2addr p2, v0

    .line 9
    const/high16 v0, 0x43200000    # 160.0f

    .line 10
    .line 11
    mul-float v0, v0, p2

    .line 12
    .line 13
    float-to-int v0, v0

    .line 14
    div-int v0, p1, v0

    .line 15
    .line 16
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    mul-float v1, v1, p2

    .line 21
    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ge v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 30
    .line 31
    const/high16 v3, 0x42980000    # 76.0f

    .line 32
    .line 33
    mul-float v3, v3, p2

    .line 34
    .line 35
    float-to-int v3, v3

    .line 36
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    .line 37
    .line 38
    const/high16 v3, 0x41a00000    # 20.0f

    .line 39
    .line 40
    mul-float v3, v3, p2

    .line 41
    .line 42
    float-to-int v3, v3

    .line 43
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    .line 44
    .line 45
    const/high16 v3, 0x42500000    # 52.0f

    .line 46
    .line 47
    mul-float p2, p2, v3

    .line 48
    .line 49
    float-to-int p2, p2

    .line 50
    iput p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    .line 51
    .line 52
    mul-int/lit8 p2, v1, 0x3

    .line 53
    .line 54
    sub-int/2addr p1, p2

    .line 55
    sub-int/2addr v0, v2

    .line 56
    div-int/2addr p1, v0

    .line 57
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 58
    .line 59
    add-int/2addr p1, v1

    .line 60
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    .line 61
    .line 62
    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 6
    .line 7
    const-class v2, Ljava/lang/Object;

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    div-int v3, v0, v1

    .line 12
    .line 13
    rem-int v4, v0, v1

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    :cond_0
    mul-int v3, v3, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    filled-new-array {v1, v3}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [[Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    div-int v3, v0, v1

    .line 36
    .line 37
    rem-int v4, v0, v1

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    :cond_2
    filled-new-array {v3, v1}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, [[Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 54
    .line 55
    :goto_0
    const/4 v1, 0x0

    .line 56
    :goto_1
    if-ge v1, v0, :cond_3

    .line 57
    .line 58
    iget v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 59
    .line 60
    div-int v3, v1, v2

    .line 61
    .line 62
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v4, v4, v3

    .line 65
    .line 66
    mul-int v2, v2, v3

    .line 67
    .line 68
    sub-int v2, v1, v2

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    aput-object v3, v4, v2

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    return-void
.end method
