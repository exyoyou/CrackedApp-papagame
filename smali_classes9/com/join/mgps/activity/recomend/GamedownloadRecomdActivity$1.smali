.class Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

.field final synthetic val$h:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$h"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->val$h:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "i"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    cmpl-float p1, p1, v0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0715d8

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-float v0, v0

    .line 36
    cmpg-float p1, p1, v0

    .line 37
    .line 38
    if-gez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x6

    .line 51
    if-le p1, v0, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 76
    .line 77
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->speedLayout:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v0, 0x0

    .line 106
    const/16 v1, 0x8

    .line 107
    .line 108
    if-nez p1, :cond_2

    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget p2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->val$h:I

    .line 115
    .line 116
    if-le p1, p2, :cond_1

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close3:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :goto_0
    return-void
.end method
