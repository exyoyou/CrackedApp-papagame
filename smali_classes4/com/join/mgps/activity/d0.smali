.class public final synthetic Lcom/join/mgps/activity/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic d:Lcom/join/mgps/dto/ExtBean;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/d0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

    iput-object p2, p0, Lcom/join/mgps/activity/d0;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p3, p0, Lcom/join/mgps/activity/d0;->d:Lcom/join/mgps/dto/ExtBean;

    iput-object p4, p0, Lcom/join/mgps/activity/d0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/d0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity$c;

    iget-object v1, p0, Lcom/join/mgps/activity/d0;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v2, p0, Lcom/join/mgps/activity/d0;->d:Lcom/join/mgps/dto/ExtBean;

    iget-object v3, p0, Lcom/join/mgps/activity/d0;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;->i(Lcom/join/mgps/activity/CloudGameZoneActivity$c;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
