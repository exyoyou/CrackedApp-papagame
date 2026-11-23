.class public final synthetic Lcom/join/mgps/activity/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

.field public final synthetic c:Lcom/join/mgps/dto/ExtBean;

.field public final synthetic d:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/e0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

    iput-object p2, p0, Lcom/join/mgps/activity/e0;->c:Lcom/join/mgps/dto/ExtBean;

    iput-object p3, p0, Lcom/join/mgps/activity/e0;->d:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/e0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

    iget-object v1, p0, Lcom/join/mgps/activity/e0;->c:Lcom/join/mgps/dto/ExtBean;

    iget-object v2, p0, Lcom/join/mgps/activity/e0;->d:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->h(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
