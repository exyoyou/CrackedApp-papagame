.class public final synthetic Lh6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lh6/d;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HandleCfg;


# direct methods
.method public synthetic constructor <init>(Lh6/d;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/c;->b:Lh6/d;

    iput-object p2, p0, Lh6/c;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh6/c;->b:Lh6/d;

    iget-object v1, p0, Lh6/c;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    invoke-static {v0, v1, p1}, Lh6/d;->a(Lh6/d;Lcom/join/mgps/dto/hmcloud/HandleCfg;Landroid/view/View;)V

    return-void
.end method
