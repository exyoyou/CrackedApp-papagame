.class public Lcom/join/mgps/dialog/PlugUpdateDialog;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private cancel:Landroid/view/View;

.field private checkBox:Landroid/widget/CheckBox;

.field private content:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private ok:Landroid/view/View;

.field table:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private title:Landroid/widget/TextView;


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
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->title:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->content:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dismiss(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->dismiss()V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a04b2

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "_"

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->gameId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->from:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v3, v4}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->checkBox:Landroid/widget/CheckBox;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    aget-object v0, v0, v1

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const v0, 0x7f0a04b8

    .line 72
    .line 73
    .line 74
    if-ne p1, v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->checkBox:Landroid/widget/CheckBox;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    aget-object v0, v0, v1

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_1
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x22000000

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f0d07d7

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v0, 0x7f0a1767

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->title:Landroid/widget/TextView;

    .line 34
    .line 35
    const v0, 0x7f0a0424

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->content:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a034e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/CheckBox;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->checkBox:Landroid/widget/CheckBox;

    .line 56
    .line 57
    const v0, 0x7f0a04b8

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->ok:Landroid/view/View;

    .line 65
    .line 66
    const v0, 0x7f0a04b2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->cancel:Landroid/view/View;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->ok:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->cancel:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog;->setContentView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    return-void
.end method
