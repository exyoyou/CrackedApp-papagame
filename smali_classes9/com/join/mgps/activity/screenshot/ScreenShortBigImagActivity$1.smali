.class Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

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
            "state"
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
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

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
    add-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 14
    .line 15
    iget v1, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->loadListData(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, p1, 0x1

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "/"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->message:Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getDescribe()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->nameAndDate:Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getNickname()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, "\u3000\u3000"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getAddTime()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
