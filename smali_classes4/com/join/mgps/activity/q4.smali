.class public final synthetic Lcom/join/mgps/activity/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$d;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/HMCloudMainActivity$u;

.field public final synthetic b:Lcom/join/mgps/adapter/k;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity$u;Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/q4;->a:Lcom/join/mgps/activity/HMCloudMainActivity$u;

    iput-object p2, p0, Lcom/join/mgps/activity/q4;->b:Lcom/join/mgps/adapter/k;

    iput-object p3, p0, Lcom/join/mgps/activity/q4;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/q4;->a:Lcom/join/mgps/activity/HMCloudMainActivity$u;

    iget-object v1, p0, Lcom/join/mgps/activity/q4;->b:Lcom/join/mgps/adapter/k;

    iget-object v2, p0, Lcom/join/mgps/activity/q4;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/HMCloudMainActivity$u;->e(Lcom/join/mgps/activity/HMCloudMainActivity$u;Lcom/join/mgps/adapter/k;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
