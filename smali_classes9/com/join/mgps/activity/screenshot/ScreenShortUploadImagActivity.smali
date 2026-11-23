.class public Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d081a
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commitMessage:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/f1;

.field filePath:Ljava/io/File;

.field finishButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field imagepath:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

.field private mPicChsDialog:Landroid/app/Dialog;

.field selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

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
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ChangIcon()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f130558

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 12
    .line 13
    const v1, 0x7f0d0211

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x50

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 58
    .line 59
    const v1, 0x7f0a0361

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 74
    .line 75
    const v2, 0x7f0a1252

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 85
    .line 86
    const v3, 0x7f0a0282

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v3, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;

    .line 96
    .line 97
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Lcom/join/mgps/Util/b2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/io/File;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "file://"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/b2;

    .line 67
    .line 68
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/Util/b2;-><init>(Landroid/app/Activity;Lcom/join/mgps/Util/b2$a;Z)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "datas"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/util/List;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-ge v2, v0, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->typeId:I

    .line 135
    .line 136
    if-ne v0, v1, :cond_1

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setCurrentTab(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    :goto_1
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

.method finishButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->commitMessage:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "\u70b9\u8bc4\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadImagData(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "\u8bf7\u9009\u62e9\u622a\u56fe"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method imgUpload()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->ChangIcon()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/b2;->a(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
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
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x3e9

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/Util/b2;->g()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p2, 0x3ea

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/Util/b2;->d()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method uploadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method uploadImagData(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->typeId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_1

    .line 22
    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    new-instance v3, Lcom/join/mgps/activity/screenshot/ImageFactory;

    .line 48
    .line 49
    invoke-direct {v3}, Lcom/join/mgps/activity/screenshot/ImageFactory;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v5, Lcom/join/mgps/Util/z;->k:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, "uploadFile"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/16 v6, 0x1f4

    .line 85
    .line 86
    invoke-virtual {v3, v5, v4, v6, v2}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v2

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :goto_2
    new-instance v5, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    const-string v3, ""

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iget-object v8, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->gameId:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    move-object v10, p1

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/join/mgps/Util/y0;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    iget-object v7, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->gameId:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    move-object v9, p1

    .line 196
    invoke-static/range {v4 .. v9}, Lcom/join/mgps/Util/y0;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 200
    :goto_3
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    .line 201
    .line 202
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p1, "flag"

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    const-string v1, "code"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    const/4 v2, 0x1

    .line 218
    if-ne p1, v2, :cond_3

    .line 219
    .line 220
    const/16 p1, 0x258

    .line 221
    .line 222
    if-ne v1, p1, :cond_3

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadSuccess()V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_3
    const-string p1, "error_info"

    .line 229
    .line 230
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadFailed(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_1
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadFailed(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :catch_2
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    :goto_4
    return-void
.end method

.method uploadSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "\u56fe\u7247\u5ba1\u6838\u540e\u663e\u793a"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
