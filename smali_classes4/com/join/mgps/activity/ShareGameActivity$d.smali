.class Lcom/join/mgps/activity/ShareGameActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/MStarBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mark"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar2:Lcom/join/mgps/customview/MStarBar;

    .line 4
    .line 5
    float-to-double v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStarEnd:Lcom/join/mgps/customview/MStarBar;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar3:Lcom/join/mgps/customview/MStarBar;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 21
    .line 22
    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    cmpl-float p1, p1, v0

    .line 29
    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->starLayout:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 63
    .line 64
    const-string v0, "onRemarkLabel"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->startGameLayout:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity$d;->a:Lcom/join/mgps/activity/ShareGameActivity;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 115
    .line 116
    invoke-static {p1}, Lr7/a;->c(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method
