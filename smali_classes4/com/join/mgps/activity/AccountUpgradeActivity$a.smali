.class Lcom/join/mgps/activity/AccountUpgradeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountUpgradeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/activity/AccountUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountUpgradeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$nickname",
            "val$pwd",
            "val$phone",
            "val$validateCode",
            "val$subNum"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->g:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->f:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->g:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->f:I

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/AccountUpgradeActivity;->touristPerfectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->g:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->access$000(Lcom/join/mgps/activity/AccountUpgradeActivity;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
