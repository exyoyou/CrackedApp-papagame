.class public Lcom/papa91/arc/dialog/SettingShareDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;
    }
.end annotation


# instance fields
.field iv_close:Landroid/widget/ImageView;

.field ll_Qzone:Landroid/widget/LinearLayout;

.field ll_pyq:Landroid/widget/LinearLayout;

.field ll_qq:Landroid/widget/LinearLayout;

.field ll_wx:Landroid/widget/LinearLayout;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingShareDialog;->initView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_wx:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_pyq:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_qq:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_Qzone:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_Qzone:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    new-array v1, v1, [Landroid/view/View;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    .line 66
    .line 67
    aput-object v3, v1, v2

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    aput-object v3, v1, v2

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    aput-object v3, v1, v2

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    aput-object v3, v1, v2

    .line 83
    .line 84
    const/4 v2, 0x4

    .line 85
    aput-object v0, v1, v2

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_share:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-ne p1, v0, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_Qzone:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    if-ne p1, v0, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public setIamge(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file://"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    .line 2
    .line 3
    return-void
.end method
