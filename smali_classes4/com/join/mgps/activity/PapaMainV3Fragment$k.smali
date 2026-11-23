.class Lcom/join/mgps/activity/PapaMainV3Fragment$k;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->q0(Lcom/join/mgps/activity/PapaMainV3Fragment;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->V(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->U(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object p3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 41
    .line 42
    invoke-static {p3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-lt p2, p3, :cond_1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-ne p2, v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 76
    .line 77
    invoke-static {p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    add-int/2addr p2, v1

    .line 82
    iget-object p3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 83
    .line 84
    invoke-static {p3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-ge p2, p3, :cond_3

    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 102
    .line 103
    invoke-static {p1, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->g0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z(Lcom/join/mgps/activity/PapaMainV3Fragment;)Lcom/join/mgps/adapter/o5;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstCompletelyVisiblePosition()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/o5;->u(I)Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getPage()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/4 p2, 0x2

    .line 137
    if-ne p1, p2, :cond_4

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y1()V

    .line 142
    .line 143
    .line 144
    new-instance p1, Landroid/os/Bundle;

    .line 145
    .line 146
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string p2, "homeHasNewData"

    .line 150
    .line 151
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 155
    .line 156
    iget-object p2, p2, Lcom/join/mgps/activity/PapaMainV3Fragment;->J:Lcom/join/mgps/pref/f;

    .line 157
    .line 158
    invoke-interface {p2, p1}, Lcom/join/mgps/pref/f;->callHomePageNewData(Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$k;->t:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 162
    .line 163
    invoke-static {p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->i0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void
.end method
