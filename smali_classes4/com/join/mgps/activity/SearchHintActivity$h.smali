.class Lcom/join/mgps/activity/SearchHintActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "keyCode",
            "keyEvent"
        }
    .end annotation

    .line 1
    const/16 p1, 0x42

    .line 2
    .line 3
    if-ne p2, p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity;->hideKeyboard()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, " "

    .line 29
    .line 30
    const-string p3, ""

    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->img_iconback:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 48
    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "keyword="

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "setOnKeyListener"

    .line 68
    .line 69
    filled-new-array {v0, p2}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-lez p2, :cond_0

    .line 81
    .line 82
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 83
    .line 84
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 89
    .line 90
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-lez p1, :cond_1

    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    rem-int/2addr p1, v0

    .line 121
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 126
    .line 127
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-lez p1, :cond_2

    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->b:Lcom/join/mgps/activity/SearchHintActivity;

    .line 148
    .line 149
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 155
    return p1
.end method
