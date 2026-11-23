.class Lcom/join/mgps/fragment/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramInt"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramInt1",
            "paramFloat",
            "paramInt2"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/fragment/f;->P(Lcom/join/mgps/fragment/f;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->Q(Lcom/join/mgps/fragment/f;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    rem-int/lit8 v0, v0, 0xa

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->R(Lcom/join/mgps/fragment/f;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/lit8 v0, v0, -0x8

    .line 51
    .line 52
    if-lt p1, v0, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/fragment/f;->S(Lcom/join/mgps/fragment/f;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/fragment/f$b;->b:Lcom/join/mgps/fragment/f;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/fragment/f;->T(Lcom/join/mgps/fragment/f;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method
