.class public Lcom/join/mgps/activity/PapayPayDetialActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d008d
.end annotation


# instance fields
.field info:Lcom/join/mgps/dto/PapayHistoryInfo;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field money:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field orderName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field orderType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payOderId:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
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


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->title_textview:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u4ea4\u6613\u8be6\u60c5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->payOderId:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getOrder_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->money:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getMoney()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->orderType:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getOrder_type()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->orderName:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->payTime:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getPay_time()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->payType:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/PapayPayDetialActivity;->info:Lcom/join/mgps/dto/PapayHistoryInfo;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayHistoryInfo;->getPay_type()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method back_image()V
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
