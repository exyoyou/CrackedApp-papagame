.class public Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0817
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bottomLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field listItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nameAndDate:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pn:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field position:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field positionShow:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tintManager:Lcom/join/android/app/common/manager/b;

.field typeId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "datas"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 40
    .line 41
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->message:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 44
    .line 45
    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getDescribe()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "/"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 101
    .line 102
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    .line 111
    .line 112
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 123
    .line 124
    iget v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method loadListData(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->gameId:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->typeId:I

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->k(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->updateUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method viewPager()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->bottomLayout:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->back:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->bottomLayout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->back:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
