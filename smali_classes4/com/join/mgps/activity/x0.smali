.class public final synthetic Lcom/join/mgps/activity/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/EndGameReportActivity$a;

.field public final synthetic c:Lcom/join/mgps/dto/EndGameReportTypeBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/EndGameReportActivity$a;Lcom/join/mgps/dto/EndGameReportTypeBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/x0;->b:Lcom/join/mgps/activity/EndGameReportActivity$a;

    iput-object p2, p0, Lcom/join/mgps/activity/x0;->c:Lcom/join/mgps/dto/EndGameReportTypeBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/x0;->b:Lcom/join/mgps/activity/EndGameReportActivity$a;

    iget-object v1, p0, Lcom/join/mgps/activity/x0;->c:Lcom/join/mgps/dto/EndGameReportTypeBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/EndGameReportActivity$a;->r(Lcom/join/mgps/activity/EndGameReportActivity$a;Lcom/join/mgps/dto/EndGameReportTypeBean;Landroid/view/View;)V

    return-void
.end method
