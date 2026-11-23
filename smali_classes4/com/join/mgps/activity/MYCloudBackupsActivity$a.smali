.class Lcom/join/mgps/activity/MYCloudBackupsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYCloudBackupsActivity;->showAllCanRecoverData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

.field final synthetic c:Lcom/join/mgps/activity/MYCloudBackupsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYCloudBackupsActivity;Lcom/join/mgps/activity/MYCloudBackupsActivity$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->c:Lcom/join/mgps/activity/MYCloudBackupsActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->b:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->c:Lcom/join/mgps/activity/MYCloudBackupsActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MYCloudBackupsActivity;->access$000(Lcom/join/mgps/activity/MYCloudBackupsActivity;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/CloudBackupsDetialActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/MYCloudBackupsActivity$a;->b:Lcom/join/mgps/activity/MYCloudBackupsActivity$b;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/MYCloudBackupsActivity$b;->a(I)Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;->a(Lcom/join/mgps/dto/CloudBackupsCanUseBean;)Lcom/join/mgps/activity/CloudBackupsDetialActivity_$d;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 22
    .line 23
    .line 24
    return-void
.end method
