.class public Lcn/sharesdk/onekeyshare/themes/classic/port/PlatformPageAdapterPort;
.super Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.source "SourceFile"


# static fields
.field private static final DESIGN_LOGO_HEIGHT:I = 0x4c

.field private static final DESIGN_PADDING_TOP:I = 0x14

.field private static final DESIGN_SCREEN_WIDTH_P:I = 0x2d0

.field private static final DESIGN_SEP_LINE_WIDTH:I = 0x1

.field private static final LINE_SIZE_P:I = 0x4

.field private static final PAGE_SIZE_P:I = 0xc


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
    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 7
    .line 8
    int-to-float v1, p1

    .line 9
    const/high16 v2, 0x44340000    # 720.0f

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    mul-float v2, v2, v1

    .line 15
    .line 16
    float-to-int v2, v2

    .line 17
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_0
    iput v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 24
    .line 25
    const/high16 v3, 0x42980000    # 76.0f

    .line 26
    .line 27
    mul-float v3, v3, v1

    .line 28
    .line 29
    float-to-int v3, v3

    .line 30
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    .line 31
    .line 32
    const/high16 v3, 0x41a00000    # 20.0f

    .line 33
    .line 34
    mul-float v3, v3, v1

    .line 35
    .line 36
    float-to-int v3, v3

    .line 37
    iput v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    .line 38
    .line 39
    const/high16 v3, 0x42500000    # 52.0f

    .line 40
    .line 41
    mul-float v1, v1, v3

    .line 42
    .line 43
    float-to-int v1, v1

    .line 44
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    .line 45
    .line 46
    mul-int/lit8 v2, v2, 0x3

    .line 47
    .line 48
    sub-int/2addr p1, v2

    .line 49
    div-int/2addr p1, v0

    .line 50
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 57
    .line 58
    if-gt p1, v0, :cond_1

    .line 59
    .line 60
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 61
    .line 62
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 63
    .line 64
    add-int/2addr p1, p2

    .line 65
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 73
    .line 74
    rsub-int/lit8 p2, p2, 0xc

    .line 75
    .line 76
    if-gt p1, p2, :cond_2

    .line 77
    .line 78
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 79
    .line 80
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 81
    .line 82
    add-int/2addr p1, p2

    .line 83
    mul-int/lit8 p1, p1, 0x2

    .line 84
    .line 85
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    .line 89
    .line 90
    iget p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    .line 91
    .line 92
    add-int/2addr p1, p2

    .line 93
    mul-int/lit8 p1, p1, 0x3

    .line 94
    .line 95
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method protected collectCells(Ljava/util/ArrayList;)V
    .locals 6
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
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    iget v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    .line 12
    .line 13
    div-int v4, v0, v3

    .line 14
    .line 15
    rem-int v5, v0, v3

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    :cond_0
    mul-int v4, v4, v3

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    filled-new-array {v3, v4}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, [[Ljava/lang/Object;

    .line 33
    .line 34
    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    div-int/lit8 v3, v0, 0xc

    .line 38
    .line 39
    rem-int/lit8 v4, v0, 0xc

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    :cond_2
    filled-new-array {v3, v2}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, [[Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 56
    .line 57
    :goto_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    if-ge v1, v0, :cond_3

    .line 59
    .line 60
    div-int/lit8 v3, v1, 0xc

    .line 61
    .line 62
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v4, v4, v3

    .line 65
    .line 66
    mul-int/lit8 v3, v3, 0xc

    .line 67
    .line 68
    sub-int v3, v1, v3

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    aput-object v5, v4, v3

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
