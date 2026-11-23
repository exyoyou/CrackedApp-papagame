.class public final synthetic Lcom/join/mgps/activity/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity$s;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l4;->b:Lcom/join/mgps/activity/HMCloudMainActivity$s;

    iput-object p2, p0, Lcom/join/mgps/activity/l4;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p3, p0, Lcom/join/mgps/activity/l4;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l4;->b:Lcom/join/mgps/activity/HMCloudMainActivity$s;

    iget-object v1, p0, Lcom/join/mgps/activity/l4;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v2, p0, Lcom/join/mgps/activity/l4;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/activity/HMCloudMainActivity$s;->h(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
