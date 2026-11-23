.class public final synthetic Lcom/join/mgps/adapter/p7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/q7;

.field public final synthetic c:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

.field public final synthetic d:Lcom/join/mgps/base/b;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/q7;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Lcom/join/mgps/base/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/p7;->b:Lcom/join/mgps/adapter/q7;

    iput-object p2, p0, Lcom/join/mgps/adapter/p7;->c:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    iput-object p3, p0, Lcom/join/mgps/adapter/p7;->d:Lcom/join/mgps/base/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p7;->b:Lcom/join/mgps/adapter/q7;

    iget-object v1, p0, Lcom/join/mgps/adapter/p7;->c:Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/p7;->d:Lcom/join/mgps/base/b;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/adapter/q7;->r(Lcom/join/mgps/adapter/q7;Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;Lcom/join/mgps/base/b;Landroid/view/View;)V

    return-void
.end method
