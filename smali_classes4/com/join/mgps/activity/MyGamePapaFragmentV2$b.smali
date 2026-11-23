.class Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGamePapaFragmentV2;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/w0;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/w0;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    if-ne p1, v1, :cond_3

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->c0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->c0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;->a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;I)Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->c0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;->a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;I)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v0, v0, Lcom/join/mgps/activity/z7;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->c0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;->a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;I)Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/mgps/activity/z7;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/y7;->X(Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->b0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFavoritesBtn:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m0(I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
