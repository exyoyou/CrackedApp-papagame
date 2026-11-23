.class public final synthetic Lcom/join/mgps/fragment/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/v5$d;

.field public final synthetic c:Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

.field public final synthetic d:Lcom/join/mgps/fragment/v5$e;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/x5;->b:Lcom/join/mgps/fragment/v5$d;

    iput-object p2, p0, Lcom/join/mgps/fragment/x5;->c:Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    iput-object p3, p0, Lcom/join/mgps/fragment/x5;->d:Lcom/join/mgps/fragment/v5$e;

    iput p4, p0, Lcom/join/mgps/fragment/x5;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x5;->b:Lcom/join/mgps/fragment/v5$d;

    iget-object v1, p0, Lcom/join/mgps/fragment/x5;->c:Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    iget-object v2, p0, Lcom/join/mgps/fragment/x5;->d:Lcom/join/mgps/fragment/v5$e;

    iget v3, p0, Lcom/join/mgps/fragment/x5;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/fragment/v5$d;->c(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;ILandroid/view/View;)V

    return-void
.end method
