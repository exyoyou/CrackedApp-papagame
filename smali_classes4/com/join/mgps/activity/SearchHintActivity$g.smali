.class Lcom/join/mgps/activity/SearchHintActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "hasFocus="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "onFocusChange"

    .line 19
    .line 20
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$000(Lcom/join/mgps/activity/SearchHintActivity;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->q(Z)Lcom/youth/banner/Banner;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-lez p2, :cond_2

    .line 74
    .line 75
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    rem-int/2addr p1, v0

    .line 84
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 91
    .line 92
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 93
    .line 94
    const/16 v0, 0x8

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 102
    .line 103
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 115
    .line 116
    invoke-static {p1}, Lr7/a;->c(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 121
    .line 122
    const/4 p2, 0x1

    .line 123
    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->q(Z)Lcom/youth/banner/Banner;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$g;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 136
    .line 137
    const-string p2, ""

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_0
    return-void
.end method
