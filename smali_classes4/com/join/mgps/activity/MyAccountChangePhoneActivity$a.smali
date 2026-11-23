.class Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;->b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;->b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->rebindCode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
