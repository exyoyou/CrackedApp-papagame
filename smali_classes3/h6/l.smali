.class public final synthetic Lh6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lh6/n;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HandleCfg;


# direct methods
.method public synthetic constructor <init>(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/l;->b:Lh6/n;

    iput-object p2, p0, Lh6/l;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh6/l;->b:Lh6/n;

    iget-object v1, p0, Lh6/l;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    invoke-static {v0, v1, p1}, Lh6/n;->c(Lh6/n;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V

    return-void
.end method
