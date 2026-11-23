.class public Lcom/join/mgps/fragment/n4;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/n4$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d0
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3


# instance fields
.field c:I

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/InterceptEventViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/fragment/k4;

.field h:Lcom/join/mgps/fragment/k4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O(I)Lcom/join/mgps/fragment/n4;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/o4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/o4;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method M()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/n4;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xe

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v0, 0x12

    .line 16
    .line 17
    return v0
.end method

.method N()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/n4;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xf

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v0, 0x13

    .line 16
    .line 17
    return v0
.end method

.method P(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/n4;->h:Lcom/join/mgps/fragment/k4;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/n4;->N()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->b0(I)Lcom/join/mgps/fragment/k4;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/mgps/fragment/n4;->h:Lcom/join/mgps/fragment/k4;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/n4;->h:Lcom/join/mgps/fragment/k4;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/n4;->g:Lcom/join/mgps/fragment/k4;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/n4;->M()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->b0(I)Lcom/join/mgps/fragment/k4;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/join/mgps/fragment/n4;->g:Lcom/join/mgps/fragment/k4;

    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/n4;->g:Lcom/join/mgps/fragment/k4;

    .line 40
    .line 41
    return-object p1
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/n4$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/n4$a;-><init>(Lcom/join/mgps/fragment/n4;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/fragment/n4$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/n4$b;-><init>(Lcom/join/mgps/fragment/n4;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/fragment/n4$d;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/n4$d;-><init>(Lcom/join/mgps/fragment/n4;Landroidx/fragment/app/FragmentManager;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/n4;->f:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/fragment/n4$c;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/n4$c;-><init>(Lcom/join/mgps/fragment/n4;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/InterceptEventViewPager;->setViewPagerCallback(Lcom/join/mgps/customview/InterceptEventViewPager$c;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/fragment/n4;->f:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/InterceptEventViewPager;->setIsAsParentViewPager(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/fragment/n4;->f:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->f:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->f:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/InterceptEventViewPager;->setCurrentItem(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->d:Landroid/widget/TextView;

    .line 64
    .line 65
    const-string v1, "#F47500"

    .line 66
    .line 67
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/n4;->e:Landroid/widget/TextView;

    .line 75
    .line 76
    const-string v1, "#4A4A4A"

    .line 77
    .line 78
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/fragment/n4;->c:I

    .line 15
    .line 16
    return-void
.end method
