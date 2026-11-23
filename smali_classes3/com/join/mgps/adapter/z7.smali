.class public final synthetic Lcom/join/mgps/adapter/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/a8;

.field public final synthetic c:Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

.field public final synthetic d:Lcom/join/mgps/base/b;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/a8;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/z7;->b:Lcom/join/mgps/adapter/a8;

    iput-object p2, p0, Lcom/join/mgps/adapter/z7;->c:Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    iput-object p3, p0, Lcom/join/mgps/adapter/z7;->d:Lcom/join/mgps/base/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z7;->b:Lcom/join/mgps/adapter/a8;

    iget-object v1, p0, Lcom/join/mgps/adapter/z7;->c:Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    iget-object v2, p0, Lcom/join/mgps/adapter/z7;->d:Lcom/join/mgps/base/b;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/adapter/a8;->r(Lcom/join/mgps/adapter/a8;Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;Lcom/join/mgps/base/b;Landroid/view/View;)V

    return-void
.end method
