.class public Lcom/join/mgps/activity/CloudBackupsDetialActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0148
.end annotation


# instance fields
.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field bean:Lcom/join/mgps/dto/CloudBackupsCanUseBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field gameHostoryNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameKeySetNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gamelistnumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/b;

.field timeText:Landroid/widget/TextView;
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
.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->rpcClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->title_textview:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u5907\u4efd\u6570\u636e\u8be6\u60c5"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->phoneType:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->bean:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getBrand_name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->bean:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getAdd_time()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    mul-long v0, v0, v2

    .line 40
    .line 41
    new-instance v2, Ljava/sql/Date;

    .line 42
    .line 43
    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->timeText:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "yyyy-MM.dd HH:mm"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/join/mgps/Util/e0;->e(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
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

.method deletbutn()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method recoder()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CloudRecodingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CloudRecodingActivity_$b;->b(Z)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->bean:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CloudRecodingActivity_$b;->a(Lcom/join/mgps/dto/CloudBackupsCanUseBean;)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 19
    .line 20
    .line 21
    return-void
.end method
