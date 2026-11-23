.class public final synthetic Lcom/join/mgps/adapter/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/j8;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/adapter/j8;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j8;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/adapter/j8;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/k8;->r(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method
