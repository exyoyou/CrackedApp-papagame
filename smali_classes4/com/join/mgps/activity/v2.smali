.class public final synthetic Lcom/join/mgps/activity/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/b3;

.field public final synthetic c:Lcom/join/mgps/dto/GamedetialMoreBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/b3;Lcom/join/mgps/dto/GamedetialMoreBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/v2;->b:Lcom/join/mgps/activity/b3;

    iput-object p2, p0, Lcom/join/mgps/activity/v2;->c:Lcom/join/mgps/dto/GamedetialMoreBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->b:Lcom/join/mgps/activity/b3;

    iget-object v1, p0, Lcom/join/mgps/activity/v2;->c:Lcom/join/mgps/dto/GamedetialMoreBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/b3;->O(Lcom/join/mgps/activity/b3;Lcom/join/mgps/dto/GamedetialMoreBean;Landroid/view/View;)V

    return-void
.end method
