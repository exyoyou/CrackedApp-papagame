.class public final synthetic Lcom/join/mgps/adapter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;

.field public final synthetic c:Lcom/join/mgps/adapter/j;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object p2, p0, Lcom/join/mgps/adapter/i;->c:Lcom/join/mgps/adapter/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v1, p0, Lcom/join/mgps/adapter/i;->c:Lcom/join/mgps/adapter/j;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/j;->k(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/j;Landroid/view/View;)V

    return-void
.end method
